class Message < ApplicationRecord
	belongs_to :user, optional: true
	
	validates :nume, :presence => :true
	validates :email, :presence => :true
	validates :content, :presence => :true
	#validates :sickness, :presence => :true
end
