class User < ApplicationRecord
  has_many :groups
  has_many :tutors, through: :groups
  validates :name, presence: true
  validates :email, presence: true
  validates_with EmailValidator
end
