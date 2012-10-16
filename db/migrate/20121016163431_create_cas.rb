class CreateCas < ActiveRecord::Migration
  def change
    create_table :cas do |t|
      t.string :criteria
      t.string :story_id

      t.timestamps
    end
  end
end
