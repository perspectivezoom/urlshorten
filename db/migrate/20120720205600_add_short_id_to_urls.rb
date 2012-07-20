class AddShortIdToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :short_id, :string
  end
end
