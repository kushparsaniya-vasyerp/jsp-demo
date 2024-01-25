package dev.kush.jspdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import dev.kush.jspdemo.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long>{

}
