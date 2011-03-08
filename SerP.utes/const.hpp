
//радиус зоны за которую нельзя выходить во время брифинга ингейм
defZoneSize = 50;
//толщина зоны в которой будет выскакивать хинт о покидании зоны брифинга
hintzonesize = 30;
//стартовая зона REDFOR будет равна defZoneSize*zoneMultREDFOR
zoneMultREDFOR = 1;
//стартовая зона BLUEFOR будет равна defZoneSize*zoneMultBLUEFOR
zoneMultBLUEFOR = 1;
//Воюющие стороны:
//"west" - USMC, US Army, CDF, Rangers and etc.
//"east" - MSV, TA, CDKZ and etc.
//"resistance" - NAPA, People of Takistan, PMC, UN and etc
//"civilian"
sideREDFOR = "east";
sideBLUEFOR = "west";
//Текст который будет использован в сообщении о победе/проигрыше
//Допустимые значения: STR_ru_call, STR_ruspn_call, STR_usmc_call, STR_usarmy_call, STR_75th_call, STR_napa_call, STR_ta_call, STR_cdkz_call, STR_pot_call, STR_CDF_call
//Можно дописать свое в stringtable.xml
titleREDFOR = $STR_ru_call;
titleBLUEFOR = $STR_usarmy_call;

//если у одной из сторон окажется численное преимущество в _domiMult и противоположная сторона достигнет коэффициента допутимых потерь миссия завершится
domiMult = 3;
//коэффициент допустимых потерь синих. Если выживут меньше n*(начальные силы) синие отступят
RFRetreat = 0.2;
//коэффициент допустимых потерь красных. Если выживут меньше n*(начальные силы) красные отступят
BFRetreat = 0.2;

//время которое будет установлено если в лобби выбрать время суток по умолчанию
defaultTime[] = {2010, 10, 21, 14, 50};
//туман который будет установлен если в лобби выбрать погоду по умолчанию
defaultFog = 0;
//облачность которая будет установлена если в лобби выбрать погоду по умолчанию
defaultOvercast = 0.9;
//дальность обзора
viewDistance = 3500;