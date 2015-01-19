module SessionsHelper

  def login(user)
    @current_user = session[:user_id] = user.id
  end

  def logout
    @current_user = session[:user_id] = nil
  end

  def current_user
    @current_user = @current_user || User.find_by(id: session[:user_id])
  end

  def logged_in?
    if current_user == nil
      redirect_to '/login'
    end
  end

end
