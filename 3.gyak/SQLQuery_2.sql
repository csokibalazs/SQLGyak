SElect *, 
    CASE 
        WHEN MONTH(METTOL) IN (6, 7, 8) THEN 'igen'
        ELSE 'nem'
    END AS 'Nyári-e'
from Foglalas
where UGYFEL_FK = 'laszlo2' AND GYERMEK_SZAM = 0