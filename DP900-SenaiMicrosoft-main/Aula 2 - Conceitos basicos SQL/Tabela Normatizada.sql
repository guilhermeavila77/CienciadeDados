-- Criar novamente a tabela normalizada na primeira forma normal

create table clidp02(
    id_cli number not null primary key,
    pri_nome varchar(30) not null,
    sobrenome varchar(30) not null,
    cep varchar(8) not null,
    numero varchar(5),
    complemento varchar(30)
);

--Criando a tabela de telefones
create table telefones(
    id_cli  number not null,
    tipo varchar(10) not null,
    numero varchar(15) not null,
    foreign key (id_cli) references clidp02(id_cli)
);

describe clidp02;
describe telefones;

insert into CLIDP02 values 
(1, 'Ana', 'Silva', '18498555','184','casa');
insert into CLIDP02 values 
(2, 'Clara', 'Voltovsk', '18931545','174','apto');
insert into CLIDP02 values 
(3, 'Renata', 'Peira', '93198555','194',NULL);