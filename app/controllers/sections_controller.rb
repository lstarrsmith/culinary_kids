class SectionsController < ApplicationController

	def show 
		@section = Section.find_by(id: params["id"])

	end

	def edit

		@section = Section.find_by(id: params["id"])
		@admin = Admin.find_by(id: params["admin_id"])
		# @image = Image.where(section: params['id'])
	end

	def update
		
		@section = Section.find(params['id'])
		binding.pry
		

     	if @section.update_attributes(section_params)
	        if params[:photos]
	          # The magic is here ;)
	          	params[:photos].each do |photo|
	            	@section.images.create(photo: photo)
	        	end
	      
	      	end
      	end
      	redirect_to "/admin/#{params['admin_id']}"
    end

	



	def section_params
    params.require(:section).permit(:description,
                                    :name,
                                    :images
                                   )
  end

end