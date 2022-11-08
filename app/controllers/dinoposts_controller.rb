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

  def edit
    @dinopost = Dinopost.find(params[:id])
  end

  def update
    @dinopost = Dinopost.find(params[:id])

    if @dinopost.update(dinopost_params)
      redirect_to @dinopost
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @dinopost = Dinopost.find(params[:id])
    @dinopost.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def dinopost_params
      params.require(:dinopost).permit(:title, :body, :status)
    end
end
