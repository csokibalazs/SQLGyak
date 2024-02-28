SELECT szh.TIPUS,
    YEAR(f.METTOL) AS 'Év',
    MONTH(f.METTOL) AS 'Hónap',
    --hány foglalás
    COUNT(*)
FROM Foglalas f LEFT JOIN Szoba sz ON f.SZOBA_FK = sz.SZOBA_ID 
                RIGHT JOIN Szallashely szh ON sz.SZALLAS_FK = szh.SZALLAS_ID

WHERE DATEDIFF(DAY, f.MEDDIG, f.METTOL)>=5 

GROUP BY szh.TIPUS, YEAR(f.METTOL), MONTH(f.METTOL)
