/*
Cocoa-Biscuit Cake with Marshmallow-Cheese Creme - JavaScript Version
*/

var title = 'Cocoa-Biscuit Cake with Marshmallow-Cheese Creme';

var recipeVersion = 'JavaScript';

// Ground:  

var groundRecipe = [
    '280g solid, dry biscuits violently dismembered.',
    '20g cocoa powder, dark as our souls.',
    '120g slowly and painfully molten butter.',
    'Force everything in a cake tin with a diameter of 26 cm and use a cup to press your victim tightly against it, leaving a border of maybe 1 cm that is also pressed against the sides.',
    'Put it in the fridge for 10 Minutes and take it out right before it freezes to death.',
    'Put it into the oven and torture your victim for 15 Minutes by 180°C.'
];

// Marshmallow-Cheese Creme:

var cremeRecipe = [
    'Put 120g Marshmallows in a bowl, add 160g Cream Cheese and put it without mixing into the microwave for 1 Minute by 600 Watts.',
    'Beat the mixture up with your whisk until it doesn\'t look like it originally did anymore (A creme).',
    'Add 120g Milk and continue mixing.',
    'Add a teaspoon of lemon juice and continue mixing for a couple of seconds.',
    'Now pour the liquified remains into the previously made cake ground so it fills the hole in its heart.',
    'Put everything in the fridge for another hour.'
];

// When everything is done

var afterwards = [
    'Eat it.',
    'Clean your mess up so you can make another one.'
];



/**
 * Helper function to create new DOM elements.
 *
 * @param {String} elemTag - The element tag name to create.
 * @param {Node} [child = null] - A Node to be inserted inside the created DOM element.
 *
 * @returns {Node}
 */
function _createNode(elemTag, child = null) {
    const newElem = document.createElement(elemTag);

    if (child)
        newElem.appendChild(child);

    return newElem;
}


/**
 * Populates a Node element from an array of strings.
 * 
 * @param {Node} listNode - The list node to be used to append the list items.
 * @param {Array} fromArr - An array of strings.
 * 
 * @returns {Node}
 */
const _populateNode = (listNode, fromArr) => fromArr.reduce(
    (list, v, i) => i < fromArr.length
        ? list.appendChild(_createNode('li', document.createTextNode(v))) && list
        : list
    , listNode
);


// Writes the recipe into the DOM.
function writeRecipe() {
    // Replaces the current tab title.
    document.title = title;

    // Clens already existant HTML markup on the body
    document.body.innerHTML = "";


    // Recipe content to be added to body later.
    const recipeContent = [];


    // Article title
    recipeContent.push(_createNode('h1', document.createTextNode(title)));

    // Groud Section
    recipeContent.push(_createNode('h2', document.createTextNode('Ground:')));

    // Populate the first section of the recipe.
    recipeContent.push(_populateNode(_createNode('ol'), groundRecipe));

    // Last Section
    recipeContent.push(_createNode('h2', document.createTextNode('Marshmallow-Cheese Creme:')));

    // Populates the last section of the recipe.
    recipeContent.push(_populateNode(_createNode('ol'), [...cremeRecipe, ...afterwards]))


    // Finally, writes the recipe into the body.
    recipeContent.forEach((c) => document.body.appendChild(c));
}



// Writes the recipe into screen when the document is ready.
if (
    document.readyState === 'complete' ||
    (
        document.readyState !== 'loading' &&
        !document.documentElement.doScroll
    )
)
    writeRecipe();
else
    document.addEventListener('DOMContentLoaded', writeRecipe);

