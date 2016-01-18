class Ticket < ActiveRecord::Base
  def self.search(search)
    where("id LIKE ?", "%#{search}%") 
  end
end
