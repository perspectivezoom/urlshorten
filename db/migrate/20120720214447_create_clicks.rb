class CreateClicks < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.references :url_id
      t.timestamps
    end
  end
end
