class RenameDecriptionInProducts < ActiveRecord::Migration[6.0]
  def change
    rename_column :products, :decription, :description
  end
end
