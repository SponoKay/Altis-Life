/*
fn_takePhone.sqf
think & tweak bylecul
altislife.fr
*/

private["_unit"];
_unit = cursorTarget;
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
sleep 1;
[[2,format["Quelqu'un vient de te prendre ton téléphone", name _unit, name player]],"life_fnc_broadcast",_unit,false] spawn life_fnc_MP;
titleText[format["Vous avez pris le téléphone de cette personne"],"PLAIN"];
_unit unassignItem "ItemRadio";
_unit removeItem "ItemRadio";
player addItemToBackpack "ItemRadio";
