BEGIN;

ALTER TABLE
    vehicle_maintenance_event
ADD COLUMN
    price DOUBLE PRECISION;

UPDATE vehicle_maintenance_event SET price = 0.0;

ALTER TABLE
    vehicle_maintenance_event
ALTER COLUMN
    price
SET NOT NULL;

ALTER TABLE
    vehicle_maintenance_event
RENAME TO
    maintenance_event

COMMIT;