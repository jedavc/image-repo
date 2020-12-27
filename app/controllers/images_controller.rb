class ImagesController < ApplicationController
    before_action :logged_in_user
  
    def new
      @image  = current_user.images.new
    end
  
    def index
      @images = current_user.images.all
    end
  
    def create
      @image = current_user.images.build(image_params)
      if @image.save
        flash[:success] = "image has been created!"
        redirect_to @image
      else
        render 'new'
      end
    end
  
    def edit
      @image = current_user.images.find(params[:id])
    end
  
    def update
      @image = current_user.images.find(params[:id])
      if @image.update_attributes(image_params)
        flash[:success] = "image updated"
        redirect_to @image
      else
        render 'edit'
      end
    end
  
    def destroy
      @image = current_user.images.find(params[:id])
      if @image 
        @image.destroy
        flash[:success] = "image has been deleted"
      else
        flash[:alert] = "Error"
      end
      redirect_to root_path
    end
  
    def show
      @image = Image.find(params[:id])
    end
  
    private
  
    def image_params
      params.require(:image).permit(:name, :description, :picture)
    end
  
end