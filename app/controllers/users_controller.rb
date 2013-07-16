class UsersController < ApplicationController
  load_and_authorize_resource

  def index
    @users = User.not_admin_users.order('name ASC')
  end


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to @user
  end

  def create
    @user = User.new(params[:user])
    @user.role = 'dj'
    @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end
