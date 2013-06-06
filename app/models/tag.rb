class Tag < ActiveRecord::Base
  validates :description, presence: true
  has_many :posts, through: :post_tags
  has_many :post_tags
end
