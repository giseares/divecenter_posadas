class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  validates :booking_date, presence: true
  enum status: [ :pendiente, :confirmado, :cancelado, :finalizado ]
  validate :booking_date_cannot_be_in_the_past
  
  # scope :to_publish, -> { where(status: ["pendiente", "confirmado"]) }
  # scope :pending, -> { where(status: "pendiente") }
  # scope :approved, -> { where(status: "aprobado") }


  def booking_date_cannot_be_in_the_past
    if booking_date.present? && booking_date < Date.today
      errors.add( :booking_date,"La fecha a seleccionar no puede ser menor a hoy")
    end
  end
  
  
end
