# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create({username: 'test', password: 'test'})
user2 = User.create({username: 'test2', password: 'test2'})
user3 = User.create({username: 'test3', password: 'test3'})

post = user.posts.create({title: 'My first post', content: 'Hello, world!'})
post1 = user.posts.create({title: 'My first post1', content: 'Hello, world!1'})
post2 = user.posts.create({title: 'My first post2', content: 'Hello, world!2'})

user2.comments << post.comments.create({content: 'Sooooo typical...'})

user.post_votes.create(post_id: post.id)
post = Post.update(post.id, votes: (post.votes + 1))

user2.post_votes.create(post_id: post.id)
post = Post.update(post.id, votes: (post.votes + 1))

user3.post_votes.create(post_id: post1.id)
post = Post.update(post.id, votes: (post.votes + 1))

user.post_votes.create(post_id: post2.id)
post1 = Post.update(post1.id, votes: (post1.votes + 1))
