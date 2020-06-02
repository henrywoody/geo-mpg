CREATE TABLE vehicle (
    id SERIAL PRIMARY KEY,
    vin TEXT,
    make TEXT,
    model TEXT,
    model_year INT,
    name TEXT
);

INSERT INTO
    vehicle (name)
VALUES
    ('My Vehicle');

ALTER TABLE fuel_purchase
ADD COLUMN vehicle_id INT REFERENCES vehicle (id) ON DELETE CASCADE;

UPDATE fuel_purchase SET vehicle_id = 1;

ALTER TABLE fuel_purchase ALTER COLUMN vehicle_id SET NOT NULL;