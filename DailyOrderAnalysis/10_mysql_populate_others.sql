/* Insert all 2000 customers */
INSERT INTO customer_address (customer_id, address_id, status_id)
    SELECT c.customer_id,
        (SELECT address_id 
         FROM address 
         ORDER BY RAND() 
         LIMIT 1),
        1
    FROM customer c;
