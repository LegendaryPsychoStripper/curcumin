class Order < ApplicationRecord
	belongs_to :user, optional: true
	has_many :order_products, dependent: :destroy
	has_many :products, through: :order_products

	validates :email, :presence => :true, allow_blank: false
	validates :nume, :presence => :true, allow_blank: false
	validates :prenume, :presence => :true, allow_blank: false
	validates :tara, :presence => :true, allow_blank: false
	#validates :judet, :presence => :true
	validates :oras, :presence => :true, allow_blank: false
	
	#validates :codpostal, :presence => :true
	#validate :are_pret, on: :create
	accepts_nested_attributes_for :order_products, allow_destroy: true



	def self.search(search)
  		where("nume LIKE ?", "%#{search}%") 
  		where("prenume LIKE ?", "%#{search}%")
  		where("email LIKE ?", "%#{search}%")
  		where("tara LIKE ?", "%#{search}%")
  		where("oras LIKE ?", "%#{search}%")
	end
  #def are_pret
  #  if pret == 0 
  #    errors.add(:pret, "nu poti comanda fara sa adaugi produse")
  #  end
  #end

end
