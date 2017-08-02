class Product < ApplicationRecord
	has_many :order_products, dependent: :destroy
	has_many :orders, through: :order_products
	
	accepts_nested_attributes_for :order_products, allow_destroy: true

	validates :stoc, numericality: { greater_than_or_equal_to: 0}
	validates :nume, uniqueness: true
end
