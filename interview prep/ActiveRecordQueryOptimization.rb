# Problem: Optimize this N+1 query
class User < ApplicationRecord
  has_many :posts
  has_many :comments
end

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
end

# Bad code - causes N+1 queries
users = User.all
users.each do |user|
  puts "#{user.name} has #{user.posts.count} posts"
  user.posts.each do |post|
    puts "Post: #{post.title} has #{post.comments.count} comments"
  end
end

# Your task: Optimize this code

users = User.includes(posts: :comments)

users.each do |user|
  puts "#{user.name} has #{user.posts.size} posts"
  user.posts.each do |post|
    puts "Post: #{post.title} has #{post.comments.size} comments"
  end 
end  