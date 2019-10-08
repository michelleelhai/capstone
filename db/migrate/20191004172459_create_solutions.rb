class CreateSolutions < ActiveRecord::Migration[6.0]
  def change
    create_table :solutions do |t|
      t.integer :condition_id
      t.integer :product_id

      t.timestamps
    end
  end
end
