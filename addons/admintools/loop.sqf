while {true} do
{
  waitUntil {alive vehicle player};
 [] execVM "addons\admintools\activate.sqf";


  waitUntil {!alive player};
}; 