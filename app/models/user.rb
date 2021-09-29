class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # BELOW METHOD IS USED E IN POST/SHOW.HTML.ERB - CLASS METHOD?
  # METHOD FROM MODEL USED IN VIEWSS
  def username
    return email.split("@")[0].capitalize
  end
end
