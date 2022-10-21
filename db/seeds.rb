require 'faker'

Todo.destroy_all
User.destroy_all

puts "🌱 Seeding spices..."

# Seed your database here
User.create(
    name: "Kyrian",
    role: "Owner",
    email: "kyrian@owner.com",
    password: "Hello"
)
User.create(
    name: "Marty McFly",
    role: "Administrator",
    email: "marty@mcfly.com",
    password: "Hello_World!"
)
5.times do
    User.create(
        name: Faker::Name.unique.name,
        role: Faker::Job.position,
        email: Faker::Internet.email,
        password: "Yoyoyo"
    )
end

50.times do
    Todo.create(
        task: Faker::Hobby.activity,
        due_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
        user_id: rand(8),
        status: "Assigned",
        completed: false,
        assigned_by: "Marty McFly"
    )
end

puts "✅ Done seeding!"
