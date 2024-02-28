SELECT sz.*, f.SZOBA_FK,
        --új oszlop
        IIF(sz.KLIMAS = 'i', 25000, 20000)   
FROM Szoba sz LEFT JOIN Foglalas f ON sz.SZOBA_ID = f.SZOBA_FK --On baloldalán lévők közül mindegyik megjelenik, még a páratlanok is
WHERE f.SZOBA_FK IS NULL