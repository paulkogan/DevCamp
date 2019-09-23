# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |i|
    Blog.create!(
        title: "Blog Post# #{i}",
        body: "Lorem ipsum dolor sit amet, consectetur -- #{23456+(i*10456)} -- adipiscing elit, sed do eiusmod tempor incididunt",
        score: 20+(i*5)
    )
end

5.times do |i|
    Skill.create!(
        title: "Skill # #{i}",
        percent: 20+(i*5)
    )
end


6.times do |i|
    Portfolio.create!(
        title: "Portfolio # #{i}",
        body: "Lorem ipsum dolor sit amet, #{i*144}consectetur adipiscing elit, sed do eiusmod tempor incididunt ",
        main_img: "http://via.placeholder.com/600x400",
        thumb_img: "http://via.placeholder.com/200x150"
    )
end

puts "SEED DATA CREATED"



