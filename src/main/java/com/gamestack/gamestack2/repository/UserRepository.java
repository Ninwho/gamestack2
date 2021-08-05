package com.gamestack.gamestack2.repository;

import com.gamestack.gamestack2.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
}
