# frozen_string_literal: true
class CreateWeathers < ActiveRecord::Migration[5.2]

  def change
    create_table :weathers do |t|
      t.json :coord
      t.json :sys
      t.json :main
      t.json :wind
      t.json :rain
      t.json :clouds
      t.integer :dt
      t.string :name
      t.integer :cod
      t.string :base
      t.integer :visibility
      t.json :precipitation
      t.integer :lastupdate

      t.timestamps
    end
  end

end
