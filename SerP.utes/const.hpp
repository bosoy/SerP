
//������ ���� �� ������� ������ �������� �� ����� �������� ������
defZoneSize = 50;
//������� ���� � ������� ����� ����������� ���� � ��������� ���� ��������
hintzonesize = 30;
//��������� ���� REDFOR ����� ����� defZoneSize*zoneMultREDFOR
zoneMultREDFOR = 1;
//��������� ���� BLUEFOR ����� ����� defZoneSize*zoneMultBLUEFOR
zoneMultBLUEFOR = 1;
//������� �������:
//"west" - USMC, US Army, CDF, Rangers and etc.
//"east" - MSV, TA, CDKZ and etc.
//"resistance" - NAPA, Peaple of Takistan, PMC, UN and etc
//"civilian"
sideREDFOR = "east";
sideBLUEFOR = "west";
//����� ������� ����� ����������� � ��������� � ������/���������
//���������� ��������: STR_ru_call, STR_ruspn_call, STR_usmc_call, STR_usarmy_call, STR_75th_call, STR_napa_call, STR_ta_call, STR_cdkz_call, STR_pot_call, STR_CDF_call
//����� �������� ���� � stringtable.xml
titleREDFOR = $STR_ru_call;
titleBLUEFOR = $STR_usarmy_call;

//���� � ����� �� ������ �������� ��������� ������������ � _domiMult � ��������������� ������� ��������� ������������ ��������� ������ ������ ����������
domiMult = 3;
//����������� ���������� ������ �����. ���� ������� ������ n*(��������� ����) ����� ��������
RFRetreat = 0.2;
//����������� ���������� ������ �������. ���� ������� ������ n*(��������� ����) ������� ��������
BFRetreat = 0.2;