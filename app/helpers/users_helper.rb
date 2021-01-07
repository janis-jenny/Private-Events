module UsersHelper
  def user_params
    params.require(:user).permit(:name, :email)
  end

  def user_errors
    return unless @user.errors.any?

    @user.errors.full_messages.each do |msg|
      if msg.include?('Name')
        @uclas1 = 'border border-danger'
      elsif msg.include?('Email')
        @uclas2 = 'border border-danger'
      end
    end
  end
end
