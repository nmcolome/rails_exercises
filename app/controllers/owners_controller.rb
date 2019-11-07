class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @owner = Owner.create!(name: params[:name])
    @owner.ownerships.create!(dog: @dog, length: params[:length])

    redirect_to owners_path
  end

  def adoption
    @owner = Owner.find(params[:owner_id])
    @dogs = Dog.all
  end

  def adopt
    @owner = Owner.find(params[:owner_id])
    @dog = Dog.find(params[:dog_id])
    @owner.ownerships.create!(dog: @dog, length: 0)

    redirect_to owners_path
  end

  def adopt_from_list
    @owner = Owner.find(params[:owner_id])
    @dogs = params[:dogs].split(", ")
    @dogs.each do |name|
      @owner.ownerships.create!(dog: Dog.find_by(name: name), length: 0)
    end

    redirect_to owners_path
  end
end