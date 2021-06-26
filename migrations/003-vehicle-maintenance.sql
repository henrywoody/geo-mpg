
-- +migrate Up

CREATE TABLE vehicle_maintenance_event (
    id SERIAL PRIMARY KEY,
    event_type TEXT NOT NULL,
    event_date DATE NOT NULL,
    vehicle_id INT NOT NULL REFERENCES vehicle (id),
    vehicle_mileage DOUBLE PRECISION NOT NULL,
    notes TEXT
);

-- +migrate Down

DROP TABLE vehicle_maintenance_event;