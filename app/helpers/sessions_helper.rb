module SessionsHelper
  attr_writer :so_button, :si_button, :su_button
  attr_reader :so_button, :si_button, :su_button
  def u_signin
    if !current_user
      @su_button = link_to 'Sign Up', new_user_path, class: 'btn btn-info text-white'
      @si_button = link_to 'Log in', login_path, class: 'btn btn-info text-white'
      @welcome = 'Connect first'
    else
      @so_button = link_to 'Log out', logout_path, class: 'btn btn-info text-white '
      @welcome = "Welcome #{current_user.name}!"
    end
  end
end
