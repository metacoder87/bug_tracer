class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.text :path, null: false 
      t.text :description, null: false
      # True = Active unsolved bug / False = Archived resolved bug
      t.boolean :status, :default => false 

      t.timestamps
    end
    add_index :bugs, :path, unique: true 
  end
end
