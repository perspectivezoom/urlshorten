class RemoveShortUrlFromUrls < ActiveRecord::Migration
  def up
    remove_column :urls, :short_url
  end

  def down
    add_column :urls, :short_url, :string
  end
end
