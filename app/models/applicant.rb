class Applicant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable
  validates :email, uniqueness: true
  validates_format_of :email,:with => Devise::email_regexp
	belongs_to :submission
  belongs_to :room
  has_one :parent
	has_one :statement_of_account
  has_many :food_plans
	has_attached_file :image_path
	validates_attachment_content_type :image_path, content_type: /\Aimage\/.*\Z/

  def full_name
    "#{last_name}, #{first_name}"
  end
end
