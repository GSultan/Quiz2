class AddSeedsAndColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :supports, :done, :boolean


  end

end
