module UserHelper

  def default_pic(user)
    if user.photo.nil?
      user.photo = asset_url('user-blank.png')
    else
      return user.photo
    end
  end

end
