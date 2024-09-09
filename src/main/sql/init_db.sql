
CREATE TABLE IF NOT EXISTS "Currencies" (
	"ID"	INTEGER,
	"Code"	VARCHAR(50) UNIQUE,
	"FullName"	VARCHAR(50),
	"Sign"	VARCHAR(50),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "ExchangeRates" (
	"ID"	INTEGER,
	"BaseCurrencyId"	INT,
	"TargetCurrencyId"	INT,
	"Rate"	DECIMAL(10, 6),
	CONSTRAINT "CurrencyPair" UNIQUE("BaseCurrencyId","TargetCurrencyId"),
	PRIMARY KEY("ID" AUTOINCREMENT),
	FOREIGN KEY("BaseCurrencyId") REFERENCES "Currencies"("ID"),
	FOREIGN KEY("TargetCurrencyId") REFERENCES "Currencies"("ID")
);
INSERT INTO "Currencies" VALUES (1,'AUD','Australian dollar','A$'),
 (2,'BYN','Belarussian Ruble','Br'),
 (3,'USD','US Dollar','$'),
 (4,'RUB','Russian Ruble','₽'),
 (5,'EUR','EURO','€');
INSERT INTO "ExchangeRates" VALUES (1,3,4,'89,7'),
 (2,3,1,'1,5'),
 (3,3,2,'3,27'),
 (4,3,5,'0,95'),
 (5,4,2,'0,036'),
 (6,4,5,'100,35');
