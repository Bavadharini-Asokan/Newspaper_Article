class Article < ApplicationRecord
#   validates_presence_of  :description, {message: 'escription is required'}
# validates_presence_of  :title, length: { in: 20..150 }, :message => 'Title is required'
  validates :description, presence: {message: "Description is required"}
 validates :title, length: { in: 20..150 }, presence: {message: "Title is required"}
end
