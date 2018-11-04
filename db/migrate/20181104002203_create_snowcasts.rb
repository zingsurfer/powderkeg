class CreateSnowcasts < ActiveRecord::Migration[5.2]
  def change
    create_table :snowcasts do |t|
      t.float :apparent_temp
      t.float :apparent_temp_max
      t.datetime :apparent_temp_max_time
      t.float :cloud_cover
      t.float :precip_accumulation
      t.float :precip_intensity_max
      t.datetime :precip_intensity_max_time
      t.float :precip_probability
      t.string :precip_type
      t.float :visibility
      t.float :temp_max
      t.datetime :temp_max_time
      t.float :wind_gust
      t.datetime :wind_gust_time
      t.float :wind_speed
      t.references :resort, foreign_key: true

      t.timestamps
    end
  end
end
