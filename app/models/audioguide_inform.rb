class AudioguideInform < ActiveRecord::Base
  belongs_to :audioguide

  def self.search(search)
    where("language LIKE ?", "%#{search}%") 
  end
end
