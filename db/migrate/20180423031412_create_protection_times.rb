# frozen_string_literal: true

class CreateProtectionTimes < ActiveRecord::Migration[5.2]

  def change
    create_table :protection_times do |t|
      t.datetime :from_time
      t.float :from_uv
      t.datetime :to_time
      t.float :to_uv

      t.timestamps
    end
  end

end
