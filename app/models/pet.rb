class Pet < ApplicationRecord

  # validations
  validates_presence_of :name, :available_from, :age, :species, :breed

end
