class CreateAttachings < ActiveRecord::Migration
  def self.up
    create_table :attachings do |t|
      t.belongs_to :attachable, :polymorphic => true
      t.belongs_to :asset
  
      t.timestamps
    end

    add_index :attachings, ["asset_id"], :name => "index_attachings_on_asset_id"
    add_index :attachings, ["attachable_id"], :name => "index_attachings_on_attachable_id"
  end

  def self.down
    drop_table :attachings
  end
end