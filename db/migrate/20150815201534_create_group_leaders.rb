class CreateGroupLeaders < ActiveRecord::Migration
  def change
    create_table :group_leaders do |t|
    	t.integer :user_id
      t.timestamps null: false
    end
  end
end
