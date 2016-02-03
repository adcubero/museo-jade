class ExhibitionInformation < ActiveRecord::Base
  belongs_to :exhibition

  def self.search(search)
    where("language LIKE ?", "%#{search}%") 
  end
end
