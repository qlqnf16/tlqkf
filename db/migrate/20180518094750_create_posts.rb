class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start
      t.date :end
      t.text :content
      t.boolean :freez

      t.timestamps
    end
  end
end
