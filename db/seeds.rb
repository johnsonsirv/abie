injuries = [
	{name: 'Abdominal'}, {name: 'Bone'},{name: 'Chest'}, {name: 'Head'},{name: 'Muscle'}, {name: 'Skin'}
	]

injuries.each do |i|
	Injury.create(i)
end

