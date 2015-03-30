class TestimonialsController < ApplicationController

	def index
		testimonials = Testimonial.all.to_a
		render(:index, {locals: {testimonials: testimonials}})

	end

	def edit
		@testimonial = Testimonial.find_by(id: params[:id])
		@admin = Admin.find_by(id: params["admin_id"])
	end

	def update
		binding.pry
		@testimonial = Testimonial.find_by(id: params["id"])
		@testimonial.update({name: params["name"], description: params["description"]})
		redirect_to "/admin/#{params["admin_id"]}"
	end

	def testimonial_params
		params.require(:testimonial).permit(:name)
	end

end