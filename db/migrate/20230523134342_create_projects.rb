class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :vision
      t.datetime :opened

      t.timestamps
    end
    add_index :projects, :name, unique: true
  end
end
