class CreateDiscs < ActiveRecord::Migration[7.1]
  def change
    create_table :discs do |t|
      t.string :title, null: false
      t.string :title_ruby, null: false
      t.date :announcement_date, null: false
      t.date :release_date
      t.integer :production_type
      t.timestamps
    end
  end
end
