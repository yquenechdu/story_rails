class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :role
      t.string :action
      t.string :confirmation

      t.timestamps
    end
  end
end
