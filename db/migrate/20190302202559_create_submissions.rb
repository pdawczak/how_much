class CreateSubmissions < ActiveRecord::Migration[5.1]
  def change
    create_table :submissions do |t|
      t.integer :education
      t.decimal :hours_per_week, precision: 4, scale: 2
      t.decimal :capital_gain, precision: 8, scale: 2
      t.boolean :male

      t.timestamps
    end
  end
end
