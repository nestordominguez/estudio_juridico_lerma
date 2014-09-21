class Contacto < ActiveRecord::Base
	validates :name, :email, :comentarios, presence: true
	validates :name, length: { maximum: 20 }
	validates :comentarios, length: { maximum: 160 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, format: { with: VALID_EMAIL_REGEX }
  	validates :phone, :numericality => true, :length => 
  				{ :minimum => 7, :maximum => 15 },
  				:presence => {:message => 'No es un número de teléfono!'}
end
