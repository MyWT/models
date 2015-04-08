--
--Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, D_CustomerName Customer , D_LoadingBranchName LoadingBranch , D_UnLoadingBranchName UnLoadingBranch , ConsignmentNotes.cancelledOn , ConsignmentNotes.CreatedBy , ConsignmentNotes.CreatedOn , ConsignmentNotes.UpdatedBy , ConsignmentNotes.UpdatedOn, BasisOfBookingId, DeliveryStatus From ConsignmentNotes where (OriginOUId = ? and ConsignmentDate >= ? and ConsignmentDate <= ? and bankId is null) and (( bankId IS null ) ) order by ConsignmentNo asc,ConsignmentNoteId asc [params=(Object) 6226901, (Object) 2007-04-01, (Object) 2008-03-31]
--
--Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, D_CustomerName Customer , D_LoadingBranchName LoadingBranch , D_UnLoadingBranchName UnLoadingBranch , ConsignmentNotes.cancelledOn , ConsignmentNotes.CreatedBy , ConsignmentNotes.CreatedOn , ConsignmentNotes.UpdatedBy , ConsignmentNotes.UpdatedOn, BasisOfBookingId, DeliveryStatus From ConsignmentNotes where (OriginOUId = ? and ConsignmentDate >= ? and ConsignmentDate <= ? and bankId is null) and (( bankId IS null ) ) and ( ( ConsignmentNo = ? and ConsignmentNoteId > ? ) OR ( ConsignmentNo > ? )) order by ConsignmentNo asc,ConsignmentNoteId asc [params=(Object) 6226901, (Object) 2007-04-01, (Object) 2008-03-31, (Object) HSR21/0125, (Object) 3601681, (Object) HSR21/0125]
--
--Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, D_CustomerName Customer , D_LoadingBranchName LoadingBranch , D_UnLoadingBranchName UnLoadingBranch , ConsignmentNotes.cancelledOn , ConsignmentNotes.CreatedBy , ConsignmentNotes.CreatedOn , ConsignmentNotes.UpdatedBy , ConsignmentNotes.UpdatedOn, BasisOfBookingId, DeliveryStatus From ConsignmentNotes where (OriginOUId = ? and ConsignmentDate >= ? and ConsignmentDate <= ? and bankId is null) and (( bankId IS null ) ) and ( ( ConsignmentNo = ? and ConsignmentDate = ? and ConsignmentNoteId > ? ) OR ( ConsignmentNo = ? and ConsignmentDate > ? ) OR ( ConsignmentNo > ? )) order by ConsignmentNo asc,ConsignmentDate asc,ConsignmentNoteId asc [params=(Object) 6226901, (Object) 2007-04-01, (Object) 2008-03-31, (Object) HSR21/0125, (Object) 2007-04-17, (Object) 3601681, (Object) HSR21/0125, (Object) 2007-04-17, (Object) HSR21/0125]
--
--Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, D_CustomerName Customer , D_LoadingBranchName LoadingBranch , D_UnLoadingBranchName UnLoadingBranch , ConsignmentNotes.cancelledOn , ConsignmentNotes.CreatedBy , ConsignmentNotes.CreatedOn , ConsignmentNotes.UpdatedBy , ConsignmentNotes.UpdatedOn, BasisOfBookingId, DeliveryStatus From ConsignmentNotes where (OriginOUId = ? and ConsignmentDate >= ? and ConsignmentDate <= ? and bankId is null) and (( bankId IS null ) ) and ( ( ConsignmentNo = ? and ConsignmentDate = ? and ConsignmentNoteId > ? ) OR ( ConsignmentNo = ? and ConsignmentDate > ? ) OR ( ConsignmentNo < ? OR ConsignmentNo is NULL )) order by ConsignmentNo desc,ConsignmentDate asc,ConsignmentNoteId asc [params=(Object) 6226901, (Object) 2007-04-01, (Object) 2008-03-31, (Object) HSR21/12454, (Object) 2007-05-25, (Object) 7605817, (Object) HSR21/12454, (Object) 2007-05-25, (Object) HSR21/12454] 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- select * into ConsignmentNotes_Bak_Vinod from ConsignmentNotes


-- order by consignmentno

Select top 20 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
order by ConsignmentNo asc,ConsignmentNoteId asc 

-- 10 - 20
Select top 10 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
where 
( ConsignmentNo > 'FBD21/9508' ) 
order by ConsignmentNo asc,ConsignmentNoteId asc

---------------------------------------------------------------------

-- order by no and date

Select top 20 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
order by ConsignmentNo asc,ConsignmentDate asc,ConsignmentNoteId asc 


Select top 10 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
where ConsignmentNo > 'FBD21/9508' and ConsignmentDate > '2007-04-06 00:00:00.000' 
order by ConsignmentNo asc,ConsignmentDate asc,ConsignmentNoteId asc 


Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
where 
( ConsignmentNo = 'FBD21/9600' and ConsignmentDate = '2007-04-23 00:00:00.000' and ConsignmentNoteId > 4602393 ) 
 OR ( ConsignmentNo = 'FBD21/9600' and ConsignmentDate > '2007-04-23 00:00:00.000' ) 
-- OR ( ConsignmentNo > 'FBD21/9600')
order by ConsignmentNo asc,ConsignmentDate asc,ConsignmentNoteId asc 



-----------------------------------------------------------------------------------

-- order date

Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
order by ConsignmentDate asc,ConsignmentNoteId asc 


Select top 10 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
where ConsignmentDate > '2007-04-06 00:00:00.000' 
order ConsignmentDate asc,ConsignmentNoteId asc 


Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch 
From ConsignmentNotes_Bak_Vinod 
where 
( ConsignmentNo = 'FBD21/9600' and ConsignmentDate = '2007-04-23 00:00:00.000' and ConsignmentNoteId > 4602393 ) 
 OR ( ConsignmentNo = 'FBD21/9600' and ConsignmentDate > '2007-04-23 00:00:00.000' ) 
-- OR ( ConsignmentNo > 'FBD21/9600')



-----------------------------------------------------------------------------------

-- order by no desc and date

Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch
From ConsignmentNotes_Bak_Vinod 
order by ConsignmentNo desc,ConsignmentDate asc,ConsignmentNoteId asc 


Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch
From ConsignmentNotes_Bak_Vinod 
--where ( ConsignmentNo < 'FBD21/9600' and ConsignmentDate > '2007-04-23 00:00:00.000' and ConsignmentNoteId > 3501024 ) 
order by ConsignmentNo desc,ConsignmentDate asc,ConsignmentNoteId asc 


Select top 100 ConsignmentNoteId, ConsignmentNo ,ConsignmentDate ,ConsignmentPSN, 
D_CustomerName Customer , D_LoadingBranchName 
LoadingBranch , D_UnLoadingBranchName UnLoadingBranch
From ConsignmentNotes_Bak_Vinod 
where 
( ( ConsignmentNo = 'GGN21/9199' and ConsignmentDate = '2007-05-01' and ConsignmentNoteId > 7605817 ) 
OR ( ConsignmentNo = 'GGN21/9199' and ConsignmentDate > '2007-05-01' ) 
OR ( ConsignmentNo < 'GGN21/9199' OR ConsignmentNo is NULL )) 

order by ConsignmentNo desc,ConsignmentDate asc,ConsignmentNoteId asc 

--------------------------

Select * from ConsignmentNotes_Bak_Vinod 
where updatedon < '2007-08-31' or updatedon is null
order by updatedon desc