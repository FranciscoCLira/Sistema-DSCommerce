-- Conforme Modelo de imagem - Instância dos dados para seeding

-- Categorias
INSERT INTO tb_categoria (id, descricao) VALUES (1, 'Curso');
INSERT INTO tb_categoria (id, descricao) VALUES (2, 'Oficina');
--
-- Participantes
INSERT INTO tb_participante (id, nome, email) VALUES (1, 'José Silva', 'jose@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO tb_participante (id, nome, email) VALUES (4, 'Teresa Silva', 'teresa@gmail.com');

-- Atividades (não inclui bloco_id, pois o relacionamento é 1:N e o FK está em tb_bloco)
INSERT INTO tb_atividade (id, nome, descricao, preco, categoria_id) VALUES (1, 'Curso de HTML', 'Aprenda HTML de forma prática', 80.00, 1);
INSERT INTO tb_atividade (id, nome, descricao, preco, categoria_id) VALUES (2, 'Oficina de Github', 'Controle versões de seus projetos', 50.00, 2);

-- Blocos (inclui o campo atividade_id - FK da tb_atividade)
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (1, '2017-09-25 08:00:00', '2017-09-25 11:00:00', 1);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (2, '2017-09-25 14:00:00', '2017-09-25 18:00:00', 2);
INSERT INTO tb_bloco (id, inicio, fim, atividade_id) VALUES (3, '2017-09-26 08:00:00', '2017-09-26 11:00:00', 2); 

-- Tabela com participante_id e atividade_id
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (1, 1); -- José Silva no Curso de HTML
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (1, 2); -- José Silva na Oficina de Github
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (2, 1); -- Tiago Faria no Curso de HTML
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (3, 1); -- Maria do Rosário no Curso de HTML
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (3, 2); -- Maria do Rosário na Oficina de Github
INSERT INTO tb_participante_atividade (participante_id, atividade_id) VALUES (4, 2); -- Teresa Silva na Oficina de Github