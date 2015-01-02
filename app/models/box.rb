class Box < ActiveRecord::Base
  belongs_to :user

  validates :user, :title, presence: true
  validates_uniqueness_of :title
end