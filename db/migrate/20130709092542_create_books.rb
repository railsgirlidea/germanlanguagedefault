class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :number_of_pages
      t.decimal :price, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
