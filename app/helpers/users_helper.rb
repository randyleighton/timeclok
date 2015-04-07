module UsersHelper

  def users_name
    if current_user.name
      return current_user.name
    else
      return current_user.email
    end
  end

end
