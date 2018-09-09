# frozen_string_literal: true
# rubocop:disable MethodLength

class CreateGeolocations < ActiveRecord::Migration[5.2]

  def change
    create_table :geolocations do |t|
      t.float :uv
      t.datetime :uv_time
      t.float :uv_max
      t.datetime :uv_max_time
      t.float :ozone
      t.datetime :ozone_time
      t.json :safe_exposure_time
      t.json :sun_info
      t.json :sun_position

      t.timestamps
    end
  end

end
