/*
File: fn_cellphone2.sqf
Author: Timo

Description:
With no radio cant use Cellphone
*/


if("ItemRadio" in assignedItems player) then {
createDialog "Life_cell_phone"; // or /** Life_my_smartphone **\ if you use the SQL Based Smartphone By Silex ( http://www.altisliferpg.com/topic/4522-howto-sql-based-smartphone/ )
}else{
hint parseText format ["No CellPhone


You must have have a cellphone (Radio) for use this. You can buy cellphone in a store
"];
};