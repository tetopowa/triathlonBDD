-- Exported from QuickDBD: https://www.quickdatatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/schema/yK6l_qEXf06XdF1ibmNUuQ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- ProductID int FK >- p.ProductID

-- Table documentation comment 1 (try the PDF/RTF export)
-- Table documentation comment 2
CREATE TABLE "Utilisateur" (
    "UserID" int   NOT NULL,
    "Nom" varchar(200)   NOT NULL,
    "Prenom" varchar(200)   NOT NULL,
    "Age" int   NOT NULL,
    "Categorie" varchar(200)   NOT NULL,
    "Top_adherent" int   NOT NULL,
    "Top_coach" int   NOT NULL,
    "Top_secretaire" int   NOT NULL,
    "Top_hors_club" int   NOT NULL,
    CONSTRAINT "pk_Utilisateur" PRIMARY KEY (
        "UserID"
     )
);

CREATE TABLE "Competition" (
    "Date" date   NOT NULL,
    "Lieu" varchar(200)   NOT NULL,
    "Type" varchar(20)   NOT NULL,
    "Categorie" varchar(200)   NOT NULL,
    "Coureurs" int   NOT NULL,
    "Gagant" int   NOT NULL
);

CREATE TABLE "Entrainement" (
    "Date" date   NOT NULL,
    "Lieu" varchar(200)   NOT NULL,
    "Type" varchar(20)   NOT NULL,
    "Coureurs" int   NOT NULL
);

CREATE TABLE "Club" (
    "Nom" varchar(200)   NOT NULL,
    "Adresse" varchar(200)   NOT NULL,
    "Président" int   NOT NULL,
    "Coach" int   NOT NULL
);

ALTER TABLE "Competition" ADD CONSTRAINT "fk_Competition_Coureurs" FOREIGN KEY("Coureurs")
REFERENCES "p" ("UserID");

ALTER TABLE "Competition" ADD CONSTRAINT "fk_Competition_Gagant" FOREIGN KEY("Gagant")
REFERENCES "p" ("UserID");

ALTER TABLE "Entrainement" ADD CONSTRAINT "fk_Entrainement_Coureurs" FOREIGN KEY("Coureurs")
REFERENCES "p" ("UserID");

ALTER TABLE "Club" ADD CONSTRAINT "fk_Club_Président" FOREIGN KEY("Président")
REFERENCES "p" ("UserID");

ALTER TABLE "Club" ADD CONSTRAINT "fk_Club_Coach" FOREIGN KEY("Coach")
REFERENCES "p" ("UserID");

