/*CRIAÇÃO DO BANCO DE DADOS*/

create database fc
default character set utf8mb4
default collate utf8mb4_general_ci;

/*CRIAÇÃO DA TABELA*/

create table vertebrados (
nome varchar(20),
temperaturacorporal varchar(20),
coberturadepele varchar(20),
dacria varchar(4),
seraquatico int,
seraereo varchar(4),
possuipernas varchar(4),
hiberna varchar(4),
rotulodeclasse varchar(20)
) default charset = utf8mb4;

/*INSERÇÃO DOS DADOS DA TABELA*/

insert into vertebrados values
('Humano', 'Sangue quente', 'Cabelo', 'Sim', '0', 'Não', 'Sim', 'Não', 'Mamífero'),
('Píton', 'Sangue frio', 'Escamas', 'Não', '0', 'Não', 'Não', 'Sim', 'Réptil'),
('Salmão', 'Sangue frio', 'Escamas', 'Não', '1', 'Não', 'Não', 'Não', 'Peixe'),
('Baleia', 'Sangue quente', 'Cabelo', 'Sim', '1', 'Não', 'Não', 'Não', 'Mamífero'),
('Sapo', 'Sangue frio', 'Nenhuma', 'Não', '1', 'Não', 'Sim', 'Sim', 'Anfíbio'),
('Dragão de Komodo', 'Sangue frio', 'Escamas', 'Não', '0', 'Não', 'Sim', 'Não', 'Réptil'),
('Morcego', 'Sangue quente', 'Cabelo', 'Sim', '0', 'Sim', 'Sim', 'Sim', 'Mamífero'),
('Pomba', 'Sangue quente', 'Penas', 'Não', '0', 'Sim', 'Sim', 'Não', 'Ave'),
('Gato', 'Sangue quente', 'Pelo', 'Sim', '0', 'Não', 'Sim', 'Não', 'Mamífero'),
('Leopardo', 'Sangue frio', 'Pelo', 'Sim', '1', 'Não', 'Sim', 'Não', 'Mamífero'),
('Tubarão', 'Sangue frio', 'Escamas', 'Não', '1', 'Não', 'Não', 'Não', 'Peixe'),
('Tartaruga', 'Sangue frio', 'Escamas', 'Não', '2', 'Não', 'Sim', 'Não', 'Réptil'),
('Pinguim', 'Sangue quente', 'Penas', 'Não', '2', 'Não', 'Sim', 'Não', 'Ave'),
('Porco-espinho', 'Sangue quente', 'Espinhos', 'Sim', '0', 'Não', 'Sim', 'Sim', 'Mamífero'),
('Enguia', 'Sangue frio', 'Escamas', 'Não', '1', 'Não', 'Não', 'Não', 'Peixe'),
('Salamandra', 'Sangue frio', 'Nenhuma', 'Não', '2', 'Não', 'Sim', 'Sim', 'Anfíbio');

/*VISUALIZAÇÃO DE TODA A TABELA*/

select * from vertebrados;

/*SELEÇÃO DOS ANIMAIS DA TABELA*/

select nome from vertebrados;

/*SELEÇÃO SOMENTE DOS ANIMAIS COM RÓTULO AVE*/

select nome from vertebrados 
where rotulodeclasse = 'Ave';

/*SELEÇÃO APENAS DOS ANIMAIS QUE NÃO SÃO AQUÁTICOS E POSSUEM PERNAS*/

select * from vertebrados 
where seraquatico = 'Não' and possuipernas = 'Sim';

/* MODIFICAÇÃO DO "seraquatico int" PARA "serquatico varchar(5)"*/

alter table vertebrados
modify column seraquatico varchar(5);

/*ATUALIZANDO "0" PARA "NÃO"*/

update vertebrados
set seraquatico = 'Não'
where seraquatico = '0';

/*ATUALIZANDO "1" PARA "SIM"*/

update vertebrados
set seraquatico = 'Sim'
where seraquatico = '1';

/*ATUALIZANDO "2" PARA "SEMI"*/

update vertebrados
set seraquatico = 'Semi'
where seraquatico = '2';

/*ATUALIZANDO O SANGUE DO LEOPARDO PARA QUENTE*/

update vertebrados
set temperaturacorporal = 'Sangue quente'
where nome = 'Leopardo';

select * from vertebrados;