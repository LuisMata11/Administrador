class CreateSales < ActiveRecord::Migration[5.1]
  def change
    create_table :sales do |t|
      t.references :client, foreign_key: true
      t.date :sale_date
      t.string :user
      t.string :references
      t.references :discount, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
