class AddIndexToSupports < ActiveRecord::Migration[5.0]
  def change
    add_index :supports, :name
    add_index :supports, :email
  end
end
