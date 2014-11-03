class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :phone_no, :first_name, :last_name, presence: true
  validates :phone_no, length: {is: 10}
  validates :user_type, inclusion: {in: [1,2]}
end
