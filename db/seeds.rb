# Seed data to create 5 posts with 5 tags each

5.times do
  post = Post.create({ author: Faker::Name.name,
                        title: Faker::Lorem.sentence((1..5).to_a.sample).chop,
                         body: Faker::Lorem.paragraph((5..9).to_a.sample)
  })
  5.times do
    tag = Tag.create({ description: Faker::Lorem.word })
    tag.posts << post
  end
end

