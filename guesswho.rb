require 'csv'

tickers = {}

CSV.foreach("stocks.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
  tickers[row.fields[0]] = Hash[row.headers[1..-1].zip(row.fields[1..-1])]
end

class Player

	@@suspect_pool = list_of_suspect

	attr_accessor :guilty, :list_of_suspect

end

class Suspect

	attr_accessor :name, :gender, :skin_color, :hair_color, :eye_color, :face_down

	@face_down = false

end

class Game

	attr_accessor :turn_count
	attr_reader :list_of_suspect

	def initialize
		turn_count = 0
		load_suspects
	end

	private
	def load_suspects
		f = File.read('guess_who.csv')
		parsed = CSV.parse(f)
		@list_of_suspect = []
		parsed.each { |name, gender, skin, hair, eye| @list_of_suspect.push Suspect.new(name,gender,skin,hair,eye) }
	end

	def add_player
		2.times do
			Player.new
		end
	end

	def pick_guilty_suspects


	end
end
