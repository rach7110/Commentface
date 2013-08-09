class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :message
      t.integer :score, :default => 0

      t.timestamps
    end
  end
end
