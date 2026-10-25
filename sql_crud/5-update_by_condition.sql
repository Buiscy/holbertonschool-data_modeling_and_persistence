UPDATE books
set price = price * 0.9
WHERE genre = 'Tech' AND stock > 5;