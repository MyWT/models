/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project
(
   ProjectId            bigint PRIMARY KEY IDENTITY,
   CreatedById               bigint,
   ProjectName          varchar(150),
);

/*==============================================================*/
/* Table: Phase                                                 */
/*==============================================================*/
create table Phase
(
   PhaseId              bigint PRIMARY KEY IDENTITY,
   ProjectId            bigint,
   PhaseName            varchar(150)
);

/*==============================================================*/
/* Table: Task                                                  */
/*==============================================================*/
create table Task
(
   TaskId               bigint PRIMARY KEY IDENTITY,
   PhaseId              bigint,
   ProjectId            bigint,
   CreatedById          bigint,
   TaskName             varchar(150),
   Description          varchar(150)
);

/*==============================================================*/
/* Table: User                                                  */
/*==============================================================*/
create table [User]
(
   UserId               bigint PRIMARY KEY IDENTITY,
   UserName             varchar(150) not null,
   SuperUser            bit,
);
