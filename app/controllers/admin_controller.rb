class AdminController < ApplicationController
		
		def index

			render(:index)
		end	



		def create 
			binding.pry

			new_admin = Admin.create({
				fname: params["fname"], 
				lname: params["lname"], 
				email: params["email"], 
				password: params["password"]
				})
			redirect_to "/"
	
		end

		def show
			@admin = Admin.find_by(id: params[:id])
			@sections = Section.all
			@image = Image.all
			@testimonials = Testimonial.all
			
			
		end

		def update
			binding.pry
		end
		



		
	
end