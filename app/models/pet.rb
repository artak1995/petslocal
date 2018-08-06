class Pet < ApplicationRecord

  # validations
  validates_presence_of :name, :available_from, :age, :species
  validates :species, inclusion: { in: %w[cat dog rabbit] }
  validates :breed, inclusion: { in: [nil, 'labrador', 'poodle', 'spaniel', 'terrier'] }

end
