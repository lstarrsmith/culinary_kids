class SectionsController < ApplicationController

	def show 
		@section = Section.find_by(id: params["id"])

	end

	def edit
		@image = Image.find_by(section_id: params['id'])
		@section = Section.find_by(id: params["id"])
		@admin = Admin.find_by(id: params["admin_id"])
		# @image = Image.where(section: params['id'])
	end

	def update
		
		@section = Section.find(params['id'])
		@section.update(section_params)
		
	
     	
	     #    if params[:photos]
	     #      
	     #        	@section.images.create(photo: photo)
	     #    	end
	      
	     #  	end
      # 	end
      	redirect_to "/admin/#{params["admin_id"]}"
    end

	



	def section_params
    params.require(:section).permit(:description,
                                    :name,
                                    :images
                                   )
 	 end

end