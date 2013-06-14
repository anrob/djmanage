class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles
  # attr_accessible :title, :body
ROLES = %w[admin manager dancer emcee]

  def self.current
      Thread.current[:user]
    end
    def self.current=(user)
      Thread.current[:user] = user
    end
end
