class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :genres

  def slug
    self.name.parameterize
  end

  def self.find_by_slug(slug)
    self.all.find do |song|
      if slug == song.slug
        song
      end
    end
  end

end
