CREATE TABLE IF not exists organization(
	ID BIGINT  NOT NULL PRIMARY KEY unique AUTO_INCREMENT,
	NAME VARCHAR(255) NOT NULL unique,
	ADRESS VARCHAR(255) NOT NULL,
	TELEPHONE VARCHAR(100),
	UNP VARCHAR(50),
	DESCRIPTION VARCHAR(255) NOT NULL
);

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО "Бобруйский мясокомбинат"', '213823, г. Бобруйск, ул. К.Маркса, 333',
 '+375-225-474671', '', 'Колбаса, копчености, мясные полуфабрикаты, пищевые и технические жиры');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО "Беларусьрезинотехника"', 'г. Бобруйск, ул. Минская, 102',
 '+375-225-716978', '', 'Резиновые технические изделия');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО "Белшина"', 'г. Бобруйск, Минское шоссе, 4', '+375-225-410101', '', 'Шины, покрышки');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('Бобруйское унитарное коммунальное дочернее предприятие по обслуживанию жилищного
 фонда Ленинского района', '213827, г. Бобруйск, ул. Советская, 118', '+375-225-705513', '',
 'Обслуживание жилищного фонда');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('Ресторан "Красный Дракон"', 'г. Бобруйск, ул. Октябрьская, 96', '+375-29-6070491', '',
'Холодные закуски, горячие блюда, гарниры, десерты');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('"Алмаз-Люкс"', 'г. Бобруйск, ул. Спартаковская, 7 к. 2', '+375-225-771517', '',
'Изготовление зеркал, стеклоизделий и мебели из стекла');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ЗАО "Бобруйскмебель"', 'г. Бобруйск, ул. Новошоссейная, 2',
'+375-225-474813', '', 'Мебель из березы, сосны и дуба');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('Автовокзал Бобруйск', '213819, г. Бобруйск, ул. Станционная, 5',
'114, +375-225-454422', '', 'Пригородные и междугородние автомобильные перевозки');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('Железно-дорожный вокзал станции "Бобруйск"', 'г. Бобруйск, ул. Железнодорожная, 13',
'105', '', 'Пассажирские перевозки');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('Такси "БИ-БИ"', '213809, г. Бобруйск, 50 лет ВЛКСМ, 35',
'7879', '', 'Такси, пассажирские перевозки');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('КМК-Инвест. Завод ЖБИ', '213810, г. Бобруйск, ул. Западная, 10',
'+375-29-1800520, +375-225-724852', '790672425', 'Производство железобетонных конструкций
 системы КУБ (каркас универсальный безригельный)');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО Отель "Турист"', 'г. Бобруйск, ул. Войкова, 20',
'+375-225-435200, +375-225-436191', '790362376', 'Гостиничный комплекс (гостиница, ресторан, караоке-бар, конференц-зал,
 зал для переговоров, Spa-Салон, косметический кабинет, боулинг, бильярд, финские сауны,
 тренажерный зал), экскурсии по Беларуси, медицинский туризм, трансфер');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('КПД. Бобруйский завод крупнопанельного домостроения', '213822, г. Бобруйск, ул. Минская, 130',
'375-225-732330, +375-225-726136', '', 'Производство железобетонных изделий и
 конструкций. Строительство жилых зданий и домов');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО "Бобруйсктрикотаж"', 'г. Бобруйск, ул. Первомайская, 40',
'+375-225-709711', '700091263', 'Женская, мужская, детская, специализированная одежда из трикотажа');

INSERT IGNORE INTO organization (NAME, ADRESS, TELEPHONE, UNP, DESCRIPTION) 
VALUES ('ОАО "ТАиМ"', 'г. Бобруйск, ул. М. Гоголя, 177', 
'+375-225-434547, +375-225-740406', '700067480', 'Производство тормозной аппаратуры и механизмов, рычаги регулировочные,
 ресиверы, подушки виброизоляционные, головки соединительные, гайки колесные,
 воздухораспределители, краны ручного управления, ресиверы, подъемники, шарниры, шланги тормозные,
 кулаки разжимные, фильтры, камеры, редукторы и другое');
