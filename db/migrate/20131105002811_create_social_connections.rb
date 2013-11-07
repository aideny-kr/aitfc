class CreateSocialConnections < ActiveRecord::Migration
  def change
    create_table :social_connections do |t|
      t.string :provider
      t.string :uid
      t.integer :user_id, :null => false
      t.string :user
      t.boolean :follows
      t.boolean :follower
      t.timestamps
    end
  end
end
