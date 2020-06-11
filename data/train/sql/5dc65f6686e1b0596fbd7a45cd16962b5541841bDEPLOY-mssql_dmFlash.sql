CREATE TABLE dmFlash(
lockedBy nvarchar(250) NULL DEFAULT NULL ,
lastupdatedby nvarchar(250) NOT NULL DEFAULT '' ,
flashPlay bit NOT NULL DEFAULT 1 ,
flashQuality nvarchar(250) NULL DEFAULT 'high' ,
flashWidth decimal(10,2) NULL DEFAULT 0 ,
flashBgcolor nvarchar(250) NULL DEFAULT '#FFFFFF' ,
metaKeywords nvarchar(250) NULL DEFAULT NULL ,
status nvarchar(250) NULL DEFAULT NULL ,
flashAlign nvarchar(250) NULL DEFAULT 'center' ,
teaser ntext NULL ,
displayMethod nvarchar(250) NOT NULL DEFAULT 'displayPageStandard' ,
ObjectID nvarchar(50) NOT NULL DEFAULT '' ,
flashMenu bit NOT NULL DEFAULT 0 ,
flashMovie nvarchar(250) NULL DEFAULT NULL ,
label nvarchar(250) NULL DEFAULT NULL ,
datetimelastupdated datetime NOT NULL ,
flashLoop bit NOT NULL DEFAULT 0 ,
flashURL nvarchar(250) NULL DEFAULT NULL ,
flashVersion nvarchar(250) NULL DEFAULT '8,0,0,0' ,
createdby nvarchar(250) NOT NULL DEFAULT '' ,
datetimecreated datetime NOT NULL ,
locked bit NOT NULL DEFAULT 0 ,
flashParams nvarchar(250) NULL DEFAULT NULL ,
bLibrary bit NULL DEFAULT 1 ,
catFlash nvarchar(250) NULL DEFAULT NULL ,
title nvarchar(250) NULL DEFAULT NULL ,
ownedby nvarchar(250) NULL DEFAULT NULL ,
flashHeight decimal(10,2) NULL DEFAULT 0 
);
