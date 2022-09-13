class CreateUserContests < ActiveRecord::Migration[7.0]
  def change
    create_table :user_contests do |t|
      t.string :player_name
      t.timestamps
    end
  end
end
