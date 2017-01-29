class Rating < ActiveRecord::Base
	belongs_to :beer

	def to_s
        Beer.find(self.beer_id).name + " "  + self.score.to_s
    end
	
end
