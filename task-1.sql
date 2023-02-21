SELECT products.product_name AS products,
       suppliers.company_name AS company

FROM products
    INNER JOIN suppliers
        ON products.supplier_id = suppliers.supplier_id

ORDER BY products.product_name, suppliers.company_name;