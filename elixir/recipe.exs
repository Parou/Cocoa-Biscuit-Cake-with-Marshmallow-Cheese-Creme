defmodule LoopSteps do
  def loop( array, prefix ) when is_list( array ) do
    for { item, index } <- Enum.with_index( array, 1 ) do
      IO.puts "#{prefix}#{index}. #{item}"
    end
  end
end

ground = [ "280g solid, dry biscuits violently dismembered.",
           "20g cocoa powder, dark as our souls.",
           "120g slowly and painfully molten butter.",
           "Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.",
           "Put it in the fridge for 10 Minutes and take it out right before it freezes to death.",
           "Put it into the oven and torture your victim for 15 Minutes by 180°C." ]

marshmallow_cheese_creme = [ "Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.",
                             "Beat the mixture up with your whisk until it doesn't look like it originally did anymore (A creme).",
                             "Add 120g Milk and continue mixing.",
                             "Add a teaspoon of lemon juice and continue mixing for a couple of seconds.",
                             "Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.",
                             "Put everything in the fridge for another hour." ]

post_creation = [ "Eat it.",
                  "Clean your mess up so you can make another one." ]

IO.puts "--------------------------- Init ----------------------------"
LoopSteps.loop( ground, "\t" )
IO.puts "\n-------------------------- Midway ----------------------------"
LoopSteps.loop( marshmallow_cheese_creme, "\t" )
IO.puts "\n-------------------------- Finally ---------------------------"
LoopSteps.loop( post_creation, "\t" )
