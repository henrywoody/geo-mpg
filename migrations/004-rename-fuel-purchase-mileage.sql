-- +migrate Up

ALTER TABLE fuel_purchase
    RENAME COLUMN car_mileage TO vehicle_mileage;

-- +migrate Down

ALTER TABLE fuel_purchase
    RENAME COLUMN vehicle_mileage TO car_mileage;