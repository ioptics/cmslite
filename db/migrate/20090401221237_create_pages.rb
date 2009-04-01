class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string      :title
      t.string      :slug
      t.string      :full_path
      t.belongs_to  :parent
      t.belongs_to  :created_by
      t.belongs_to  :updated_by
      t.text        :body
      t.datetime    :published_at
      t.boolean     :hidden
      t.string      :status

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
