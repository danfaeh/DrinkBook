class User < ActiveRecord::Base
  has_many :recipes
  has_secure_password

  # BCrypt::Engine.cost = 12

  validates :username, uniqueness: true

  def self.confirm(params)
    @user = User.find_by({username: params[:username]})
    @user.try(:authenticate, params[:password])
  end
end
