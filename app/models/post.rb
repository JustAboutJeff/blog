class Post < ActiveRecord::Base
  validates :body, presence: true
  validates :title, presence: true

  has_many :post_tags
  has_many :tags, through: :post_tags

  def tags=(tagnames)
    self.tags.clear
    tagnames.split(',').each do |t|
      tag = Tag.find_or_create_by_description(t.strip)
      self.tags << tag
    end
  end
end
