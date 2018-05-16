#include <iostream>
#include <vector>
#include <string>

const int mmmm_yummy = 0;

const std::vector< std::string > ground = {
	"280g solid, dry biscuits violently dismembered.",
	"20g cocoa powder, dark as our souls.",
	"120g slowly and painfully molten butter.",
	"Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.",
	"Put it in the fridge for 10 Minutes and take it out right before it freezes to death.",
	"Put it into the oven and torture your victim for 15 Minutes by 180°C.",
};

const std::vector< std::string > marshmallow_cheese_creme = {
	"Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.",
	"Beat the mixture up with your whisk until it doesn't look like it originally did anymore (A creme).",
	"Add 120g Milk and continue mixing.",
	"Add a teaspoon of lemon juice and continue mixing for a couple of seconds.",
	"Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.",
	"Put everything in the fridge for another hour.",	
};

const std::vector< std::string > post_creation = {
	"Eat it.",
	"Clean your mess up so you can make another one.",
};

int main()
{
	std::cout << "----------------- Init -------------------" << std::endl;
	for( auto & step : ground )
		std::cout << step << std::endl;

	std::cout << "\n----------------- Midway ------------------" << std::endl;
	for( auto & step : marshmallow_cheese_creme )
		std::cout << step << std::endl;

	std::cout << "\n----------------- Finally ------------------" << std::endl;
	for( auto & step : post_creation )
		std::cout << step << std::endl;
	return mmmm_yummy;
}
