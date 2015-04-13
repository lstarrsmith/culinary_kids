class TestimonialsController < ApplicationController

	before_action :require_login

	def index
		@testimonials = Testimonial.order('id')
		@admin = Admin.find_by(id: params["admin_id"])

	end

	def edit
		@testimonial = Testimonial.find_by(id: params[:id])
		@admin = Admin.find_by(id: params["admin_id"])
	end

	def new
		@testimonial = Testimonial.new
		@admin = Admin.find_by(id: params["admin_id"])
    	render(:new)
 	 end

 	 def create
 	 	@testimonial = Testimonial.create(testimonial_params)
 	 	@admin = Admin.find_by(id: params["admin_id"])
 	 	@testimonial.save
 	 	redirect_to "/admin/#{params['admin_id']}"
 	 end

	def update
		@testimonial = Testimonial.find_by(id: params["id"])
		@admin = Admin.find_by(id: params["admin_id"])
		@testimonial.update({name: params["name"], description: params["description"]})
		redirect_to "/admin/#{params["admin_id"]}"
	end

	def destroy
		@testimonial = Testimonial.find_by(id: params['id'])
		@admin = Admin.find_by(id: params["admin_id"])
		@testimonial.destroy
		redirect_to "/admin/#{params["admin_id"]}"
	end

	def testimonial_params
		params.require(:testimonial).permit(:name, :description)
	end

	private

	def require_login
		unless session['admin_id'] == params['admin_id'].to_i
			@login_error = true
			render 'admin/index'
		end
	end	

end