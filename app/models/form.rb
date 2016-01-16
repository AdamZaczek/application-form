class Form < ActiveRecord::Base
  before_save :callback

  validates :opis,  presence: true, length: { minimum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
                    
 validates :kategoria, presence: true, length: { maximum: 255 }   
 
  def callback
    case self.kategoria
    when 'awaria'
      if Time.now.in_time_zone.hour >= 17 || Time.now.in_time_zone.hour <= 9
        self.koszt = 100
      else
        self.koszt = 50
      end
      self.deadline = Time.now.in_time_zone. + 4.hours
    when 'uszkodzenie'
      self.koszt = 10
      self.deadline = Time.now.in_time_zone. + 1.day
    when 'usterka'
      self.koszt = 1
      self.deadline = Time.now.in_time_zone. + 3.days
    else
      false
    end
  end
end