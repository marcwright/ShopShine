# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.destroy_all
c = Category.create(name:"root")
c1 = Category.create(name:"Womens", code:"women", parent:c)
c2 = Category.create(name:"Women's Sweaters", code:"sweaters", parent:c1)
Category.create(name:"Cardigan Sweaters", code:"cardigan-sweaters", parent:c2)
Category.create(name:"Cashmere Sweaters", code:"cashmere-sweaters", parent:c2)

c2 = Category.create(name:"Women's Pants", code:"womens-pants", parent:c1)
Category.create(name:"Casual Pants", code:"casual-pants", parent:c2)
Category.create(name:"Dress Pants", code:"dress-pants", parent:c2)


c1 = Category.create(name:"Mens", code:"men", parent:c)
c2 = Category.create(name:"Men's jeans", code:"mens-jeans", parent:c1)
Category.create(name:"Men's slim jeans", code:"mens-slim-jeans", parent:c2)
Category.create(name:"Men's straight leg jeans", code:"mens-straight-leg-jeans", parent:c2)