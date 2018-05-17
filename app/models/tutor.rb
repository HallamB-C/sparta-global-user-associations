class Tutor < ApplicationRecord
  has_many :groups
  has_many :student, through: :groups
  validates :name, presence: true
  validates :email, presence: true
  validates_with EmailValidator
end
