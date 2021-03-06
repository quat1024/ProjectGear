/*
*the name of the file has to be _[modName].zs

*in this file there should be only receipes added / removed for items in the mod,
 even by other mod's machines / processes.

*if you remove a recipe it is recommended to add a comment saying why.

*never use values inside a function, always use variables or a value effected
 by a variable that was initiated beforehand(at least as much as possible)

*add variables in area categories, for example items, fluids,
 modifires(eg timeModifier), etc...

*use as many new lines as you need to make the file look cozy and easy to read, they are free.

*any function you need to use that MIGHT be usefull in some other script, needs to
 be added into the functions.zs file and used as an external call.
 eg: scripts.functions.exampleFunction(text as String),
     scripts.functions.exampleFunction2(newName as String, item as IItemStack),
     etc...
*/


//----------example
#modifiers
var timeModifier = 1.0;

receipes.addShapeless(<modName:item>, <minecraft:stone>, <minecraft:clock>);         //making an item from THIS mod with vanila shapeless crafting
receipes.addShapeless(<modName:item>, <minecraft:stone>, <minecraft:clock>, <minecraft:stone>);  //making an item from THIS mod with vanila shapeless crafting

mods.botania.ManaInfusion.addAlchemy(<modName:item>, <minecraft:stone>, 100*timeModifier); //making an item from THIS mod using botania ManaInfusion

mods.forestry.Still.addRecipe(<modName:Fluid:2>, <minecraft:water>, 200*timeModifier); //making an item from THIS mod using forestry's still

scripts.functions.exampleFunction2("new name for item",<modName:item>);
//----------

//----------example of what NOT to do
#items

mods.modName.coolCrafting.add(<minecraft:stone>, <modName:item>, <minecraft:clock>, <modName:item>); // <--- that's wrong, this should be placed in the _vanila.zs file instead
//----------
