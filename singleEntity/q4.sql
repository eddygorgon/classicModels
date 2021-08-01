# List the product lines that contain 'Cars'.

SELECT productLine FROM ProductLines
WHERE textDescription LIKE '%car%'