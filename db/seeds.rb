u = User.create!(email: 'sample@sample.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
u2 = User.create!(email: 'sample2@sample.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')

post = Post.new do |p|
  p.title = 'My Great title'
  p.body = 'My content'
  p.user_id = u.id
  p.priority = 0
end
post.save!

post_two = Post.new
post_two.title = 'My second post'
post_two.body = 'My second content'
post_two.user_id = u.id
post_two.priority = 1
post_two.save!

100.times do |post|
  Post.create!(
    title: "Some Post",
    body: "Some content",
    priority: rand(1..100),
    user_id: (post % 2 == 0 ? u.id : u2.id)
  )
end

Setting.create!(user_id: u.id, layout: "Standard")
Setting.create!(user_id: u2.id, layout: "Admin")

Topic.create!(title: "Business")
