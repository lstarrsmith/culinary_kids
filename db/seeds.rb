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

home_page = Section.create({name: "Home Page", description: "We help students learn to cook while tapping into and honing their incredible academic potential!"})
home_page_static = Section.create({name: "Home Page Static", description: ""})

history = Section.create({name: "History", description: "Cooking not only serves as a vehicle for discovering the origin of ingredients, it can also be an incredible tool for teaching United States and World History! Using cooking as their time machine, students visit eras gone by to study everything from Prehistoric civilizations to the American Revolution to World War II. CKA’s story-based approach has students riveted as they cook dishes from the past. History was never so much fun!"})

science = Section.create({name: "Science", description: "Science Workshops illustrate to students the close ties cooking and food have with biology, chemistry, physics, botany, geology and mineralogy. Through in-class, hands on experiments, students are given a new, tangible (and tasty) look into the world of science!"})
math = Section.create({name: "Math", description: "Arithmetic workshops cover a wide range of grade level specific standards. Recipe execution introduces and reviews addition, subtraction, multiplication, division, fractions, measurements, time, money, order of operations and so much more! CKA makes math “a piece of cake!”."})
nutrition = Section.create({name: "Nutrition", description: "Culinary Kids Academy’s goal is to help students understand the importance of vitamins and nutrients as well as the negative effects of a high calorie/fat/sodium diet. Through an emphasis on portion control and moderation with processed foods, students are provided a real look at the impact their diets have on their bodies and enables them to take greater ownership of their food choices. When given an active stake in the cooking process, CKA has found students are much more willing to step outside their culinary comfort zones and try new and different foods once they leave the classroom."})
safety = Section.create({name: "Safety", description: "Part of learning how to cook, is understanding the concept of respect - Respect for the kitchen, it’s tools and the act of cooking. With constant adult supervision, CKA helps students build a level of independence and confidence that comes with learning how to properly cut, utilize heating elements, and maintain a clean and organized work station. Safety is of prime importance to us and it’s our mission to make sure that all of our young Chefs stay safe not only when they are with us, but when they are cooking at home as well!"})
judaic_studies = Section.create({name: "Judaic Studies", description: "In a Jewish Collegiate, Day/Religious School and Camp environment, CKA utilizes its alternative experiential teaching technique to make Judaism more tangible and personal - Taking holidays, rituals and Torah/Midrashim that recall events that may have happened thousands of years ago and making them relevant in modern terms. In essence, while we always look to have students walk away with more knowledge about the customs or holidays themselves, the greater end game is that they acquire Jewish life skills - To learn to cook while gaining a deeper understanding about cultural and religious celebrations not only for the sake of commemoration, but because these events have the power to actively make them better human beings today - to their families, friends and society as a whole!"})
camps = Section.create({name: "Camps", description: "Just because school is out doesn’t mean the teaching stops! CKA is the only camp where children love learning Math, Science and History during the summer! Why? Because it’s woven into a 3-4 hour intensive culinary experience that will have students cooking and baking to their hearts content. Parents should be advised - don’t send your child with a snack because it’s not going to get touched!"})
recipes = Section.create({name: "Recipes", description: "All CKA recipes are available to our students! In them we try to offer both the conventional instructions as well as healthy alternatives to potentially higher fat content ingredients. This doesn’t mean however that you can’t treat yourself once in a while to more decadent fare! Moderation is key! We would much rather you eat one “fat full” cookie than six fat free cookies laden with sugar and chemicals. Cooking your own food is the best way to limit processed foods and achieve a healthy, well balanced diet that focuses on high quality, fresh fruits, vegetables, grains and proteins! So please enjoy the recipes listed within multiple categories and happy cooking!"})
testimonials = Section.create({name: "Testimonials", description: "This section only used here to help manage the images"})


danny = Admin.create({fname: "Danny", lname: "Corsun", email: "dcorsun.culinarykidz@gmail.com", password: "danny"})
logan = Admin.create({fname: "Logan", lname: "Smith", email: "logan29smith@gmail.com", password: "logan"})
jarett = Admin.create({fname: "Jarett", lname: "Sims", email: "j@jarettsims.com", password: "jarett"})

testimonial_1 = Testimonial.create({name: "Laurie Walker", description: "This is the hands down the best program for kids", show: true})
testimonial_2 = Testimonial.create({name: "Felipe Guiterrez", description: "This is the hands down the best program for kids", show: true})
testimonial_3 = Testimonial.create({name: "Sam Spaulding", description: "This is the hands down the best program for kids", show: true})

