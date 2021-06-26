
-- +migrate Up

ALTER TABLE vehicle_maintenance_event
    ADD COLUMN price DOUBLE PRECISION;

UPDATE vehicle_maintenance_event SET price = 0.0;

ALTER TABLE vehicle_maintenance_event
    ALTER COLUMN price SET NOT NULL;

ALTER TABLE vehicle_maintenance_event
    RENAME TO maintenance_event;

-- +migrate Down

ALTER TABLE maintenance_event
    RENAME TO vehicle_maintenance_event;

ALTER TABLE vehicle_maintenance_event
    ALTER COLUMN price DROP NOT NULL;

ALTER TABLE vehicle_maintenance_event
    DROP COLUMN price;