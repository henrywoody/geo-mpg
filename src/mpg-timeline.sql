CREATE OR REPLACE FUNCTION mpg_timeline()
RETURNS table (
    purchase_date DATE,
    miles_travelled DOUBLE PRECISION,
    gallons_purchased DOUBLE PRECISION,
    mpg DOUBLE PRECISION
)
AS $$
BEGIN
    RETURN QUERY SELECT
        t.*,
        t.miles_travelled / t.gallons_purchased AS mpg
    FROM (
        SELECT
            fuel_purchase.purchase_date,
            fuel_purchase.car_mileage - LAG(fuel_purchase.car_mileage) OVER (ORDER BY fuel_purchase.car_mileage) AS miles_travelled,
            fuel_purchase.gallons_purchased
        FROM
            fuel_purchase
    ) AS t;
END;
$$ LANGUAGE plpgsql;
