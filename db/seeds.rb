# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# seeds.rb


require 'faker'

# Clear existing data
User.destroy_all
Bug.destroy_all
Comment.destroy_all
Reply.destroy_all

# Seed Users
users = []
10.times do
  users << User.create!(
    admin: Faker::Boolean.boolean,
    unconfirmed_email: Faker::Internet.email,
    email: Faker::Internet.email,
    password: 'passWord1234',  # Use a common password for seeding
    password_confirmation: 'passWord1234',
    reset_password_token: Faker::Internet.uuid,
    reset_password_sent_at: Faker::Time.backward(days: 365),
    remember_created_at: Faker::Time.backward(days: 365),
    confirmation_token: Faker::Internet.uuid,
    confirmed_at: Faker::Time.backward(days: 365),
    confirmation_sent_at: Faker::Time.backward(days: 365),
    created_at: Faker::Time.backward(days: 365),
    updated_at: Faker::Time.backward(days: 365)
  )
end

# Seed Bugs
bugs = []
20.times do
  bugs << Bug.create!(
    project: Faker::App.name,
    path: Faker::File.file_name(dir: 'projects'),
    priority: rand(0..5),
    description: Faker::Lorem.sentence,
    finder: Faker::Name.name,
    status: rand(0..3),
    fixer: ['Unassigned', Faker::Name.name].sample,
    created_at: Faker::Time.backward(days: 365),
    updated_at: Faker::Time.backward(days: 365),
    user_id: users.sample.id
  )
end

# Seed Comments
comments = []
30.times do
  comments << Comment.create!(
    body: Faker::Lorem.paragraph,
    user_id: users.sample.id,
    bug_id: bugs.sample.id,
    created_at: Faker::Time.backward(days: 365),
    updated_at: Faker::Time.backward(days: 365)
  )
end

# Seed Replies
40.times do
  Reply.create!(
    body: Faker::Lorem.paragraph,
    comment_id: comments.sample.id,
    user_id: users.sample.id,
    bug_id: bugs.sample.id,
    created_at: Faker::Time.backward(days: 365),
    updated_at: Faker::Time.backward(days: 365)
  )
end

puts "Database successfully seeded!"
