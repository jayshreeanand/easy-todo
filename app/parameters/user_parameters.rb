class UserParameters < ApplicationParameters
  def root_key
    :user
  end

  def default_attributes
    [
      :email, :password, :password_confirmation
    ]
  end
end
