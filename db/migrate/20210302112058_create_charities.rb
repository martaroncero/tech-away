class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :website
      t.string :whatsapp_number

      t.timestamps
    end
  end
end
