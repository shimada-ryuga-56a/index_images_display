class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.text :name, null: false
      t.text :name_ruby, null: false
      t.integer :category, null: false
      t.date :date
      t.text :place
      t.integer :place_prefecture
      t.boolean :is_canceled, null: false, default: false

      t.timestamps
    end
  end
end
