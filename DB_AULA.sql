-- COMENTA SOMENTE UMA LINHA
CREATE DATABASE DB_TESTE
USE BD_Aula
go
Create table Cliente
(
cod_Cli int not null,
Nome_Cli varchar(40)not null,
End_Cli varchar(30) not null,
Bai_Cli varchar(20) not null,
Cid_Cli varchar(20) not null,
Uf_Cli char(3) not null,
Tel_Cli varchar(15) null,
Constraint PK_Cliente Primary Key(Cod_Cli)
)

CREATE TABLE NotaFiscal
(
Num_Nota int not null,
Cod_Cli int not null,
Serie_Nota varchar(10) not null,
Emissao_Nota smalldatetime null,
Vtot_Nota SmallMoney not null,
Constraint PK_NotaFiscal Primary Key(Num_Nota),
Constraint FK_Cliente Foreign Key(Cod_Cli) References cliente(Cod_Cli)
)

 Create table Cidade
 (Codcidade varchar(2) not null,
 Nomecidade varchar(40))

 Create table Empregado
 (Nrmatricula int,
 Nome varchar(50),
 Data_demissao datetime,
 Salario float)

 Create table estado
 (cdestado varchar(2) not null,
 Nomeestado varchar(30))
 
 Alter table cidade
 Add primary key(codcidade)

 Alter table cidade
 Add cdestado char(2) not null,
 teste varchar(1) null;

 Alter table cidade --ALTERA A TABELA
 Drop column teste;

Alter table cidade
Alter column cdestado varchar(2); -- ALTERANDO O FORMATO DA CHAVE

Alter table cidade
Drop constraint PK__Cidade__9ED2CA9695BBBD9C; --APAGANDO CHAVE CRIADA PELO BANCO

Alter table cidade
Add constraint pk_codcidade primary key (codcidade); -- Criando a chave com nome proprio pk_codcidade

Alter table estado
Add primary key (cdestado);

Alter table cidade
Add foreign key (cdestado) references estado (cdestado);

Create table ParaApagar (
codigo int,
descricao varchar(80)
)

Drop table ParaApagar

