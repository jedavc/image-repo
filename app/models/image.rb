class Image < ApplicationRecord
  belongs_to :user
  validates :name, :description, presence: true
  has_one_attached :picture
end
