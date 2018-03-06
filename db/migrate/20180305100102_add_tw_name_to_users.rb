class AddTwNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tw_name, :string
  end
end
