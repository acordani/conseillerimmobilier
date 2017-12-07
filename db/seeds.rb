competences = %w(Negociateur Photographe Home-Stager)
puts "creation des competences"

competences.each do |competence|
	Competence.create!(name: competence)
end