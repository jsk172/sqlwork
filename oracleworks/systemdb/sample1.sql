-- sample(스키마, cart테이블)
CREATE TABLE cart(
    item VARCHAR2(20),
    price NUMBER
);

INSERT INTO cart VALUES('콩나물', 2000);

select * from cart;