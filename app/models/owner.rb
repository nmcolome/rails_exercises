class Owner < ApplicationRecord
  has_many :ownerships
  has_many :dogs, through: :ownerships

  def self.all_dog_names
    left_outer_joins(:dogs).pluck("dogs.name")
  end

  def self.unique_dog_names
    all_dog_names.uniq!.sort.reverse
  end
end
