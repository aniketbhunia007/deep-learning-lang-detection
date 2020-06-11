
  CREATE OR REPLACE  VIEW HV_NAV_COMPUTATION (SCHEME, SCHCLASS, SCH_AUM_CR, SCH_UNITS_CR, AUM_CR, UNITS_CR, NAV, TOTAL_EXPENSE, PLANWISE_INCOME, MGMT_RECUR_EXP, NET_ADDITION_PLANWISE, NAV_MOV, MANUAL_CURRENT_DAY_NAV, WKNAV_SCHEME, WEEKEND_DT, SCHEME_NAME, NAME, TOTAL_INCOME) AS 
  SELECT hv_aum_units_nav.SCHEME,
  hv_aum_units_nav.SCHCLASS,
  SCH_AUM.SCH_AUM_Cr,
  SCH_AUM.SCH_UNITS_Cr,
  ROUND((hv_aum_units_nav.LNA             /10000000),8) AUM_Cr,
  ROUND((NVL(hv_aum_units_nav.ACNT_UNIT,0)/10000000),8) UNITS_Cr,
  ROUND(hv_aum_units_nav.NAV,8) NAV,
  HV_TOTAL_EXPENSE.TOTAL_EXPENSE,
  -- ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0)* ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000 PLANWISE_INCOME,
  Decode(SCH_AUM.SCH_AUM_Cr,0,0,ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0)* ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000)PLANWISE_INCOME,
  --(-((hv_aum_units_nav.LNA/10000000) + ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000)* NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0))/365 MGMT_RECUR_EXP,
  decode(SCH_AUM.SCH_AUM_Cr,0,0,(-((hv_aum_units_nav.LNA/10000000) + ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000)* NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0))/365) MGMT_RECUR_EXP,
  --(ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0)          * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* (NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365) NET_ADDITION_PLANWISE,
  decode(SCH_AUM.SCH_AUM_Cr,0,0,(ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0)          * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* (NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365)) NET_ADDITION_PLANWISE,
  --ROUND(( (ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0)  * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* (NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365))/(NVL(hv_aum_units_nav.ACNT_UNIT,0)/10000000),8) NAV_MOV,
  DECODE(SCH_AUM.SCH_AUM_Cr,0,0,ROUND(( (ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* ((NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365)/100))/(NVL(hv_aum_units_nav.ACNT_UNIT,0)/10000000),8))NAV_MOV,
  --(ROUND(( (ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* (NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365))/(NVL(hv_aum_units_nav.ACNT_UNIT,0)/10000000),8)+ hv_aum_units_nav.LAST_NAV) MANUAL_CURRENT_DAY_NAV,
  decode(SCH_AUM.SCH_AUM_Cr,0,0,(ROUND(( (ROUND( (( NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) * ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr),8)/10000000) + -((hv_aum_units_nav.LNA/10000000) + ((( ROUND((hv_aum_units_nav.LNA/10000000),5))/ SCH_AUM.SCH_AUM_Cr)/10000000))* (NVL( HV_TOTAL_EXPENSE.TOTAL_EXPENSE,0)/365))/(NVL(hv_aum_units_nav.ACNT_UNIT,0)/10000000),8)+ hv_aum_units_nav.LAST_NAV)) MANUAL_CURRENT_DAY_NAV,
  hv_aum_units_nav.WKNAV_SCHEME,
  hv_aum_units_nav.WEEKEND_DT,
  hv_aum_units_nav.SCHEME_NAME ,
  hv_aum_units_nav.NAME,
  NVL(SUM(HV_SCHEME_INCOME.TOTAL_AMOUNT),0) Total_income
FROM hv_aum_units_nav,
  HV_SCHEME_INCOME HV_SCHEME_INCOME,
  (SELECT hv_aum_units_nav1.SCHEME,
    SUM(ROUND((NVL(hv_aum_units_nav1.LNA,0)/10000000),8)) SCH_AUM_Cr,
    SUM(ROUND((NVL(hv_aum_units_nav1.ACNT_UNIT,0)/10000000),8)) SCH_UNITS_Cr,
    hv_aum_units_nav1.WEEKEND_DT
  FROM hv_aum_units_nav hv_aum_units_nav1
  GROUP BY SCHEME,
    WEEKEND_DT
  ) SCH_AUM,
  HV_TOTAL_EXPENSE HV_TOTAL_EXPENSE
WHERE hv_aum_units_nav.SCHEME   = HV_TOTAL_EXPENSE.SCHEME
AND hv_aum_units_nav.WEEKEND_DT = SCH_AUM.WEEKEND_DT
AND hv_aum_units_nav.SCHEME     = SCH_AUM.SCHEME
AND HV_SCHEME_INCOME.SCHEME     = hv_aum_units_nav.SCHEME
  --AND hv_aum_units_nav.SCHEME  ='HDFCLI'
  --AND HV_SCHEME_INCOME.VALUE_DATE   = hv_aum_units_nav.WEEKEND_DT
GROUP BY hv_aum_units_nav.SCHEME,
  SCH_AUM.SCH_AUM_Cr,
  SCH_AUM.SCH_UNITS_Cr,
  hv_aum_units_nav.LAST_NET_ASSETS ,
  hv_aum_units_nav.LNA ,
  hv_aum_units_nav.NAV ,
  hv_aum_units_nav.LAST_NAV,
  hv_aum_units_nav.WKNAV_SCHEME,
  hv_aum_units_nav.SCHCLASS,
  hv_aum_units_nav.WEEKEND_DT,
  hv_aum_units_nav.SCHEME_NAME ,
  HV_TOTAL_EXPENSE.TOTAL_EXPENSE,
  hv_aum_units_nav.NAME,
  hv_aum_units_nav.ACNT_UNIT;
 