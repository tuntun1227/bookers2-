class UsersController < ApplicationController


 def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.where(user_id:@user.id)

 end

 def create
    @user = User.new(user_params)
    if @user.save
       flash[:notice] = "successfully"
    end
 end


 def edit
    @user = User.find(params[:id])
    if @user == current_user

      render :edit
    else
      redirect_to user_path(current_user)
    end
 end

 def index
     @users = User.all
     @user = current_user
     @newbook = Book.new
 end

 def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice]="You have updated user successfully."
      redirect_to user_path(current_user)
    else
      render :edit
    end
 end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  def correct_user
    @user = User.find(params[:id])
    if current_user != @user.id
       redirect_to user_path(current_user)
    end
  end


end