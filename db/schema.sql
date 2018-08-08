-- -- Set up locally



-- ` sequelize
-- db:
-- migrate `
-- ` sequelize
-- db:
-- seed:
-- all `

-- --- Set Up Sequelize index.js and config/config.json
-- ` sequelize init `

-- --- Create Burgers.js model and Migrations
-- ` sequelize
-- model:
-- create --name burgers --attributes "burger_name:string devoured:boolean" `

-- --- Creates Menus.js model and Migrations
-- ` sequelize
-- model:
-- create --name Menus --attributes "item:string entree:boolean" `

-- --- Run migration to get it into MySQL database
-- ` sequelize
-- db:
-- migrate `

-- --- Create a seed file for urgers and menus 
-- ` sequelize
-- seed:
-- create --name burgers-seed `
-- ` sequelize
-- seed:
-- create --name menus-seed `

-- --- Run the Database seeder files
-- ` sequelize
-- db:
-- seed:
-- all `


CREATE TABLE Burgers
(
    id INT
    AUTO_INCREMENT NOT NULL,
    burger_name VARCHAR
    (50) NOT NULL,
    devoured BOOLEAN NOT NULL DEFAULT 0,
    createdat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY
    (id)
  );

    CREATE TABLE Menus
    (
        id INT
        AUTO_INCREMENT NOT NULL,
    item VARCHAR
        (50) NOT NULL,
    entree BOOLEAN NOT NULL DEFAULT 1,
    PRIMARY KEY
        (id)
  );