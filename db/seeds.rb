require 'random_data'

5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
  )
end
users = User.all

15.times do
  Topic.create!(
    name: RandomData.random_sentence,
    description: RandomData.random_paragraph
    )
end
topics = Topic.all

50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end

posts = Post.all

20.times do
  SponsoredPost.create!(
    topic: topics.sample,
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    price: 99
    )
end
sponsored_posts = SponsoredPost.all

100.times do
  Comment.create!(

  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

50.times do
  Question.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph,
  resolved: false
  )
end

user = User.first
user.update_attributes!(
  email: 'mal_works@yahoo.com',
  password: 'helloworld'
  )

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{SponsoredPost.count} sponsored posts created."
puts "#{Post.count}"
Post.find_or_create_by(title: "This is a unique post.", body: "This is the body of the unique post.")
puts "#{Post.count}"

10.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph
  )
end

advertisements = Advertisement.all
