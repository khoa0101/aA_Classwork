class Artwork < ApplicationRecord

  validates :title, :img_url, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }
  validates :img_url, uniqueness: true

  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: "User"

  has_many :artwork_shares, dependent: :destroy,
  foreign_key: :artwork_id,
  class_name: "ArtworkShare"

  has_many :shared_viewers, 
  through: :artwork_shares,
  source: :viewer

end
