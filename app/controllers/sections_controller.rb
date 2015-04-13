class SectionsController < ApplicationController
	
	before_action :require_login

	def index
		@sections = Section.order('id')
		@admin = Admin.find_by(id: params["admin_id"])
	end

	def show 
		@section = Section.find_by(id: params["id"])
		@admin = Admin.find_by(id: params["admin_id"])

	end

	def edit
		@image = Image.find_by(section_id: params['id'])
		@section = Section.find_by(id: params["id"])
		@admin = Admin.find_by(id: params["admin_id"])
		# @image = Image.where(section: params['id'])
	end

	def update
		@section = Section.find(params['id'])
		@section.update(description: params['description'])
		@admin = Admin.find_by(id: params["admin_id"])
      	redirect_to "/admin/#{params["admin_id"]}"
    end

    private

	def require_login
		unless session['admin_id'] == params['admin_id'].to_i
			@login_error = true
			render 'admin/index'
		end
	end	

end