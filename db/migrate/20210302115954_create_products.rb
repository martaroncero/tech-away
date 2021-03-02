class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :decription
      t.string :status
      t.string :condition
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
