class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.integer :grade

      t.timestamps
    end
  end
end
