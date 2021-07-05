# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Enologist.destroy_all

# 10.times do
#     enologist = Enologist.create(name: Faker::Name.name,
#                     age: Faker::Number.within(range: 20..99),
#                     nationality: Faker::Nation.nationality)
#     enologist.save
#     puts "Se han creado estos #{enologist.name}, su edad es: #{enologist.age} y su nacionalidad es: #{enologist.nationality}"
# end


#(1..25).to_a.each do |i|
10.times do |i|
    post = Post.create(title: "Este es el post número #{i}", 
                       content: Faker::Lorem.sentence(word_count: 10))

        (1..15).to_a.sample.times do |j|
        post.comments.create(content: Faker::ChuckNorris.fact)
        
        post.save
    end


    image = Image.create(url: Faker::LoremFlickr.image, 
                        description: Faker::Lorem.paragraphs(number: 1))
    
        (1..20).to_a.sample.times do |j|
        image.comments.create(content: Faker::ChuckNorris.fact)

        image.save
    end
end