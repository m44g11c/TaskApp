class Project < ApplicationRecord
  validates :name, length: { minimum: 5 }
  has_many :tasks
end
