class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  has_many :product_categories
  has_many :categories, through: :product_categories

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 255 }
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0, less_than: 10000.00 }
  validates :description, length: { in: 10..500 }



  def is_discounted?
    price < 50
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

end
