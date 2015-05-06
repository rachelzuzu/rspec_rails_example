class Article < ActiveRecord::Base
	validates :title, presence: true
	def summary
		self.content.first(100)
	end
end
