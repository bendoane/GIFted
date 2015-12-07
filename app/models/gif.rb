class Gif < ActiveRecord::Base

belongs_to :users
validates_format_of :url, :with => /\Ahttp(|s):\/\//
validates_format_of :url, :with => /\.gif/

before_validation :add_http
before_validation :add_gif

  def add_http
    unless self.url =~ /\Ahttp(|s):\/\//
      self.url = "http://" + self.url
    end
  end

  def add_gif
    unless self.url =~ /\.gif/
      self.url = self.url + ".gif"
    end
  end

end
