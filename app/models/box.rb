class Box < ActiveRecord::Base
  belongs_to :user
  has_many :cards

  validates :user, :title, presence: true
  validates_uniqueness_of :title
end