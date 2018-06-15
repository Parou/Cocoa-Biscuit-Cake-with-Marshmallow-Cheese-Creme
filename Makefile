BISC_MASS=280
COCOA_MASS=20
BUTTER_MASS=120 # Make sure this is melted. This is a requirement for this makefile to work.
MARSH_MASS=120
CHEESE_MASS=160
MILK_MASS=120

all: link
	# eat the cake
	echo clean_surface/cake.tin > /dev/null
	rm clean_surface/cake.tin && touch clean_surface/cake.tin
	clear

furnish_kitchen:
	mkdir -p oven clean_surface fridge microwave
	echo 0 > oven/temperature
	echo 0 > microwave/power
	echo 0 > microwave/onoff

# oven is assumed to be a unix file descriptor whose heat can be controlled
# by a file inside called temperature
ground: furnish_kitchen
	mkdir -p clean_surface fridge
	echo 180 > oven/temperature
	rm -f clean_surface/cake.tin && touch clean_surface/cake.tin
	echo "Biscuit $(BISC_MASS)g" >> clean_surface/cake.tin
	echo "Cocoa powder $(COCOA_MASS)g" >> clean_surface/cake.tin
	echo "Butter $(BUTTER_MASS)g" >> clean_surface/cake.tin
	mv clean_surface/cake.tin fridge
	sleep 10m
	mv fridge/cake.tin oven
	sleep 15m
	mv oven/cake.tin clean_surface
    
# Similar to oven, microwave is assumed to be a unix file descriptor whose power
# is controlled by microwave/power
creme: furnish_kitchen
	mkdir -p clean_surface
	echo 600 > microwave/power
	touch clean_surface/bowl
	echo "Marshmallows $(MARSH_MASS)g" >> clean_surface/bowl
	echo "Cream Cheese $(CHEESE_MASS)g" >> clean_surface/bowl
	mv clean_surface/bowl microwave
	echo 1 > microwave/onoff
	sleep 1m
	echo 0 > microwave/onoff
	mv microwave/bowl clean_surface
	shuf clean_surface/bowl > clean_surface/bowl
	echo "Milk $(MILK_MASS)g" >> clean_surface/bowl
	shuf clean_surface/bowl > clean_surface/bowl
	echo "Lemon juice (tsp.)" >> clean_surface/bowl
	shuf clean_surface/bowl > clean_surface/bowl
    
link: ground creme
	cat clean_surface/* > clean_surface/cake.tin
	rm clean_surface/bowl
	mv clean_surface/cake.tin fridge
	sleep 1h
	mv fridge/cake.tin clean_surface
