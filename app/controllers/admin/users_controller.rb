class Admin::UsersController < Admin::ApplicationController
  def index
    @users = User.all
  end

  def destroy
    User.destroy(params[:id])
    redirect_to admin_users_path
  end
end
