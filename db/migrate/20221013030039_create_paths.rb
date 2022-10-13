class CreatePaths < ActiveRecord::Migration[6.1]
  def change
    create_table :paths do |t|
      t.text :
      t.string :description
      t.text :
      t.string :status
      t.boolean :

      t.timestamps
    end
  end
end
