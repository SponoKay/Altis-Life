/*
fn_takeCagoule.sqf
think & tweak bylecul
altislife.fr
*/

private["_unit","_headgear","_goggles"];
_headgear = ["H_Shemag_olive","H_ShemagOpen_tan","H_ShemagOpen_khk","H_Shemag_tan"];
_goggles = ["G_Bandanna_tan","G_Balaclava_blk","G_Balaclava_combat","G_Balaclava_lowprofile",
	"G_Balaclava_oli","G_Bandanna_aviator","G_Bandanna_sport","G_Bandanna_shades","G_Bandanna_beast","G_Bandanna_oli"];
_unit = cursorTarget;
_headgeartobackpack = headgear _unit;
_gogglestobackpack = Goggles _unit;

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 1;
[[2,format["Quelqu'un vient de t'arracher ton masque...", name _unit, name player]],"life_fnc_broadcast",_unit,false] spawn life_fnc_MP;
titleText[format["Vous avez arraché le masque de cette personne..."],"PLAIN"];
if(headgear _unit in _headgear) then {
removeHeadGear _unit;
player addItemToBackpack _headgeartobackpack;
}
else
{
	if(Goggles _unit in _goggles) then {
	removeGoggles _unit;
	player addItemToBackpack _gogglestobackpack;
};
};




