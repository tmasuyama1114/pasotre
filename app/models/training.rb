class Training < ApplicationRecord
  has_many :menus

  validates :name, presence: true, length: { maximum: 50 }
  validates :part, presence: true, inclusion: { in: ['脚', '胸', '肩', '背中', '腹', '腕' ]}
  validates :point, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :basis, presence: true, numericality: { greater_than_or_equal: 0 }
  validates :description, presence: true
end