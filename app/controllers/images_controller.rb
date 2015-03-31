class ImagesController < ApplicationController

  def index
    @images = Image.all
    render(:index)
  end

  def new
    @image = Image.new
    render(:new)
  end


	def create
	    @image = Image.new(image_params)
      @image.save
      render(:index)
     
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to(photos_url)
  end

  def image_params
  	params.require(:image).permit(:photo)
  end

end