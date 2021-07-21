INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('1', 'Java', 'Junior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('2', 'Java', 'Middle');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('3', 'Java', 'Senior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('4', 'C++', 'Junior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('5', 'C#', 'Junior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('6', 'JS', 'Junior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('7', 'C++', 'Middle');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('8', 'C++', 'Senior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('9', 'C#', 'Middle');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('10', 'JS', 'Middle');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('11', 'C#', 'Senior');
INSERT INTO `mydb`.`skils` (`id`, `name`, `level`) VALUES ('12', 'JS', 'Senior');

INSERT INTO `mydb`.`developers` (`id`, `name`, `surname`, `age`, `gender`) VALUES ('1', 'Vitaliy', 'Tkachuk', '36', 'M');
INSERT INTO `mydb`.`developers` (`id`, `name`, `surname`, `age`, `gender`) VALUES ('2', 'Oleksiy', 'Krutko', '42', 'M');
INSERT INTO `mydb`.`developers` (`id`, `name`, `surname`, `age`, `gender`) VALUES ('3', 'Alex', 'Dorosh', '32', 'M');
INSERT INTO `mydb`.`developers` (`id`, `name`, `surname`, `age`, `gender`) VALUES ('4', 'Vova', 'Lysenko', '28', 'M');
INSERT INTO `mydb`.`developers` (`id`, `name`, `surname`, `age`, `gender`) VALUES ('5', 'Olga', 'Kurylenko', '33', 'W');

INSERT INTO `mydb`.`companies` (`id`, `name`,`safer`) VALUES ('1', 'SoftServe', 'Software');
INSERT INTO `mydb`.`companies` (`id`, `name`,`safer`) VALUES ('2', 'GoIt', 'Software');
INSERT INTO `mydb`.`companies` (`id`, `name`,`safer`) VALUES ('3', 'Epam', 'Software');

INSERT INTO `mydb`.`customers` (`id`, `name`, `safer`) VALUES ('1', 'ATB', 'trade');
INSERT INTO `mydb`.`customers` (`id`, `name`, `safer`) VALUES ('2', 'Silpo', 'trade');
INSERT INTO `mydb`.`customers` (`id`, `name`, `safer`) VALUES ('3', 'Varus', 'trade');
INSERT INTO `mydb`.`customers` (`id`, `name`, `safer`) VALUES ('4', 'Interpipe', 'metallurgy');

INSERT INTO `mydb`.`projects` (`id`, `name`) VALUES ('1', 'Project1');
INSERT INTO `mydb`.`projects` (`id`, `name`) VALUES ('2', 'Project2');
INSERT INTO `mydb`.`projects` (`id`, `name`) VALUES ('3', 'Project3');

INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('1', '1', '1');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('2', '1', '7');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('3', '2', '2');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('4', '2', '10');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('5', '3', '3');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('6', '3', '5');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('7', '4', '12');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('8', '5', '9');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('9', '5', '3');
INSERT INTO `mydb`.`developers_skils` (`iid`, `developers_id`, `skils_id`) VALUES ('10', '4', '8');

INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('1', '1', '3');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('2', '1', '2');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('3', '2', '1');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('4', '2', '2');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('5', '3', '3');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('6', '3', '1');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('7', '4', '2');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('8', '4', '3');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('9', '5', '3');
INSERT INTO `mydb`.`developers_projects` (`id`, `developers_id`, `projects_id`) VALUES ('10', '5', '1');

INSERT INTO `mydb`.`customers_projects` (`id`, `projects_id`, `customers_id`) VALUES ('1', '1', '3');
INSERT INTO `mydb`.`customers_projects` (`id`, `projects_id`, `customers_id`) VALUES ('2', '2', '4');
INSERT INTO `mydb`.`customers_projects` (`id`, `projects_id`, `customers_id`) VALUES ('3', '3', '1');
INSERT INTO `mydb`.`customers_projects` (`id`, `projects_id`, `customers_id`) VALUES ('4', '3', '2');
INSERT INTO `mydb`.`customers_projects` (`id`, `projects_id`, `customers_id`) VALUES ('5', '2', '2');

INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('1', '1', '2');
INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('2', '1', '3');
INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('3', '2', '1');
INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('4', '2', '3');
INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('5', '3', '1');
INSERT INTO `mydb`.`companies_projects` (`id`, `projects_id`, `companies_id`) VALUES ('6', '4', '3');
