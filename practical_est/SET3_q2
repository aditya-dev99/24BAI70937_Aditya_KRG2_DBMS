
CREATE OR REPLACE FUNCTION update_stock()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Products
    SET stock_qty = stock_qty - NEW.qty
    WHERE prod_id = NEW.prod_id;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_update_stock
AFTER INSERT ON Orders
FOR EACH ROW
EXECUTE FUNCTION update_stock();
