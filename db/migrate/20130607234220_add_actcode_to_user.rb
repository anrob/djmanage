class AddActcodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :act_code, :string
  end
end
