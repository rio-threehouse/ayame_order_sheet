class Item < ApplicationRecord
  validates :number, presence: true, length: { maximum: 200 }
  validates :name, presence: true, length: { maximum: 200 }
  validates :color_1, presence: true, length: { maximum: 200 }
  validates :size_1, presence: true, length: { maximum: 200 }
  validates :price, presence: true, length: { maximum: 200 }
  validates :color_2, length: { maximum: 200 }
  validates :color_3, length: { maximum: 200 }
  validates :color_4, length: { maximum: 200 }
  validates :size_2, length: { maximum: 200 }
  validates :size_3, length: { maximum: 200 }
  validates :size_4, length: { maximum: 200 }
end
