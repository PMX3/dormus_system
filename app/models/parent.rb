class Parent < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	belongs_to :applicant
  validates :email, uniqueness: true
  validates_format_of :email,:with => Devise::email_regexp
end
