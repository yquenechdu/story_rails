class ChangeNameGiven < ActiveRecord::Migration
  def up
    rename_column :bdds, :give, :given
  end

  def down
  end
end
