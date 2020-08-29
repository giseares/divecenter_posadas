class Inquiry < ApplicationRecord
  belongs_to :activity
  validates :name, :comment, :phone, presence: true
  validates :phone, presence: true
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
  # validate :validation_phone
end

def validation_phone
  errors.add(:phone, "El numero de telefono debe contene 10 caracteres incluyendo el codigo de area sin el 0 y sin el 15 para celulares. Por ejemplo 0111554194769 ---> 1154194768")
end