class AddsProfileIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :profile_id, :integer
  end
end
