CREATE TABLE Project (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    category VARCHAR(255),
    targetAudience TEXT,
    logoPrompt TEXT,
    colorScheme VARCHAR(50)
);

CREATE TABLE Features (
    id INT PRIMARY KEY,
    project_id INT,
    feature_name VARCHAR(255),
    FOREIGN KEY (project_id) REFERENCES Project(id)
);

CREATE TABLE TechStack (
    id INT PRIMARY KEY,
    project_id INT,
    tech_name VARCHAR(255),
    FOREIGN KEY (project_id) REFERENCES Project(id)
);

INSERT INTO Project (id, name, description, category, targetAudience, logoPrompt, colorScheme)
VALUES (1, 'FinalTest1756214187744', 'Application complète de test avec tableaux de bord, authentification et API REST', 'Application de test et d\'analyse', 'Développeurs, analystes et responsables de projet', 'Logo représentant un tableau de bord avec un écran, un clavier et une souris, sur un fond abstrait avec des éléments liés aux tests et à l\'analyse de données', '#2d3748,#4a5568');

INSERT INTO Features (id, project_id, feature_name)
VALUES (1, 1, 'Tableaux de bord personnalisables'),
       (2, 1, 'Système d\'authentification sécurisé'),
       (3, 1, 'API REST pour accès aux données');

INSERT INTO TechStack (id, project_id, tech_name)
VALUES (1, 1, 'React'),
       (2, 1, 'Node.js'),
       (3, 1, 'PostgreSQL');
