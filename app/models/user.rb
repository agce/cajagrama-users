class User < ActiveRecord::Base
    
    has_many :suscriptions
    
    before_save { self.email = email.downcase }
    validates :username, presence: true
    VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 105}, uniqueness: { case_sensitive: false }, format: { with: VALID_EMAIL_REGEX }
    validates :direccion, presence: true
    validates :colonia, presence: true
    validates :ciudad, presence: true
    validates :estado, presence: true
    validates :cp, presence: true
    validates :telefono, presence: true, length: {minimum: 7, maximum: 20}
    
end