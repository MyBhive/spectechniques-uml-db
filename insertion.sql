INSERT INTO
  public.category (name)
VALUES
  ('pizza'),
  ('boisson'),
  ('dessert');


INSERT INTO
  public.customer (surname, name, email, password, phone)
VALUES
  (
    'Boby',
    'Lewis',
    'bob27@fakeemail.com',
    '0000',
    '5040302010'
  ),
  (
    'Alphonse',
    'Dupont',
    'fonfon@fakeemail.com',
    '0101',
    '0150024003'
  ),
  (
    'Arthur',
    'jacquin',
    'tutur@fakeemail.com',
    '1234',
    '1122334455'
  ),
  (
    'Lisa',
    'paquerette',
    'lisapak@fakeemail.com',
    '0077',
    '5544332211'
  );


# adresse des clients
INSERT INTO
  public.address (street, zip_code, city, num_client)
VALUES
  (
    '12 rue des champignons',
    86000,
    'Poitiers',
    '1'
  ),
  (
    '5 avenue du doberman',
    86180,
    'Buxerolles',
    '2'
  ),
  (
    '225b avenue jean-pignon',
    86360,
    'Montamisé',
    '3'
  ),
  (
    '3 impasse du vent',
    86000,
    'Poitiers',
    '4'
  );


# adresse des restaurants
INSERT INTO
  public.address (street, zip_code, city)
VALUES
  (
    '25 rue des savons',
    86000,
    'Poitiers'
  ),
  (
    '7a avenue du golden',
    86180,
    'Buxerolles'
  ),
  (
    '2 avenue raoul',
    86360,
    'Montamisé'
  ),
  (
    '99 impasse du soleil',
    86000,
    'Poitiers'
  );



# adresse des employés
INSERT INTO
  public.address (street, zip_code, city)
VALUES
  (
    '1 rue des fouches',
    86000,
    'Poitiers'
  ),
  (
    '18 avenue du bol',
    86180,
    'Buxerolles'
  ),
  (
    '10 avenue cuillère',
    86360,
    'Montamisé'
  ),
  (
    '5 impasse du serviette',
    86000,
    'Poitiers'
  ),
  (
    '3b rue des assiettes',
    86000,
    'Poitiers'
  ),
  (
    '9b avenue du jambono',
    86180,
    'Buxerolles'
  ),
  (
    '3a avenue tsétsé',
    86360,
    'Montamisé'
  ),
  (
    '9 impasse du bide',
    86000,
    'Poitiers'
  ),
  (
    '299 rue du gras',
    86000,
    'Poitiers'
  ),
  (
    '7c avenue du mouchoire',
    86180,
    'Buxerolles'
  ),
  (
    '69 avenue stylo',
    86360,
    'Montamisé'
  ),
  (
    '96 impasse du cornichon',
    86000,
    'Poitiers'
  ),
  (
    '88 rue des olives',
    86000,
    'Poitiers'
  ),
  (
    '18 impasse du roti',
    86000,
    'Poitiers'
  );

INSERT INTO public.status
(advanced)
VALUES
('en attente'),
('En préparation'),
('Prête'),
('En livraison'),
('Livrée'),
('Annulée'),
('Modifiée');

INSERT INTO public.role
(job_status)
VALUES
('Directeur'),
('Manager'),
('pizzaiolo'),
('livreur');

INSERT INTO
  public.restaurant (id_address, name, phone, email)
VALUES
  (
    '6',
    'OC Pizza BuxGo',
    '0549562006',
    'ocpizzabuxgo@fakeemail.com'
  ),
  (
    '7',
    'OC Pizza MontGo',
    '0549562007',
    'ocpizzamontgo@fakeemail.com'
  ),
  (
    '8',
    'OC Pizza PoitGO',
    '0549562008',
    'ocpizzapoitgo@fakeemail.com'
  ),
  (
    '9',
    'OC Pizza Poit86',
    '0549562005',
    'ocpizzapoit86@fakeemail.com'
  );

INSERT INTO public.employee
(surname, name, id_address, id_resto, id_job)
VALUES
('Frank', 'Duschmol', '10', '5','1'),
('Lola', 'Duschmol', '10', '5','1'),
('Raven', 'Martin', '11', '5','2'),
('Sylvie', 'Bambin', '12', '6','2'),
('Julien', 'Folle', '13', '7','2'),
('Sylvain', 'Biztu', '14', '8','2'),
('Lucile', 'Schwarzi', '15', '5','3'),
('Louise', 'Peninon', '16', '6','3'),
('Nico', 'Schok', '17', '7','3'),
('Kevin', 'Astra', '18', '8','3'),
('Charles', 'Fanfan', '19', '5','4'),
('Maho', 'Bidon', '20', '6','4'),
('Owen', 'Artus', '21', '7','4'),
('Aaron', 'Doll', '22', '8','4');


INSERT INTO public.stock
(quantity, unit, id_resto, id_ingredient)
VALUES
('89','unit', '5', '1'),
('2000','cl', '5', '2'),
('3000','g', '5', '3'),
('27','unit', '5', '4'),
('1250','g', '5', '5'),
('78','unit', '6', '1'),
('3500','cl', '6', '2'),
('480','g', '6', '3'),
('7','unit', '6', '4'),
('800','g', '6', '5'),
('110','unit', '7', '1'),
('5500','cl', '7', '2'),
('4100','g', '7', '3'),
('53','unit', '7', '4'),
('1300','g', '7', '5'),
('96','unit', '8', '1'),
('1500','cl', '8', '2'),
('2100','g', '8', '3'),
('16','unit', '8', '4'),
('500','g', '8', '5');


INSERT INTO public.product
(name, price, id_cat)
VALUES
('Margherita', '9.50', 1),
('jambon champignon', '12.50', 1),
('Coca-Cola', '2.00', 2),
('ice tea', '2.00', 2),
('brownie', '5.00', 3),
('glace chocolat', '5.80', 3);



INSERT INTO public.recipe
(product_ref,id_ingredient, quantity)
VALUES
(1, 1, 1),
(1, 2, 150),
(1, 4, 1),
(2, 1, 1),
(2, 2, 150),
(2, 3, 80),
(2, 4, 1),
(2, 5, 60);


INSERT INTO
  public.order_client (
    price,
    order_date,
    id_employee,
    id_address,
    num_client,
    id_status,
    id_resto
  )
VALUES
  (
    '11.50',
    '2020-12-3 19:27:05',
    '7',
    '1',
    '1',
    '2',
    '5'
  ),
  (
    '33.00',
    '2020-12-3 18:15:08',
    '12',
    '2',
    '2',
    '5',
    '6'
  );


INSERT INTO public.order_line
(quantity, product_ref, order_num)
VALUES
(1, 1, 1),
(1, 3, 1),
(2, 1, 2),
(2, 3, 2),
(2, 5, 2);
