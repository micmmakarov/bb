class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.string :title
      t.string :likes

      t.timestamps
    end
  end
end
