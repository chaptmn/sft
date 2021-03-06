class UsersController < ApplicationController
  before_action :set_user, only: [:show,:edit,:update]

  def show
    unless params[:id].to_i == current_user.id 
      redirect_to user_path(current_user.id)
    end
  end

  def edit
  end

  def new
   @user = User.new 
  end

  def create
    @user =  User.new(user_params)  
    if @user.save
      log_in @user
      redirect_to @user 
    else
      flash[:danger] = '必要な項目を入力してください'
      render "new"
    end
  end

  def update
    @user.update!(user_params)
    redirect_to @user
  end

  private
    def set_user
      @user = User.find_by(id: params[:id])
    end

    def user_params
      params.require(:user).permit!
    end
end
