class Form < ActiveRecord::Base

  validates :opis,  presence: true, length: { minimum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
 validates :kategoria, presence: true, length: { maximum: 255 }   
end