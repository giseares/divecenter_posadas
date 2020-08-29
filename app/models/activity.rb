class Activity < ApplicationRecord
  has_many :inquieries
  belongs_to :agency
  validates :sort, :duration, :price, :description,:location, :name_activity, presence: true
  enum sort: [ :curso, :especialidad, :salida, :professional ]
end
