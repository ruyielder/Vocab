class Card < ActiveRecord::Base
  belongs_to :user

  validates :first, :second, presence: true
  validates :negative_count, :positive_count, :positive_percent, :numericality => { :greater_than_or_equal_to => 0 }
end
