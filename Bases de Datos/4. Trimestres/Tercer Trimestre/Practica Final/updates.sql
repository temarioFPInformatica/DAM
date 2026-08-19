use bdfarmacia;
ALTER TABLE farmacos ADD COLUMN TIPOF VARCHAR(25);

use bdfarmacia;
ALTER TABLE farmacos 
ADD CONSTRAINT tipof_FK FOREIGN KEY (TIPOF) REFERENCES TIPOFARMACO(TIPOF)
ON DELETE SET NULL ON UPDATE CASCADE;

use bdfarmacia;
UPDATE farmacos
SET preciounidad = 50 WHERE tipof = 'mucolitico' and preciounidad > 50;
UPDATE farmacos
SET preciounidad = 100 WHERE tipof != 'mucolitico' and preciounidad > 100;

use bdfarmacia;
ALTER TABLE enfermos ADD COLUMN importetotal int DEFAULT 0;

use bdfarmacia;
ALTER TABLE ENFERMOS DROP COLUMN DIRE;

