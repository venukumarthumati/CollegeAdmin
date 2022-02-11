package com.theadmin.college.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.theadmin.college.entities.College;

@Repository
public interface CollegeRepository extends JpaRepository<College, Long>{

}
