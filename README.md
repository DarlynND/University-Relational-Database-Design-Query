# University Information System – SQL Database

## 📌 Description

Ce projet consiste à concevoir et implémenter une base de données relationnelle normalisée (jusqu’à la 3e forme normale – 3NF) pour simuler un **système d’information universitaire**.  
La base de données permet de gérer les étudiants, les enseignants, les cours et les inscriptions, ainsi que d’exécuter des requêtes SQL courantes.

---

## 🎯 Objectifs du projet

- Concevoir un schéma relationnel cohérent et normalisé
- Appliquer les contraintes d’intégrité (PK, FK, NOT NULL, UNIQUE, CHECK)
- Insérer des données d’exemple
- Écrire et exécuter des requêtes SQL pour répondre à des besoins métier classiques

---

## 🗂️ Schéma de la base de données

### Tables principales

#### **Students**
| Champ | Type | Contraintes |
|------|------|------------|
| student_id | INT | PRIMARY KEY |
| name | VARCHAR | NOT NULL |
| email | VARCHAR | NOT NULL, UNIQUE |
| age | INT | NOT NULL, CHECK(age > 17) |

#### **Instructors**
| Champ | Type | Contraintes |
|------|------|------------|
| instructor_id | INT | PRIMARY KEY |
| name | VARCHAR | NOT NULL |
| department | VARCHAR | NOT NULL |

#### **Courses**
| Champ | Type | Contraintes |
|------|------|------------|
| course_id | INT | PRIMARY KEY |
| title | VARCHAR | NOT NULL |
| credits | INT | CHECK(credits > 0) |
| instructor_id | INT | FOREIGN KEY |

#### **Enrollments**
| Champ | Type | Contraintes |
|------|------|------------|
| student_id | INT | FOREIGN KEY |
| course_id | INT | FOREIGN KEY |
| grade | CHAR(2) | — |
| | | PRIMARY KEY(student_id, course_id) |

---

## 🧱 Technologies utilisées

- SQL standard (compatible MySQL / PostgreSQL / SQLite avec légères adaptations)
- SGBD relationnel

---

## 🚀 Fonctionnalités couvertes

- Création des tables avec contraintes
- Insertion de données d’exemple
- Requêtes SQL incluant :
  - Jointures
  - Sous-requêtes implicites
  - Mises à jour
  - Suppressions

---

## 🔍 Exemples de requêtes

- Lister les étudiants inscrits à un cours donné
- Associer les cours à leurs enseignants
- Identifier les étudiants non inscrits
- Mettre à jour les informations d’un étudiant
- Supprimer un cours par son identifiant

---

## 📁 Contenu du projet

