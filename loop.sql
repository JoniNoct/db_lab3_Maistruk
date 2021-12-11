select * from engine_type;
-- create table engine_type_copy as select * from engine_type; 
-- delete from engine_type_copy;
-- select * from engine_type_copy;


DO $$
DECLARE
    en_id   engine_type_copy.engine_id%TYPE;
    en_type engine_type_copy.engine_type%TYPE;

BEGIN
    en_id := 1000;
    en_type := 'Engine_';
    FOR counter IN 1..10
        LOOP
            INSERT INTO engine_type_copy(engine_id, engine_type)
            VALUES (counter + en_id, en_type || counter);
        END LOOP;
END;
$$