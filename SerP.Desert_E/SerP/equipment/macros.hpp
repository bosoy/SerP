#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
#define addItems {switch (_x) do \
		{ \
			case "G": {if (random (100) >1) then {_unit addWeapon "ItemGPS"} else { _unit addWeapon "ACE_Broken_GPS"}}; \
			case "M": {_unit addWeapon "ACE_Map"}; \
			case "MT":{_unit addWeapon "ACE_Map_Tools"}; \
			case "D": {_unit addWeapon "ACE_DAGR"}; \
			case "N": {if (random (100) >1) then {_unit addWeapon "NVGoggles"} else { _unit addWeapon "ACE_BrokenNVGoggles"}}; \
			case "F": {_unit addWeapon "ACE_MugLite"}; \
			case "E": {_unit addWeapon "ACE_Earplugs"}; \
			case "B": {_unit addWeapon "Binocular"}; \
			case "K": {_unit addWeapon "ACE_Kestrel4500"}; \
			case "SG": {_unit addWeapon "ACE_GlassesSunglasses"}; \
			case "H": {_unit addWeapon "ACE_HuntIR_monitor"}; \
			case "L": {_unit addWeapon "ACE_GlassesLHD_glasses"}; \
			case "SS": {_unit addWeapon "ACE_SpottingScope"}; \
			case "GM": {_unit addWeapon "ACE_GlassesGasMask_US"}; \
		} \
	} forEach