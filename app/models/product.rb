class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products

  has_many :category_products
  has_many :categories, through: :category_products

  validates :name, uniqueness: true, presence: true
  validates :description, length: { in: 10..500 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :inventory, numericality: { greater_than: 0 }

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    total = price + tax
    total
  end
end
