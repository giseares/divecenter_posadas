class Activity < ApplicationRecord
  has_many :inquieries
  belong_to :agency
end
