# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


unless Product.any?
p1 = Producer.find_by(name: 'Moulinex')
c2 = Category.find_by(name: 'Миксеры')

Product.create!(name: 'Миксер Moulinex Quick Mix HM3108B1',
                price: 2490,
                description: 'Ручной миксер Moulinex QuickMix HM3108B1 пригодится он и в приготовлении молочных коктейлей и муссов.',
                quantity: 13,
                category_id: c2.id,
                producer_id: p1.id)
end
