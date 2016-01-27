class UsersController < ApplicationController
  before_filter :authenticate_user!, except: [:create]

  def create
    @user = User.new(user_params)
    @user.role = :guide

    if @user.save
      flash[:notice] = "Thanks for applying. We'll be in touch shortly!"
      redirect_to root_path
    else
      flash[:error] = 'Your form submission has a few errors. Please try again.'
      render :new
    end
  end

  def edit
    @user = current_user
  end

  private

  def user_params
    clean_params = ActionController::Parameters.new(params)
    UserParameters.new(clean_params).permit
  end
end
