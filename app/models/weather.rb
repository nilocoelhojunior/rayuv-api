# frozen_string_literal: true
class Weather < ApplicationRecord

  has_many :weather_details, dependent: :destroy

end
