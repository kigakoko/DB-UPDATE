update film
set rental_duration = 21, rental_rate = 9.99
where upper(title) = upper('The Hangover');

update customer
set first_name = 'Tsimafey',
    last_name = 'Kurapatau',
    email = 'kurapatau.tsimafey@student.ehu.lt',
    address_id = 5,
  store_id = 3
where customer_id = 4
    and (select count(*) from rental where customer_id = 4) >= 10
    and (select count(*) from payment where customer_id = 4) >= 10;


update customer
set create_date = current_date
where customer_id = 4