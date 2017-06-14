class AddNumberToSection < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :number, :integer, null: false, default: 0
  end
end
