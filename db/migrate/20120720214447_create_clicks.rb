class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :url
      t.timestamps
    end
  end
end
