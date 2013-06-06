class CreatePostTags < ActiveRecord::Migration
  def change
    create_table :post_tags do |p|
      p.integer :tag_id
      p.integer :post_id
    end
  end
end
