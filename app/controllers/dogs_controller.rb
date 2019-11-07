class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
  end

  def create
    Dog.create!(name: params[:name], breed: params[:breed], age: params[:age])

    redirect_to :dogs
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update!(name: params[:name], breed: params[:breed], age: params[:age])

    redirect_to :dogs
  end

  def destroy
    @dog = Dog.find(params[:id]).delete

    redirect_to :dogs
  end
end 