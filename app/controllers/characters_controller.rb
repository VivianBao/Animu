class CharactersController < ApplicationController
  def index
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
    @appearances = Appearance.all.where(character: @character)
  end
end
