class Contacto < ActiveRecord::Base
    validates :name, :email, :comentarios, presence: {:message => "no puede estar en blanco"}
    validates :name, length: { maximum: 20 }
    validates :comentarios, length: { maximum: 160, too_long: "muy largo" }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, format: { with: VALID_EMAIL_REGEX, message: "no es un E-mail" }
    validates :phone, :numericality => {message: "no es un número"}, :length =>
        { minimum: 7, too_short: " muy corto", maximum: 15, too_long: "muy largo" },
        :presence => {:message => 'No es un número de teléfono!'}
end
