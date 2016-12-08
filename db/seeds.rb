# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'random_data'

#Create Posts
# 50.times do
#   Post.create!(
#     title: RandomData.random_sentence,
#     body: RandomData.random_paragraph
#   )
# end
#
# posts = Post.all

#Create Comments
# 100.times do
#   Comment.create!(
#     post: posts.sample,
#     body: RandomData.random_paragraph
#   )
# end

# puts "#{Post.count} posts created"
# puts "#{Comment.count} comments created"
# puts "Seed finished"


# ASSIGNMENT 17

Post.find_or_create_by(title: "This post is very unique.") do |post|
  post.body = "This is the body of the unique post."
end

p = Post.find_by(title: "This post is very unique.")

Comment.find_or_create_by(post: p) do |comment|
  comment.body = "This comment is also unique."
end

puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

puts "Seed finished"
