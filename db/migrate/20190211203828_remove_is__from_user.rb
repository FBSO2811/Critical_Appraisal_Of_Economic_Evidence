class RemoveIsFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :is_, :string
  end
end
