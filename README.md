# ActiveRecord

## Basic Queries

```ruby
Post.last
Post.first
Post.last 5
Post.first 5

# Returns a single object
```

## Where queries

```ruby
Post.where(priority: nil)
Post.where.not(priority: nil)
Post.where(priority: 90..100)
Post.where(priority: 90)

# Returns a collection
```

## Dynamic find_by Queries

```ruby
Post.find_by_priority(100)
Post.find_by(priority: 100)
Post.find_by(title: "Some Post", priority: 100) # Returns object
Post.find_by(title: "Some Post2", priority: 100) # Returns nil
```

## Eager loading

```ruby
users = User.includes(:setting)
users.each do |user|
  user.setting.layout
end
```

## Joins with Conditionals

```ruby
User.joins(:posts).where('posts.priority > ?', 50)
```

## Find or Create

```ruby
Topic.find_or_create_by(title: 'Business')

categories = %w(Sports Technology Business Weather)
categories.each do |category|
  Topic.find_or_create_by(title: category)
end
```
