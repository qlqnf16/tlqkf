class CreatePooks < ActiveRecord::Migration[5.0]
  def change
    create_table :pooks do |t|
      t.string :name
      t.boolean :freez
      t.datetime :start
      t.datetime :end
      t.text :content
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
