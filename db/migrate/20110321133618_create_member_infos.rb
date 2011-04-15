class CreateMemberInfos < ActiveRecord::Migration
  def self.up
    create_table :member_infos do |t|
      t.string :name
      t.string :password
      t.integer :street_id

      t.timestamps
    end
  end

  def self.down
    drop_table :member_infos
  end
end
