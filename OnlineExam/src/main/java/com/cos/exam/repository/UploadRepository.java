package com.cos.exam.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.cos.exam.model.OEUploadFiles;

public interface UploadRepository extends JpaRepository<OEUploadFiles,Long>,JpaSpecificationExecutor<OEUploadFiles>{
	

	
	
	

}
