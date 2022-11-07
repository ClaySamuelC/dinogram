class DinopostsController < ApplicationController
  def index
    @dinoposts = Dinopost.all
  end

  def show
    @dinopost = Dinopost.find(params[:id])
  end

  def new
    @dinopost = Dinopost.new
  end

  def create
    @dinopost = Dinopost.new(dinopost_params)

    if @dinopost.save
      redirect_to @dinopost
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def dinopost_params
      params.require(:dinopost).permit(:title, :body)
    end
end
