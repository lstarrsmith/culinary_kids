class ImagesController < ApplicationController

  def index
    @admin = Admin.find_by(id: params['admin_id'])
    render(:index)
  end

  def new
    @image = Image.new
    @admin = Admin.find_by(id: params["admin_id"])
    render(:new)
  end


	def create
      @image = Image.new(image_params)
      @image.update(section_id: params["section_id"])
      @image.save
      @admin = Admin.find_by(id: params['admin_id'])
      render(:index)
     
  end

  def edit
      @image = Image.find_by(id: params['id'])
      @admin = Admin.find_by(id: params["admin_id"])
      render(:edit)
  end

  def update
      @image = Image.find_by(id: params['id'])
      @image.update(image_params)
      @image.update(section_id: params["section_id"])
      @image.save
      @images = Image.all
      @admin = Admin.find_by(id: params['admin_id'])
      render(:index)
  end
  
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    @admin = Admin.find_by(id: params['admin_id'])
    render(:index)
  end

  def image_params
  	params.require(:image).permit(:photo, :section_id, :word_overlay)
  end

end