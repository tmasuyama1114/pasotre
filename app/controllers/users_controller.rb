class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :require_user_logged_in, only: [:show]
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
=======

  def show
    @user = User.find_by(id: params[:id])
  end

>>>>>>> d276ea1578c363de678e90761725bc32bf652c4f
end
