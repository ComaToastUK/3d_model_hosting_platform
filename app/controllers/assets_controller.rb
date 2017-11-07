class AssetsController < ApplicationController

  before_filter :authenticate_user!  #authenticate for users before any methods is called

  def index
    @assets = current_user.assets
  end

  def show
    @asset = current_user.assets.find(params[:id])
  end

  def new
    @asset = current_user.assets.new
  end

  def create
    @asset = current_user.assets.new(asset_params)
    if @asset.save
      flash[:success] = "Your files have been saved!"
      redirect_to posts_path
    else
      flash[:alert] = "Your file could not be saved, please check the error messages for details"
      render :new
    end
  end

  def edit
    @asset = current_user.assets.find(params[:id])
  end

  def update
    @asset = current_user.assets.find(params[:id])
  end

  def destroy
    @asset = current_user.assets.find(params[:id])
    @asset.destroy
    flash[:success] = "Your file was deleted"
    redirect_to assets_path
  end

private

  def asset_params
    params.require(:asset).permit(:uploaded_file)
  end

end
