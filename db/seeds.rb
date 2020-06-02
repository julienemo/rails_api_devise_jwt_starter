puts 'Creating users...'

n = 1
10.times do
  User.create!(
    username: "created_from_seed#{n}",
    email: "seededuser#{n}@yopmail.com",
    password: "111111"
  )
  n += 1
end

puts "#{User.all.size} users created"
