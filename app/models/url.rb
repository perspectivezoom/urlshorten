class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_id
  before_save :prep_fields_for_save

  def prep_fields_for_save
  	add_http
  	generate_short_id
  end

  def add_http
  	self.long_url = 'http://' + self.long_url unless self.long_url.start_with?('http')
  end

  def generate_short_id
  	self.short_id ||= Array.new(8).map { ('a'..'z').to_a[rand(26)] }.join
  end

end
