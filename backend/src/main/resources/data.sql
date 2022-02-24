INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML', 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensage de notificação', TIMESTAMP WITH TIME ZONE '2021-12-19T03:00:00Z', false, 'teste', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Mensage de notificação', TIMESTAMP WITH TIME ZONE '2021-11-19T03:00:00Z', true, 'teste', 2);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos comecar', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos finalizar', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do capitulo 1', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=_hZf1teRFNg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do capitulo 1', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=_hZf1teRFNg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do capitulo 1', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de apoio: abc', 'https://www.youtube.com/watch?v=_hZf1teRFNg');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do capitulo 1', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Realize a tarefa', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-25T03:00:00Z');	

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);

INSETO INTO tb_deliver(uri, moment, status, feedback, correct_Count, lesson_id, offer_id, user_id) VALUES ('https://github.com/JonatasFO/bds-dslearn', TIMESTAMP WITH TIME ZONE '2020-11-27T03:00:00Z, 0, null, null, 4, 1, 1);

INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 1', 'Corpo do topico 1', TIMESTAMP WITH TIME ZONE '2020-12-12T03:00:00Z', 1, 1, 1);
INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 2', 'Corpo do topico 2', TIMESTAMP WITH TIME ZONE '2020-12-13T03:00:00Z', 2, 1, 1);
INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 3', 'Corpo do topico 3', TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z', 2, 1, 1);
INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 4', 'Corpo do topico 4', TIMESTAMP WITH TIME ZONE '2020-12-15T03:00:00Z', 1, 1, 2);
INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 5', 'Corpo do topico 5', TIMESTAMP WITH TIME ZONE '2020-12-16T03:00:00Z', 1, 1, 2);
INSERT INTO tb_topic(title, body, moment, auhor_id, offer_id, lesson_id) VALUES ('Titulo do topico 6', 'Corpo do topico 6', TIMESTAMP WITH TIME ZONE '2020-12-17T03:00:00Z', 2, 1, 3);

INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (1, 2);
INSERT INTO tb_topic_likes(topic_id, user_id) VALUES (2, 1);




