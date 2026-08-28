drop database db_portaldoaluno;
create database db_portaldoaluno;
use db_portaldoaluno;


create table tb_alunos(
cd_aluno INT NOT NULL auto_increment PRIMARY KEY, 
ds_rm INT NOT NULL,
nm_aluno varchar(80) NOT NULL,
ds_email varchar(120) NOT NULL
);

create table tb_professores(
cd_professor INT NOT NULL auto_increment PRIMARY KEY,
nm_professor varchar(80) NOT NULL,
ds_email varchar(120) NOT NULL,
ds_site varchar(80),
ds_lattes varchar(80)
);

create table tb_materias(
cd_materia INT NOT NULL auto_increment PRIMARY KEY,
nm_materia varchar(80) NOT NULL
);

create table tb_professores_materias(
cd_professor INT NOT NULL,
cd_materia INT NOT NULL,

PRIMARY KEY (cd_professor, cd_materia),
FOREIGN KEY (cd_professor) REFERENCES tb_professores(cd_professor),
FOREIGN KEY (cd_materia) REFERENCES tb_materias(cd_materia)
);

INSERT INTO tb_alunos (ds_rm, nm_aluno, ds_email) VALUES
(25099, 'Brenno', 'brenno@gmail.com'),
(25072, 'Dandara', 'dandaranavarro2@gmail.com'),
(25130, 'Nicollas', 'nicollas.mello01@aluno.cps.sp.gov.br'),
(25048, 'Matheus', 'matheus.lima45@aluno.cps.sp.gov.br'),
(26213, 'Luan', 'luan.costa4@aluno.cps.sp.gov.br'),
(25283, 'Lucas Cintra dos Reis', 'lcintra2010@gmail.com'),
(25200, 'Pedro Henrique França Ribeiro', 'pedro.ribeiro34@aluno.cps.sp.gov.br'),
(25079, 'Talita Macedo de Oliveira', 'talita.oliveira9157@gmail.com'),
(25027, 'Gustavo', 'gustavinhoale15@gmail.com'),
(25139, 'Davi Santos Inácio Araújo', 'davi.araujo12@aluno.cps.sp.gov.br'),
(25100, 'Bruna', 'bpaschotto@gmail.com'),
(25137, 'Higa', 'matheusrossihigaaa@gmail.com'),
(26233, 'Karoliny', 'karoliny.menezess@gmail.com'),
(25093, 'LK', 'lucas.costa41@aluno.cps.sp.gov.br'),
(25062, 'Guilherme Café', 'guizitolevi@gmail.com'),
(25094, 'Levi', 'levi.antoniassi@gmail.com'),
(25208, 'Giovanna', 'borgesdesouzasantosgi@gmail.com'),
(25185, 'Matheus Vittoretti Amoroso da Costa', 'matheus.costa35@aluno.cps.sp.gov.br'),
(25064, 'Thiago Camilo', 'thiagodscamilo@gmail.com'),
(25056, 'Kaio', 'kaionovais27@gmail.com'),
(25090, 'Matheus Rocha Silva', 'matheus.rocha.silva.2010@gmail.com'),
(25105, 'Marco', 'marco.pinho@aluno.cps.sp.gov.br'),
(25182, 'João Victor Rodrigues', 'joegao121@gmail.com'),
(25191, 'Luccas Santos Barbosa', 'luccas.barbosa@aluno.cps.sp.gov.br'),
(25163, 'Ricard', 'ricardhenriqu@gmail.com'),
(25199, 'Lucas de Lorena Lima', 'lucaslorenalima892@gmail.com'),
(25212, 'Bruno', 'bruno.conceicao01@aluno.cps.sp.gov.br'),
(26230, 'Murilo', 'murilodeoliveirachaga@gmail.com'),
(25213, 'Arthur', 'arthur.paixao01@aluno.cps.sp.gov.br'),
(25172, 'Guilherme Mendes', 'guilherme.oliveira142@aluno.cps.sp.gov.br'); 

 INSERT INTO tb_professores (nm_professor, ds_email, ds_site, ds_lattes) VALUES
('AUGUSTO FABIANO ABRANCHES', 'augusto.abranches@professor.cps.sp.gov.br', NULL, NULL),
('CELSO APARECIDO DA COSTA', 'celso.costa@professor.cps.sp.gov.br', 'www.profcelsocosta.com.br', 'lattes.cnpq.br/1557249645875547'),
('CLAUDIO ROBERTO DE VASCONCELLOS MOREIRA', 'claudio.moreira@professor.cps.sp.gov.br', NULL, NULL),
('DIMORIE SILVA DE OLIVEIRA', 'dimorie.oliveira@professor.cps.sp.gov.br', NULL, NULL),
('IVAN DOS SANTOS', 'ivan.santos@professor.cps.sp.gov.br', NULL, NULL),
('JOSE ADRIANO DE BARROS', 'jose.barros@professor.cps.sp.gov.br', NULL, NULL),
('JULIO CESAR MENEZES BORGES', 'julio.borges@professor.cps.sp.gov.br', NULL, NULL),
('MATHEUS CALIXTO DE OLIVEIRA', 'matheus.oliveira@professor.cps.sp.gov.br', NULL, NULL),
('MEIRE MAMEDE', 'meire.mamede@professor.cps.sp.gov.br', NULL, NULL),
('OSWALDO LUIZ PAQUIER BERTOLI', 'oswaldo.bertoli@professor.cps.sp.gov.br', NULL, NULL),
('PATRICIA AUGUSTO CARLOS', 'patricia.carlos@professor.cps.sp.gov.br', NULL, NULL),
('RODRIGO FERRAZ', 'rodrigo.ferraz@professor.cps.sp.gov.br', NULL, NULL),
('WILLIANS SOUZA DE OLIVEIRA', 'williams.oliveira@professor.cps.sp.gov.br', NULL, NULL); 

 INSERT INTO tb_materias (nm_materia) VALUES
('LÍNGUA PORTUGUESA'),
('LÍNGUA INGLESA'),
('EDUCAÇÃO FÍSICA'),
('MATEMÁTICA'),
('FÍSICA'),
('QUÍMICA'),
('BIOLOGIA'),
('HISTÓRIA'),
('GEOGRAFIA'),
('PROGRAMAÇÃO WEB II'),
('BANCO DE DADOS II'),
('DESENVOLVIMENTO DE SISTEMAS'),
('ÉTICA E CIDADANIA ORGANIZACIONAL'),
('PROGRAMAÇÃO DE APLICATIVOS MOBILE I'); 

INSERT INTO tb_professores_materias (cd_professor, cd_materia) VALUES
-- Meire = Língua Portuguesa
(9, 1),
-- Patricia = Língua Inglesa
(11, 2),
-- Willians = Educação Física
(13, 3),
-- Claudio = Matemática
(3, 4),
-- Celso = Física
(2, 5),
-- Jose Adriano = Química
(6, 6),
-- Julio = Biologia
(7, 7),
-- Ivan = História
(5, 8),
-- Rodrigo = Geografia
(12, 9),
-- Dimorie = Ética
(4, 13),
-- Matheus + Oswaldo = Programação Web II
(8, 10),
(10, 10),
-- Matheus + Oswaldo = Banco de Dados II
(8, 11),
(10, 11),
-- Matheus + Oswaldo = Desenvolvimento de Sistemas
(8, 12),
(10, 12),
-- Matheus + Augusto = Mobile I
(8, 14),
(1, 14);
