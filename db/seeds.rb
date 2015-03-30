# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Admin.delete_all
Testimonial.delete_all
Image.delete_all
Section.delete_all


history = Section.create({name: "History", description: "Test history"})
science = Section.create({name: "Science", description: "Test science"})
math = Section.create({name: "Math", description: "Test math"})
nutrition = Section.create({name: "Nutrition", description: "Test nutrition"})
safety = Section.create({name: "Safety", description: "Test safety"})
judaic_studies = Section.create({name: "Judaic Studies", description: "Test judaic"})
camps = Section.create({name: "Camps", description: "Test camps"})
recipes = Section.create({name: "History", description: "Test history"})


danny = Admin.create({fname: "Danny", lname: "Corsun", email: "danny@gmail.com", password: "danny"})

testimonial_1 = Testimonial.create({name: "Laurie Walker", description: "This is the hands down the best program for kids", show: true})
testimonial_2 = Testimonial.create({name: "Felipe Guiterrez", description: "This is the hands down the best program for kids", show: true})
testimonial_3 = Testimonial.create({name: "Sam Spaulding", description: "This is the hands down the best program for kids", show: true})

