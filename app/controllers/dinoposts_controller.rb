class DinopostsController < ApplicationController
  def index
    @dinoposts = Dinopost.all
  end

  def show
    @dinopost = Dinopost.find(params[:id])
  end
end
