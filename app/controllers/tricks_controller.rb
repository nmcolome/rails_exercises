class TricksController < ApplicationController
  def index
    @dog = Dog.find(params[:dog_id])
    @tricks = @dog.tricks
  end

  def new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @dog.tricks.create!(title: params[:title])

    redirect_to(action: :index)
  end
end