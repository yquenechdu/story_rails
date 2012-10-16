class CreateBdds < ActiveRecord::Migration
  def change
    create_table :bdds do |t|
      t.string :give
      t.string :when
      t.string :then
      t.string :story_id

      t.timestamps
    end
  end
end
