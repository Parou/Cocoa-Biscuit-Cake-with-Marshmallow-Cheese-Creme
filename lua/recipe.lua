--[[

Cocoa-Biscuit Cake with Marshmallow-Cheese Creme
               - Lua version -

]]--




title = 'Cocoa-Biscuit Cake with Marshmallow-Cheese Creme'

recipeVersion = 'Lua'

-- Ground:  

groundRecipe = {
    '280g solid, dry biscuits violently dismembered.',
    '20g cocoa powder, dark as our souls.',
    '120g slowly and painfully molten butter.',
    'Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.',
    'Put it in the fridge for 10 Minutes and take it out right before it freezes to death.',
    'Put it into the oven and torture your victim for 15 Minutes by 180°C.'
}

-- Marshmallow-Cheese Creme:

cremeRecipe = {
    'Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.',
    'Beat the mixture up with your whisk until it doesn\'t look like it originally did anymore (A creme).',
    'Add 120g Milk and continue mixing.',
    'Add a teaspoon of lemon juice and continue mixing for a couple of seconds.',
    'Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.',
    'Put everything in the fridge for another hour.'
}

-- When everything is done

afterwards = {
    'Eat it.',
    'Clean your mess up so you can make another one.'
}



-- Output array in an ordered list
function outputArray(array)
	for n=1,#array do
		print(n .. '. ' .. array[n])
	end
end

-- Write recipe to console
function writeRecipe()
	print('\n-- ' .. title .. ' --\n')
	
	print('Ground: ')
	outputArray(groundRecipe)
	
	print('\nMarshmallow-Cheese Creme: ')
	outputArray(cremeRecipe)
	
	print('\nAfterwards: ')
	outputArray(afterwards)
end

writeRecipe()
