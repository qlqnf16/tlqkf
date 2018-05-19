class CreateBoks < ActiveRecord::Migration[5.0]
  def change
    create_table :boks do |t|
      t.string :name
      t.boolean :freez
      t.datetime :start
      t.datetime :end
      t.text :content

      t.timestamps
    end
  end
end
