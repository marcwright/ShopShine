# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CategorySize.destroy_all

Size.destroy_all
# For women's jeans
s1 = Size.create(name:"26", code:"s1182")
s2 = Size.create(name:"27", code:"s1183")
s3 = Size.create(name:"28", code:"s1184")
womensJeans = [s1, s2, s3]
# For men's jeans
s4 = Size.create(name:"S (Waist 28-30)", code:"s120")
s5 = Size.create(name:"M (Waist 32-34)", code:"s127")
s6 = Size.create(name:"L (Waist 36-38)", code:"s134")
mensJeans = [s4, s5, s6]
# For women's sweaters
s7 = Size.create(name:"S (4-6)", code:"s83")
s8 = Size.create(name:"M (8-10)", code:"s85")
s9 = Size.create(name:"L (12-14)", code:"s87")
womensSweaters = [s7, s8, s9]

Category.destroy_all
c = Category.create(name:"root")
c1 = Category.create(name:"Womens", code:"women", parent:c)

c2 = Category.create(name:"Women's Sweaters", code:"sweaters", parent:c1)
c3 = Category.create(name:"Cardigan Sweaters", code:"cardigan-sweaters", parent:c2)
c3.sizes.push(womensSweaters)
c3 = Category.create(name:"Cashmere Sweaters", code:"cashmere-sweaters", parent:c2)
c3.sizes.push(womensSweaters)

c2 = Category.create(name:"Denim", code:"jeans", parent:c1)
c3 = Category.create(name:"Skinny", code:"skinny-jeans", parent:c2)
c3.sizes.push(womensJeans)
c3 = Category.create(name:"Straight", code:"straight-leg-jeans", parent:c2)
c3.sizes.push(womensJeans)

c1 = Category.create(name:"Mens", code:"men", parent:c)
c2 = Category.create(name:"Men's jeans", code:"mens-jeans", parent:c1)
c3 = Category.create(name:"Men's slim jeans", code:"mens-slim-jeans", parent:c2)
c3.sizes.push(mensJeans)
c3 = Category.create(name:"Men's straight leg jeans", code:"mens-straight-leg-jeans", parent:c2)
c3.sizes.push(mensJeans)