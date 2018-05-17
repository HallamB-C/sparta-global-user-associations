class Group < ApplicationRecord
  belongs_to :user
  belongs_to :tutor
  validates :tutor, presence: true
  validates :subject, presence: true
  validates_format_of :subject, :with => /\A([^\d\W]|[-])*\Z/
end
