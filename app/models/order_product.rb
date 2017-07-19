class OrderProduct < ApplicationRecord
	belongs_to :order#, polymorphic: true
	belongs_to :product#, polymorphic: true

	validates :numar, presence: true
end
