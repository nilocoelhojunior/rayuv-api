# frozen_string_literal: true
class CreateWeatherDetails < ActiveRecord::Migration[5.2]

  def change
    create_table :weather_details do |t|
      t.belongs_to :weather, index: true
      t.string :main
      t.string :description
      t.string :icon

      t.timestamps
    end
  end

end
