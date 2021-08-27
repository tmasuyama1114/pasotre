class Menu < ApplicationRecord
  belongs_to :training

  validates :count, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :num, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}
  validates :set, presence: true
end
