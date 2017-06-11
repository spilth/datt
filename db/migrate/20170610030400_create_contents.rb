class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.references :document, foreign_key: true
      t.references :section, foreign_key: true
      t.references :variant, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
