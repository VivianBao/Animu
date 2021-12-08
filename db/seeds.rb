# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts 'Clearing Data...'
# Anime.delete_all
# Character.delete_all
# VoiceActor.delete_all

puts 'Generating New Data...'
animes_url = 'https://api.jikan.moe/v3/top/anime/1'
animes_serialized = URI.open(animes_url).read
animes = JSON.parse(animes_serialized)

animes_list = animes['top']
animes_list.each do |item|
  anime_id = item['mal_id']
  anime_url = "https://api.jikan.moe/v3/anime/#{anime_id}"
  anime_serialized = URI.open(anime_url).read
  anime = JSON.parse(anime_serialized)
  new_anime = Anime.create!(
    title_jp: anime['title_japanese'],
    title_eng: anime['title'],
    description: anime['synopsis'],
    poster_url: anime['image_url'],
    rating: anime['score'],
    rank: anime['rank'],
    episodes: anime['episodes'],
    user_rating: 0
  )

  character_staff_url = "https://api.jikan.moe/v3/anime/#{anime_id}/characters_staff"
  character_staff_serialized = URI.open(character_staff_url).read
  character_staff = JSON.parse(character_staff_serialized)

  characters_list = character_staff['characters']
  characters_list.each do |character|
    if character['role'] == 'Main'
      # character exist
      if Character.find_by(name: character['name'])
        existing_character = Character.find_by(name: character['name'])
        Appearance.create(
          anime_id: new_anime.id,
          character_id: existing_character.id
        )
        Casting.create(
          anime_id: new_anime.id,
          voice_actor_id: existing_character.voice_actors[0].id
        )
      # character does not exist
      else
        new_character = Character.create!(
          name: character['name'],
          image_url: character['image_url']
        )
        Appearance.create(
          anime_id: new_anime.id,
          character_id: new_character.id
        )
        voice_actors = character['voice_actors']
        voice_actors.each do |voice_actor|
          # vc already exist
          if VoiceActor.find_by(name: voice_actor['name'])
            existing_vc = VoiceActor.find_by(name: voice_actor['name'])
            Voicing.create(
              character_id: new_character.id,
              voice_actor_id: existing_vc.id
            )
            Casting.create(
              anime_id: new_anime.id,
              voice_actor_id: existing_vc.id
            )
          # vc does not exist
          else
            if voice_actor['language'] == 'Japanese'
              new_voice_actor = VoiceActor.new(
                name: voice_actor['name'],
                image_url: voice_actor['image_url']
              )
              new_voice_actor.save
              Voicing.create(
                character_id: new_character.id,
                voice_actor_id: new_voice_actor.id
              )
              Casting.create(
                anime_id: new_anime.id,
                voice_actor_id: new_voice_actor.id
              )
            end
          end
        end
      end
    end
  end
end

puts "#{Anime.all.count} animes generated!"
puts "#{Character.all.count} characters generated!"
puts "#{VoiceActor.all.count} voice actors generated!"
