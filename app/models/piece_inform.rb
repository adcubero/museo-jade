class PieceInform < ActiveRecord::Base
  belongs_to :piece

  def self.search(search)
    where("language LIKE ?", "%#{search}%") 
  end
end
