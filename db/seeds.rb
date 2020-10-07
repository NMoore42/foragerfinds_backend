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

steve = User.create(first_name: "Steve", last_name: "Savannah", birthday: Date.new(1988, 10, 30), username: "steveS", password: "steve", email: "steves@hotmail.com", bio: "I am a fan of truffels")

dave = User.create(first_name: "Dave", last_name: "Neitkawizc", birthday: Date.new(1990, 5, 8), username: "daveN", password: "dave", email: "mrgrandrapids@hotmail.com", bio: "I am interested in all things.")

paul = User.create(first_name: "Paul", last_name: "Vilker", birthday: Date.new(1990, 3, 15), username: "paulV", password: "paul", email: "pvilker@hotmail.com", bio: "Looking forward to all of the foraging I'll be doing!")

sarah = User.create(first_name: "Sarah", last_name: "Harlow", birthday: Date.new(1991, 7, 2), username: "sarahH", password: "sarah", email: "sarah@hotmail.com", bio: "Love being in the woods!")

mitch = User.create(first_name: "Mitch", last_name: "Faasen", birthday: Date.new(1985, 7, 30), username: "mitchF", password: "mitch", email: "mitch@hotmail.com", bio: "I could get into this.")

frank = User.create(first_name: "Frank", last_name: "Dye", birthday: Date.new(1985, 4, 1), username: "frankD", password: "frank", email: "frank@hotmail.com", bio: "Looking forward to taking my boys foraging.")

christopher = User.create(first_name: "Christopher", last_name: "Maisano", birthday: Date.new(1984, 11, 28), username: "christopherM", password: "christopher", email: "christopher@hotmail.com", bio: "Can I ask about shrooms here?")

grace = User.create(first_name: "Grace", last_name: "Geitzan", birthday: Date.new(1989, 5, 11), username: "graceG", password: "grace", email: "grace@hotmail.com", bio: "Can't wait to post my finds!")



# Relationships
Relationship.create(follower: jodi, forager: nick, blocked: false)
Relationship.create(follower: steve, forager: nick, blocked: false)
Relationship.create(follower: dave, forager: nick, blocked: false)
Relationship.create(follower: paul, forager: nick, blocked: false)
Relationship.create(follower: sarah, forager: nick, blocked: false)
Relationship.create(follower: mitch, forager: nick, blocked: false)
Relationship.create(follower: frank, forager: nick, blocked: false)
Relationship.create(follower: christopher, forager: nick, blocked: false)
Relationship.create(follower: grace, forager: nick, blocked: false)

Relationship.create(follower: steve, forager: jodi, blocked: false)
Relationship.create(follower: paul, forager: jodi, blocked: false)
Relationship.create(follower: christopher, forager: jodi, blocked: false)
Relationship.create(follower: mitch, forager: jodi, blocked: false)

Relationship.create(follower: jodi, forager: christopher, blocked: false)
Relationship.create(follower: mitch, forager: christopher, blocked: false)
Relationship.create(follower: frank, forager: christopher, blocked: false)
Relationship.create(follower: grace, forager: christopher, blocked: false)

Relationship.create(follower: dave, forager: mitch, blocked: false)
Relationship.create(follower: steve, forager: mitch, blocked: false)
Relationship.create(follower: frank, forager: mitch, blocked: false)
Relationship.create(follower: grace, forager: mitch, blocked: false)

Relationship.create(follower: grace, forager: steve, blocked: false)




# Posts
nick_post_one = Post.create(user: nick, title: "My First Forager Post", description: "This is my first forager post. It is only a test")

nick_post_two = Post.create(user: nick, title: "Chantrelles Abound!", description: "I found a group of chantrelles today")

nick_post_three = Post.create(user: nick, title: "Morels Season Dreaming", description: "Can't wait until the springtime - Already dreaming of morel hunting!")

jodi_post_one = Post.create(user: jodi, title: "Jodi's Post", description: "My fiance made me post this...")

mitch_post_one = Post.create(user: mitch, title: "Hey All", description: "Just getting into this, wanted to make my first post and say hi!")

mitch_post_two = Post.create(user: mitch, title: "Puffball?", description: "Found a big white ball type thing.  Is this a giant puffball?")

# Comments
Comment.create(post: jodi_post_one, user: nick, comment_content: "Well, I am not sure MADE is correct.")
Comment.create(post: nick_post_one, user: jodi, comment_content: "Nice...")
Comment.create(post: nick_post_one, user: mitch, comment_content: "Thanks for putting this together!")
Comment.create(post: nick_post_one, user: steve, comment_content: "Glad to be on!")
Comment.create(post: nick_post_one, user: grace, comment_content: "Looking forward to this!")
Comment.create(post: nick_post_two, user: christopher, comment_content: "What is a chantrelle?")
Comment.create(post: nick_post_two, user: frank, comment_content: "What type of chantrelle?")
Comment.create(post: nick_post_three, user: dave, comment_content: "I can't wait!")
Comment.create(post: nick_post_three, user: paul, comment_content: "We should plan a morel hunting trip up north")
Comment.create(post: mitch_post_one, user: sarah, comment_content: "Hi Mitch!")
Comment.create(post: mitch_post_one, user: mitch, comment_content: "Hi Sarah!")
Comment.create(post: mitch_post_one, user: grace, comment_content: "Hello to both of you :)")
Comment.create(post: mitch_post_two, user: nick, comment_content: "Yes - will be eaiser to confirm once this app let's you upload pictures, but it sounds like a puffball!")
Comment.create(post: mitch_post_two, user: mitch, comment_content: "Sweet, thanks. Can I eat it?")
Comment.create(post: mitch_post_two, user: nick, comment_content: "You can eat puffballs, but again - I wouldn't feel comfortable eating it without photo confirmation.  I'll be working to get that up and running soon, so just wait until then.")
Comment.create(post: mitch_post_two, user: mitch, comment_content: "Sounds good, will do - hurry up with it!")
