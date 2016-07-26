# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post = Post.new
post.title = "파리에서맥주마실분"
post.content = "여성한분구합니다"
post.place = "파리역1번출구 저녁 여섯시요!"
post.date = "7월20일"

post.food = true
post.citytour = true
post.suburbtour = true
post.guidetour = true

post.concert = true
post.sports = true
post.gallery = true
post.museum = true
post.historic = true
post.rooom = true
post.car = true

post.save

reply = Reply.new
reply.content ="술 잘 못마시는데 괜찮나요?"
#reply.post_id = 1
reply.save