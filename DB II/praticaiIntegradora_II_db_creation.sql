CREATE TABLE "departamento" (
  "depto_nro" VARCHAR,
  "nome_depto" varchar(100) NOT NULL,
  "localizacao" varchar(100) NOT NULL,
  PRIMARY KEY ("depto_nro")
);

CREATE TABLE "funcionario" (
  "cod_fuc" VARCHAR,
  "nome" varchar(100) NOT NULL,
  "sobrenome" varchar(100) NOT NULL,
  "cargo" varchar(100) NOT NULL,
  "data_alta" DATE NOT NULL,
  "salario" int  NOT NULL,
  "comissao" int  NOT NULL,
  "depto_nro" varchar,
  PRIMARY KEY ("cod_fuc"),
  FOREIGN KEY ("depto_nro") REFERENCES "departamento" ("depto_nro")
);

INSERT INTO departamento VALUES ('D-000-1', 'Software', 'Los Tigres'), ('D-000-2', 'SIstemas', 'Guadalupe'), ('D-000-3', 'Contabilidade', 'La Roca'), ('D-000-4', 'Vendas', 'Plata');

INSERT INTO funcionario VALUES ('E-0001','César','Piñero','Vendedor','2018-05-12 00:00:00',80000,15000,'D-000-4'), ('E-0002','Yosep','Kowaleski','Analista','2015-07-14 00:00:00',140000,0,'D-000-2'),
('E-0003','Mariela','Barrios','Diretor','2014-06-05 00:00:00',185000,0,'D-000-3'), ('E-0004','Jonathan','Aguillera','Vendedor','2015-06-03 00:00:00',85000,10000,'D-000-4'),
('E-0005','Daniel','Brezezicki','Vendedor','2018-03-03 00:00:00',83000,10000,'D-000-4'), ('E-0006','Mito','Barchuk','Presidente','2014-06-05 00:00:00',190000,0,'D-000-3'),
('E-0007','Emilio','Galarza','Desenvolvedor','2014-08-02 00:00:00',60000,0,'D-000-1');
