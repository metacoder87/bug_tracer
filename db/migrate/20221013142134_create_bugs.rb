class CreateBugs < ActiveRecord::Migration[6.1]
  def change
    create_table :bugs do |t|
      t.text :path
      t.text :description
      t.boolean :status

      t.timestamps
    end
  end
end
