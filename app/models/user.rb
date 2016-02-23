class User < ActiveRecord::Base
  has_many :recipes
  has_secure_password

  BCrypt::Engine.cost = 12

  validates :username, :email, :password_digest, presence: true

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
end
