
-- +migrate Up

CREATE TABLE fuel_purchase (
    id SERIAL PRIMARY KEY,
    purchase_date DATE NOT NULL,
    car_mileage DOUBLE PRECISION NOT NULL,
    gallons_purchased DOUBLE PRECISION NOT NULL,
    price DOUBLE PRECISION NOT NULL
);

-- +migrate Down

DROP TABLE fuel_purchase;