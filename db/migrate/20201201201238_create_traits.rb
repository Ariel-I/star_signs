class CreateTraits < ActiveRecord::Migration[6.0]
  def change
    create_table :traits do |t|
      t.string :strengths
      t.string :weaknesses
      t.string :compatibal_signs
      t.string :description
      t.integer :user_id
      t.integer :constellation_id
    end
  end
end
