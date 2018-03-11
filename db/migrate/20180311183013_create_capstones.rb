class CreateCapstones < ActiveRecord::Migration[5.1]
  def change
    create_table :capstones do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :photo

      t.timestamps
    end
  end
end
