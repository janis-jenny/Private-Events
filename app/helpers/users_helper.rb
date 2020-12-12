module UsersHelper
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
