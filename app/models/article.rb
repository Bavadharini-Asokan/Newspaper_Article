class Article < ApplicationRecord
  has_many :comments
  validates :title, :description, :presence => true
  validates :title, :length => {in: 20..150 }
end
