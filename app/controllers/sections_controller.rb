class SectionsController < ApplicationController

	def index
		@sections = Section.all
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
		@section.update(name: params['name'], description: params['description'])
		@admin = Admin.find_by(id: params["admin_id"])
      	redirect_to "/admin/#{params["admin_id"]}"
    end

	



	

end