require 'pry'

class Dog < ApplicationRecord
  has_many :tricks

  validates :name, :age, :breed, presence: true
  validates :age, numericality: { greater_than_or_equal_to: 0 }

  def number_of_tricks
    tricks.count
  end

  def self.average_age
    average(:age)
  end

  def self.by_breed(breed)
    where(breed: breed)
  end

  def self.breeds
    pluck(:breed)
  end

  def self.unique_breeds
    pluck(:breed).uniq!
  end

  def self.age_greater_than(age)
    where("age > ?", age)
  end

  def self.sort_by_name
    order(:name)
  end

  def self.sort_by_name_reverse
    order(name: :desc)
  end

  def alphabetical_tricks
    tricks.order(:title)
  end

  def alphabetical_tricks_limit(limit)
    tricks.order(:title).limit(limit)
  end

  def self.owned_more_than_3_years
    binding.pry
  end
end