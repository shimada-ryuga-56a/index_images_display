class Disc < ApplicationRecord
  validates :title, presence: true
  validates :title_ruby, presence: true
  validates :announcement_date, presence: true
  validates :production_type, presence: true

  enum :production_type, { single: 0, ep: 1, album: 2, movie: 3 }
end
