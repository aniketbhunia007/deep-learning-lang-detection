
  CREATE OR REPLACE  VIEW HV_INC_EXP (SCHEME, NAV, CNT) AS 
  SELECT SCHEME ,
    AVG(LAST_NET_ASSET) AS NAV,
    COUNT(SCHEME)       AS CNT
  FROM
    (SELECT weeknav.PORTFOLIO         AS SCHEME,
      weeknav.TRANS_DATE              AS WEEKEND_DT,
      SUM(weeknav.NET_ASSETS_INC_EXP) AS LAST_NET_ASSET
    FROM HREP_NAV_SUMMARY_CURR weeknav
    WHERE (weeknav.UNITS_OUTS<>'0')
   -- AND (weeknav.TRANS_DATE BETWEEN '01 APR 2013' AND '30 NOV 2013')
    AND (weeknav.NAV_TYPE <>'FUND')
    GROUP BY weeknav.PORTFOLIO ,
      weeknav.TRANS_DATE ,
      TO_CHAR( weeknav.TRANS_DATE, 'MONTH')
    ORDER BY 1,
      2
    )
    -- WHERE SCHEME = 'HRGESS0113'
  GROUP BY SCHEME;
 
