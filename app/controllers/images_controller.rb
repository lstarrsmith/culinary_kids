class ImagesController < ApplicationController

	def create
    	binding.pry
	    # build a photo and pass it into a block to set other attributes
	    @image = Image.new(params[:image]) do |t|
	      if params[:image][:image_file]
	        t.data      = params[:image][:image_file].read
	        t.filename  = params[:image][:image_file].original_filename
	        t.mime_type = params[:image][:image_file].content_type
	      end
    end
    
    # normal save
    if @image.save
      redirect_to(@image, :notice => 'Photo was successfully created.')
    else
      render :action => "new"
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to(photos_url)
  end

  def image_params
  	params.require(:image).permit(:file)
  end

end