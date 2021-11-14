class CharactersController < ApplicationController
  def index
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
  end
end
