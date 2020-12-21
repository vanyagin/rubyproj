# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

unless Category.any?
  c1=Category.create!(name: 'Миксеры')
  c2=Category.create!(name: 'Тостеры')
  c3=Category.create!(name: 'Мясорубки')
  c4=Category.create!(name: 'Микроволновые печи')
  c5=Category.create!(name: 'Кофеварки')
  c6=Category.create!(name: 'Соковыжималки')
end

unless Producer.any?
  p1=Producer.create!(name: 'Moulinex', country: 'Франция')
  p2=Producer.create!(name: 'Philips', country: 'Нидерланды')
  p3=Producer.create!(name: 'Redmond', country: 'Россия')
  p4=Producer.create!(name: 'Samsung', country: 'Корея')
  p5=Producer.create!(name: 'Tefal', country: 'Франция')
end

unless Product.any?
  Product.create!(name: 'Миксер Moulinex Quick Mix HM3108B1',
                  price: 2490,
                  description: 'Ручной миксер Moulinex QuickMix HM3108B1 пригодится он и в приготовлении молочных коктейлей и муссов.',
                  quantity: 13,
                  category_id: c1.id,
                  producer_id: p1.id)
  Product.create!(name: 'Миксер Philips HR3740/00',
                  price: 3690,
                  description: '-',
                  quantity: 15,
                  category_id: c1.id,
                  producer_id: p2.id)
  Product.create!(name: 'Тостер Philips HD2582/90',
                  price: 2990,
                  description: '-',
                  quantity: 10,
                  category_id: c2.id,
                  producer_id: p2.id)
  Product.create!(name: 'Тостер Tefal TT1A1830',
                  price: 3290,
                  description: '-',
                  quantity: 11,
                  category_id: c2.id,
                  producer_id: p5.id)
  Product.create!(name: 'Электромясорубка Redmond RMG-1236',
                  price: 4990,
                  description: '-',
                  quantity: 7,
                  category_id: c3.id,
                  producer_id: p3.id)
  Product.create!(name: 'Электромясорубка Moulinex HV1 ME106832',
                  price: 6990,
                  description: '-',
                  quantity: 9,
                  category_id: c3.id,
                  producer_id: p1.id)
  Product.create!(name: 'Микроволновая печь соло Samsung ME81KRW-2',
                  price: 7990,
                  description: '-',
                  quantity: 5,
                  category_id: c4.id,
                  producer_id: p4.id)
  Product.create!(name: 'Кофеварка капельного типа Philips HD7434/20',
                  price: 2990,
                  description: '-',
                  quantity: 9,
                  category_id: c5.id,
                  producer_id: p2.id)
  Product.create!(name: 'Соковыжималка для цитрусовых Moulinex PC120870',
                  price: 1990,
                  description: '-',
                  quantity: 15,
                  category_id: c6.id,
                  producer_id: p1.id)
end



AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?