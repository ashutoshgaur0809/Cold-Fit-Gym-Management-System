// public any function uploadFile(required formData){
	// 	writeDump(arguments.formData);
	// 	try{
	// 		var json = {};
	// 		var imgField = arguments.formData.fieldnames;

	// 		cffile(
    //             action       = "upload",
    //             filefield    = imgField,
    //             destination  = expandPath( '/includes/assets/img/profile' ),
    //             nameconflict = "MakeUnique",
    //             result       = "profileResult"
    //         );
	// 		writeDump(profileResult);
	// 		//var query = wirebox.getInstance('QueryBuilder@qb');

	// 		//var sql = query.from( "userdata" ).where('user_Id',session.loggedInUserId).update( {"profile_img" = profileResult.serverfile} );

	// 		session.profileIMG = '/includes/assets/img/profile/#profileResult.serverfile#';
	// 		json['imgUrl'] = session.profileIMG;
	// 		return json;

	// 	}
	// 	catch(e){
	// 		writeDump(e);
	// 	}

	// }