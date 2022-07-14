class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
    # @userの投稿した情報(post_images)を持ってきている
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path(@post_image.id)
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
