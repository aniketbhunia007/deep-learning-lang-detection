CREATE OR REPLACE VIEW VPI.VIEW_CACHE_LOCK AS
SELECT
	L.SID,
	DECODE(L.LMODE, 0, 'None', 1, 'Null', 2, 'Row-S', 3, 'Row-X', 4, 'Read', 5, 'S/Row-X', 6, 'Refresh')	AS HELD_LOCK,
	DECODE(L.REQUEST, 0, 'None', 1, 'Null', 2, 'Row-S', 3, 'Row-X', 4, 'Read', 5, 'S/Row-X', 6, 'Refresh')	AS REQUEST_LOCK,
	TO_CHAR(TRUNC(L.CTIME / 86400)) || 'D ' || TO_CHAR(TO_DATE(MOD(L.CTIME, 86400), 'SSSSS'), 'HH24:MI:SS')	AS TIME_SPAN,
	L.CTIME,
	L.BLOCK,
	C.CACHE_ID,
	C.CACHE_EXPIRY,
	C.REFRESH_START,
	C.PROGRESS_ID,
	C.REFRESH_END
FROM
	V$LOCK						L,
	SYS.DBMS_LOCK_ALLOCATED		A,
	VPI.CACHE_CONTROL			C
WHERE
		L.ID1	= A.LOCKID
	AND	L.TYPE	= 'UL'
	AND	A.NAME	= 'CACHE$' || C.CACHE_ID

WITH READ ONLY;