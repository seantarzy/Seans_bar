class UsersController < ApplicationController

    # before_action :find_user, only: [:show, :edit, :update, :destroy]
    # skip_before_action :authorized, only: [:new, :create]

  def index
    @users = User.all
  end

  def show
    #@user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  # def create
  #       user = User.create(user_params)
  #   if user.valid?
  #      session[:user_id] = user.id
  #   redirect_to user_path(user)
  #   else
  #     flash[:messages] = user.errors.full_messages
  #     redirect_to new_user_path
  #   end    
  # end

  def edit
    #@user = User.find(params[:id])
  end

  def update
    #@user = User.find(params[:id])
    if @user.update(user_params)
    redirect_to user_path(@user)
    else
      flash[:messages] = @user.errors.full_messages
      redirect_to edit_user_path
    end
  end

  def destroy
    #@user = User.find(params[:id])
    @user.delete
    redirect_to users_path
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end



end
