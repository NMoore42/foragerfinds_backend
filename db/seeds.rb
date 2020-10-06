# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clear current DB
User.destroy_all
Relationship.destroy_all
Post.destroy_all
Comment.destroy_all

#### Test DB Seeds ####

# Users
nick = User.create(first_name: "Nick", last_name: "Moore", birthday: Date.new(1987, 2, 5), username: "NMoore42", password: "password", email: "nmoore42@hotmail.com", bio: "Looking to hunt some mushrooms!")

jodi = User.create(first_name: "Jodi", last_name: "Cunningham", birthday: Date.new(1986, 9, 12), username: "JCunni8", password: "computer", email: "jodi8@hotmail.com", bio: "Not sure why I am here...")

# Relationships
relationship_one  = Relationship.create(follower: jodi, forager: nick, blocked: false)

# Posts
post_one = Post.create(user: nick, title: "My First Forager Post", description: "This is my first forager post. It is only a test")
post_two = Post.create(user: jodi, title: "Jodi's Post", description: "My fiance made me post this...")

# Comments
comment_one = Comment.create(post: post_two, user: nick, comment_content: "Well, I am not sure MADE is correct.")
comment_two = Comment.create(post: post_one, user: jodi, comment_content: "Nice...")
