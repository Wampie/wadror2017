module RatingAverage
  extend ActiveSupport::Concern
  def average_rating
    self.ratings.map { |r| r.score }.inject(:+) / self.ratings.size
  end
end