class AddSignedInToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :signed_in, :boolean, :default => 0
  end
end