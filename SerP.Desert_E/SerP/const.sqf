#define __quoted(str) #str
#define __concat2(var1,var2) ##var1####var2
#define getParamNumber(a) __concat2(_,a) = getNumber(missionConfigFile >> "SerP_const" >> __quoted(a))
#define getParamText(a) __concat2(_,a) = getText(missionConfigFile >> "SerP_const" >> __quoted(a))
#define getParamTextCompile(a) __concat2(_,a) = call compile getText(missionConfigFile >> "SerP_const" >> __quoted(a))

getParamNumber(defZoneSize);
getParamNumber(hintzonesize);
getParamNumber(zoneMultREDFOR);
getParamNumber(zoneMultBLUEFOR);
getParamTextCompile(sideREDFOR);
getParamTextCompile(sideBLUEFOR);
getParamText(titleREDFOR);
getParamText(titleBLUEFOR);
getParamNumber(domiMult);
getParamNumber(RFRetreat);
getParamNumber(BFRetreat);
getParamNumber(synchronizedRespawn);