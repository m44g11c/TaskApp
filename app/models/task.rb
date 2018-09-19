class Task < ApplicationRecord
  validates :title, length: { minimum: 5 }
  validates :description, length: { maximum: 500 }
  belongs_to :project
  has_many :links
  has_many :users, :through => :links
end
