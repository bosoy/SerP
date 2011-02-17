
//радиус зоны за которую нельзя выходить во время брифинга ингейм
defZoneSize = 50;
//толщина зоны в которой будет выскакивать хинт о покидании зоны брифинга
hintzonesize = 30;
//стартовая зона REDFOR будет равна defZoneSize*zoneMultREDFOR
zoneMultREDFOR = 1;
//стартовая зона BLUEFOR будет равна defZoneSize*zoneMultBLUEFOR
zoneMultBLUEFOR = 1;
//Воюющие стороны: "west", "east", "resistance", "civilian"
sideREDFOR = "east";
sideBLUEFOR = "west";
//Текст который будет использован в сообщении о победе/проигрыше
//Допустимые значения: STR_ru_call, STR_usmc_call, STR_usarmy_call, STR_napa_call, STR_ta_call, STR_pot_call
//Можно дописать свое в stringtable.xml
titleREDFOR = $STR_ru_call;
titleBLUEFOR = $STR_usarmy_call;

//если у одной из сторон окажется численное преимущество в _domiMult и противоположная сторона достигнет коэффициента допутимых потерь миссия завершится
domiMult = 3;
//коэффициент допустимых потерь синих. Если выживут меньше n*(начальные силы) синие отступят
RFRetreat = 0.2;
//коэффициент допустимых потерь красных. Если выживут меньше n*(начальные силы) красные отступят
BFRetreat = 0.2;