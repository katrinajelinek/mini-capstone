class CreateRemoveTaxAndTotalFromProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :remove_tax_and_total_from_products do |t|
      remove_column :products, :tax, :integer
      remove_column :products, :total, :integer
      t.timestamps
    end
  end
end
