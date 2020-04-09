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
seraquatico varchar(5),
seraereo varchar(4),
possuipernas varchar(4),
hiberna varchar(4),
rotulodeclasse varchar(20)
) default charset = utf8mb4;

/*INSERÇÃO DOS DADOS DA TABELA*/

insert into vertebrados values
('Humano', 'Sangue quente', 'Cabelo', 'Sim', 'Não', 'Não', 'Sim', 'Não', 'Mamífero'),
('Píton', 'Sangue frio', 'Escamas', 'Não', 'Não', 'Não', 'Não', 'Sim', 'Réptil'),
('Salmão', 'Sangue frio', 'Escamas', 'Não', 'Sim', 'Não', 'Não', 'Não', 'Peixe'),
('Baleia', 'Sangue quente', 'Cabelo', 'Sim', 'Sim', 'Não', 'Não', 'Não', 'Mamífero'),
('Sapo', 'Sangue frio', 'Nenhuma', 'Não', 'Sim', 'Não', 'Sim', 'Sim', 'Anfíbio'),
('Dragão de Komodo', 'Sangue frio', 'Escamas', 'Não', 'Não', 'Não', 'Sim', 'Não', 'Réptil'),
('Morcego', 'Sangue quente', 'Cabelo', 'Sim', 'Não', 'Sim', 'Sim', 'Sim', 'Mamífero'),
('Pomba', 'Sangue quente', 'Penas', 'Não', 'Não', 'Sim', 'Sim', 'Não', 'Ave'),
('Gato', 'Sangue quente', 'Pelo', 'Sim', 'Não', 'Não', 'Sim', 'Não', 'Mamífero'),
('Leopardo', 'Sangue frio', 'Pelo', 'Sim', 'Sim', 'Não', 'Sim', 'Não', 'Mamífero'),
('Tubarão', 'Sangue frio', 'Escamas', 'Não', 'Sim', 'Não', 'Não', 'Não', 'Peixe'),
('Tartaruga', 'Sangue frio', 'Escamas', 'Não', 'Semi', 'Não', 'Sim', 'Não', 'Réptil'),
('Pinguim', 'Sangue quente', 'Penas', 'Não', 'Semi', 'Não', 'Sim', 'Não', 'Ave'),
('Porco-espinho', 'Sangue quente', 'Espinhos', 'Sim', 'Não', 'Não', 'Sim', 'Sim', 'Mamífero'),
('Enguia', 'Sangue frio', 'Escamas', 'Não', 'Sim', 'Não', 'Não', 'Não', 'Peixe'),
('Salamandra', 'Sangue frio', 'Nenhuma', 'Não', 'Semi', 'Não', 'Sim', 'Sim', 'Anfíbio');

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

/*ATUALIZANDO O SANGUE DO LEOPARDO PARA QUENTE*/

update vertebrados
set temperaturacorporal = 'Sangue quente'
where nome = 'Leopardo';

select * from vertebrados;