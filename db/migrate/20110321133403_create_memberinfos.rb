class CreateMemberinfos < ActiveRecord::Migration
  def self.up
    create_table :memberinfos do |t|
      t.string :name
      t.string :password
      t.string :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :memberinfos
  end
end
