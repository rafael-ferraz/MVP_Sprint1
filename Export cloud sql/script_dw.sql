-- dm_uf

DROP TABLE dm_uf;
CREATE TABLE dm_uf(
id_uf INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_uf PRIMARY KEY (id_uf)
);

-- dm_veiculo

DROP TABLE dm_veiculo;
CREATE TABLE dm_veiculo(
id_veiculo INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_veiculo PRIMARY KEY (id_veiculo)
);

-- dm_tracadovia

DROP TABLE dm_tracadovia;
CREATE TABLE dm_tracadovia(
id_tracadovia INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_tracadovia PRIMARY KEY (id_tracadovia)
);

-- dm_causaacidente

DROP TABLE dm_causaacidente;
CREATE TABLE dm_causaacidente(
id_causaacidente INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_causaacidente PRIMARY KEY (id_causaacidente)
);

-- dm_tipoveiculo

DROP TABLE dm_tipoveiculo;
CREATE TABLE dm_tipoveiculo(
id_tipoveiculo INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_tipoveiculo PRIMARY KEY (id_tipoveiculo)
);

-- dm_municipio

DROP TABLE dm_municipio;
CREATE TABLE dm_municipio(
id_municipio INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_municipio PRIMARY KEY (id_municipio)
);

-- dm_tipoacidente

DROP TABLE dm_tipoacidente;
CREATE TABLE dm_tipoacidente(
id_tipoacidente INTEGER NOT NULL,
ds_name VARCHAR(255),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_dm_tipoacidente PRIMARY KEY (id_tipoacidente)
);

-- ft_ocorrencias

DROP TABLE ft_ocorrencias;
CREATE TABLE ft_ocorrencias(
id_ocorrencias INTEGER NOT NULL,
id_uf INTEGER NOT NULL,
id_tracadovia INTEGER NOT NULL,
id_causaacidente INTEGER NOT NULL,
id_municipio INTEGER NOT NULL,
id_tipoacidente INTEGER NOT NULL,
dt_dataocorrencia DATE,
ds_diasemana VARCHAR(50),
ds_horario VARCHAR(25),
int_br INTEGER,
ds_km VARCHAR(50),
ds_classificacao VARCHAR(150),
ds_fasedia VARCHAR(25),
ds_sentidovia VARCHAR(50),
ds_condicaometereologica VARCHAR(50),
ds_tipopista VARCHAR(50),
int_pessoas INTEGER,
int_mortos INTEGER,
int_feridosleves INTEGER,
int_feridosgraves INTEGER,
int_ilesos INTEGER,
int_ignorados INTEGER,
int_feridos INTEGER,
int_veiculos INTEGER,
ds_latitude VARCHAR(50),
ds_longitude VARCHAR(50),
dt_alteracao TIMESTAMP,
CONSTRAINT pk_ft_ocorrencias PRIMARY KEY (id_ocorrencias),
CONSTRAINT fk_dm_uf FOREIGN KEY (id_uf) REFERENCES dm_uf(id_uf),
CONSTRAINT fk_dm_tracadovia FOREIGN KEY (id_tracadovia) REFERENCES dm_tracadovia(id_tracadovia),
CONSTRAINT fk_dm_causaacidente FOREIGN KEY (id_causaacidente) REFERENCES dm_causaacidente(id_causaacidente),
CONSTRAINT fk_dm_municipio FOREIGN KEY (id_municipio) REFERENCES dm_municipio(id_municipio),
CONSTRAINT fk_dm_tipoacidente FOREIGN KEY (id_tipoacidente) REFERENCES dm_tipoacidente(id_tipoacidente)
);