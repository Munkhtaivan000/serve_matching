class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :job_recruitments, dependent: :destroy
  has_many :job_recruitments, dependent: :destroy
  has_many :job_applications, dependent: :destroy
end
