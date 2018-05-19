class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.boolean :freez
      t.datetime :start
      t.datetime :end
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
