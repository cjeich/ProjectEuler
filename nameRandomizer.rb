#! /Users/ceich/.rvm/rubies/ruby-1.9.2-p320/bin/ruby

# Given a list of names, can you randomize them with 2 per week and ten topics per week with 2 for backup
# -- There are 9 weeks total
# -- Backups must not be the same in consecutive weeks

names = [ 	"Berbaum, Jason", 
			"Coloma, Roger ",
			"Faus, Patrick" ,
			"Gonzales, Jaime ",
			"Higgins, Layne",  
			"Howell, Andrew", 
			"Kojaku, Randy", 
			"Long, Robert", 
			"Maitland, Morgan",  
			"Mathis, Michael",
			"Morlok, Chris", 
			"Nelson, Jay",
			"Nuñez, Nick",
			"O'Brallahan, Bill",
			"Phillips, Jim",
			"Roman, Eddie",
			"Sinclair, Charles",
			"Smith, Don",
			"Spraggins, Ray",
			"Terry, George" ]

weeks = [	"Bibliology", 
			"Theology Proper", 
			"Christology", 
			"Pneumatology", 
			"Anthropology/Hamartiology", 
			"Soteriology", 
			"Eschatology", 
			"Angelology", 
			"Ecclisiology" ]

weeksFinal = {}

weeks.each do |week|
	# randomize list
	names.shuffle!

	
	# make a list with 2 names for each of the 10 topics
	(0..10).times do |topic|

	end

	# Check that backup was not the 

end
