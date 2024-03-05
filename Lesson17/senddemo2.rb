class Name
attr_accessor :x, :y

	def initialize hash
		hash.each do |key, value|
			send "#{key}=", value
		end
	end
end

s = Name.new :x => 1, :y => 2
puts s.x