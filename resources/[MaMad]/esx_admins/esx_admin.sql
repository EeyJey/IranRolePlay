INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_admin','admin',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_admin','admin',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_admin', 'admin', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('admin', 'Admin', 1);



INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('admin', 0, 'low admin', 'Low admin', 250, '{}', '{}'),
('admin', 1, 'meduim admin', 'Meduim admin', 500, '{}', '{}'),
('admin', 2, 'high admin', 'High admin', 750, '{}', '{}'),
('admin', 3, 'boss', 'Owner', 1000, '{}', '{}');