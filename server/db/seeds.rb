User.delete_all
Post.delete_all
Comment.delete_all

user = User.create!(
first_name: 'User',
last_name: 'Example',
)

post = Post.create!(
title: Faker::Lorem.sentence,
body: Faker::Lorem.paragraph,
user_id: user.id,
)

3.times do
  Comment.create!(
  body: Faker::Lorem.paragraph,
  user_id: user.id,
  post_id: post.id,
  )
end
