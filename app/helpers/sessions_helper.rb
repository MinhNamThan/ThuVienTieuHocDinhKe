module SessionsHelper
  def log_in user
    session[:user_id] = user.id
    if user.student?
      @accesses = Access.first
      num_access = @accesses.num_access + 1
      @accesses.update_attribute :num_access, num_access

    end
    if user.user_access.nil?
      @user_access = UserAccess.new(user_id: user.id);
      @user_access.save!
    else
      @user_access = user.user_access
    end

    num_access = @user_access.num_access + 1
    @user_access.update_attribute :num_access, num_access
  end

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  def logged_in?
    current_user.present?
  end

  def log_out
    session.delete :user_id

    @current_user = nil
  end

  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end
end
