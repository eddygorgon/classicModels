SELECT * from products
where not exists ( SELECT * FROM orderdetails
                   WHERE products.productCode = orderdetails.productCode )