
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/18/2018 22:29:49
-- Generated from EDMX file: d:\Documents\Visual Studio 2017\Projects\BixcieBoutique\BixcieDB\CustomerModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BixcieBoutiqueDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[bb_person]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bb_person];
GO
IF OBJECT_ID(N'[dbo].[bb_person_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bb_person_type];
GO
IF OBJECT_ID(N'[dbo].[bb_type]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bb_type];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'bb_person'
CREATE TABLE [dbo].[bb_person] (
    [person_id] int  NOT NULL,
    [first_name] varchar(50)  NOT NULL,
    [last_name] varchar(80)  NOT NULL,
    [middle_initial] varchar(6)  NULL,
    [suffix] varchar(30)  NULL,
    [prefix] varchar(30)  NULL,
    [birthdate] datetime  NULL,
    [preferred_name] varchar(150)  NULL,
    [add_user] int  NULL,
    [add_date] datetime  NULL,
    [chg_user] int  NULL,
    [chg_date] datetime  NULL
);
GO

-- Creating table 'bb_person_type'
CREATE TABLE [dbo].[bb_person_type] (
    [id] int  NOT NULL,
    [person_id] int  NOT NULL,
    [type_id] int  NOT NULL
);
GO

-- Creating table 'bb_type'
CREATE TABLE [dbo].[bb_type] (
    [type_id] int  NOT NULL,
    [code] varchar(20)  NULL,
    [name] varchar(100)  NULL,
    [description] varchar(1000)  NULL,
    [add_user] int  NULL,
    [add_date] datetime  NULL,
    [chg_user] int  NULL,
    [chg_date] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [person_id] in table 'bb_person'
ALTER TABLE [dbo].[bb_person]
ADD CONSTRAINT [PK_bb_person]
    PRIMARY KEY CLUSTERED ([person_id] ASC);
GO

-- Creating primary key on [id] in table 'bb_person_type'
ALTER TABLE [dbo].[bb_person_type]
ADD CONSTRAINT [PK_bb_person_type]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [type_id] in table 'bb_type'
ALTER TABLE [dbo].[bb_type]
ADD CONSTRAINT [PK_bb_type]
    PRIMARY KEY CLUSTERED ([type_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------