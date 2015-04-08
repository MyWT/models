
CREATE TABLE  application (
  ApplicationId bigint NOT NULL IDENTITY,
  Name varchar(45) NOT NULL,
  PRIMARY KEY  (ApplicationId)
)

Insert into application values ( 'myapp')

-- Drop Table module
CREATE TABLE  module (
  ModuleId bigint NOT NULL IDENTITY,
  Name varchar(45) NOT NULL,
  ApplicationId bigint,
  ParentModuleId bigint,
  PRIMARY KEY  (ModuleId)
)

/*
Select * from module

Insert into module values('AD',1,null)
Insert into module values ('AA',1,null)
Insert into module values ('PMT',1,null)
*/

--Drop table applicationbean
CREATE TABLE  applicationbean (
  ApplicationBeanId bigint NOT NULL IDENTITY,
  Name varchar(45) NOT NULL,
  ClassName varchar(45) NOT NULL,
  ApplicationId bigint NOT NULL,
  ModuleId bigint NOT NULL,
  PRIMARY KEY  (ApplicationBeanId)
)
/*
Select * from applicationbean

Insert into applicationbean values ('Application','ad.server.Application',1,1) 

Insert into applicationbean values ( 'User','aa.server.User',1,2)
Insert into applicationbean values ( 'Project','pmt.server.Project',1,3)
Insert into applicationbean values ( 'Task','pmt.server.Task',1,3)
*/

CREATE TABLE  form (
  FormId bigint NOT NULL IDENTITY,
  Name varchar(45) NOT NULL,
  ApplicationId bigint NOT NULL,
  ModuleId bigint NOT NULL,
  ApplicationBeanId bigint NOT NULL,
  PRIMARY KEY  (FormId)
)
/*
Select * from form

Insert into form values ('Application',1,1,1)

*/

-- Drop table field
CREATE TABLE  field (
  FieldId bigint NOT NULL IDENTITY,
  FieldType smallint NOT NULL,
  Label varchar(45) NOT NULL, BoundTo varchar(45) NOT NULL,
  ApplicationId bigint NOT NULL, ModuleId bigint NOT NULL, ApplicationBeanId bigint NOT NULL,
  FormId bigint NOT NULL,
  Reference bit, 
  RefModuleName varchar(50), RefApplicationBeanName varchar(50), RefViewName varchar(50), RefColumnName varchar(45),
  Context bit
  PRIMARY KEY  (FieldId)
)

/*
Select * from field

Insert into field values (1,'Application Name','name', 1,1,1,1,0,null,null,null,null)
*/

CREATE TABLE  [view] (
  ViewId bigint NOT NULL IDENTITY,
  Name varchar(45) NOT NULL,
  ApplicationId bigint NOT NULL,
  ModuleId  bigint NOT NULL,
  ApplicationBeanId bigint NOT NULL,  
  PRIMARY KEY  (ViewId)
)


CREATE TABLE  viewfilter (
  ViewFilterId bigint NOT NULL,
  ViewId bigint NOT NULL,
  Name varchar(45) NOT NULL,
  Expression varchar(45) NOT NULL,
  PRIMARY KEY  (ViewFilterId)
)

CREATE TABLE  referencefield (
  ReferenceFieldId bigint NOT NULL IDENTITY,
  FieldId bigint NOT NULL,
  ViewId bigint NOT NULL,
  DisplayColumnName varchar(45) NOT NULL,
  PRIMARY KEY  (ReferenceFieldId)
)