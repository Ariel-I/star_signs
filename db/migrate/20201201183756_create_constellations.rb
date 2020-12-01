class CreateConstellations < ActiveRecord::Migration[6.0]
  def change
    create_table :constellations do |t|
      t.string :name
      t.string :symbol
      t.string :element
      t.string :ruling_planet
      t.string :zodiac_quality
      t.string :start_date
      t.string :end_date
    end
  end
end
