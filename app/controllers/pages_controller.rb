class PagesController < ApplicationController
  def home
    @lists = List.all
    @animes = Anime.all
  end
end
