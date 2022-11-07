class DinopostsController < ApplicationController
  def index
    @dinoposts = Dinopost.all
  end
end
