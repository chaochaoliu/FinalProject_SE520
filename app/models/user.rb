class User < ActiveRecord::Base
  ROLES = %i[admin manager regular_user guest]
  
  belongs_to :role
  has_many :replies
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:timeoutable
end
