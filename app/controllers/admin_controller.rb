class AdminController < ApplicationController
		
		def index
			render(:index)
		end	



		def create 

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
			@sections = Section.order('id')
			@testimonials = Testimonial.order('id')
			
			
		end

		def update
			
		end
		



		
	
end