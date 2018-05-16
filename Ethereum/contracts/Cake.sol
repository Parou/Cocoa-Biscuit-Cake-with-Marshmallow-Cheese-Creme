pragma solidity ^0.4.19;

contract CakeRequirements
{
    //Ground Requirements
    uint BISC_MASS=280;
    uint COCOA_MASS=20;
    uint BUTTER_MASS=120;

    //MarshmelloCheeseCreme Requirements
    uint MARSH_MASS=120;
    uint CHEESE_MASS=160;

}

contract Cake is CakeRequirements
{
    address creator;

    function Cake() public payable
    {
            Bakers[msg.sender]=true;
            creator=msg.sender;
    }

    mapping(address => bool) public Bakers;

    modifier AliceBakers(address _account)
    {
        require(Bakers[msg.sender] == true);
            _;
    }

    function MakeBaker(address _newBaker) public AliceBakers(msg.sender)
    {
        Bakers[_newBaker]=true;
    }

    //Ground Prep Instructions
    string[16] Preparation=[    "Ground Preparation:",
                                "280g solid, dry biscuits violently dismembered.",
                                "20g cocoa powder, dark as our souls.",
                                "120g slowly and painfully molten butter.",
                                "Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.",
                                "Put it in the fridge for 10 Minutes and take it out right before it freezes to death.",
                                "Put it into the oven and torture your victim for 15 Minutes by 180°C.",
                                "Now Begin preparing Marshmello-Cheese Creme:",
                                "Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.",
                                "Beat the mixture up with your whisk until it doesn`t look like it originally did anymore (A creme).",
                                "Add 120g Milk and continue mixing.",
                                "Add a teaspoon of lemon juice and continue mixing for a couple of seconds.",
                                "Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.",
                                "Put everything in the fridge for another hour.",
                                "Eat it.",
                                "Clean your mess up so you can make another one."
                            ];

    uint countInst = 0;

    function PrepareCake() public constant returns(string)
    {
        if(countInst == 0)
            return("Let`s make a delicious Cocoa-Biscuit Cake with Marshmallow-Cheese Creme.");

        if(countInst > 14)
            return("You`re done. Alice is proud of you.");

        return Preparation[countInst-1];
    }

    function NextInst() public {countInst+=1;}

    function MakeCake(uint biscuit, uint cocoa, uint butter, uint marshmello, uint cheese) public view returns(string)
    {
        if( biscuit < BISC_MASS || biscuit > BISC_MASS )
            return("Change Biscuit content according to Instructions. ");

        if(cocoa < COCOA_MASS || cocoa > COCOA_MASS)
            return("Change Cocoa content according to Instructions. ");

        if(butter < BUTTER_MASS || butter > BUTTER_MASS)
            return("Change Butter content according to Instructions. ");

        if(marshmello < MARSH_MASS || marshmello > MARSH_MASS)
            return("Change Marshmello content according to Instructions. ");

        if(cheese < CHEESE_MASS || cheese > CHEESE_MASS)
            return("Change Cheese content according to Instructions. ");

        return("Congratulations! You have made youself a perfect Alice Peter signature Cake.");

    }
    function resetInstruction() public {countInst=0;}

    function KillSwitch() public AliceBakers(msg.sender)
    {
        selfdestruct(creator);
    }
}
