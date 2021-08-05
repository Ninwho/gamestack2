package com.gamestack.gamestack2.repository;

import com.gamestack.gamestack2.model.Game;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GameRepository extends JpaRepository<Game,Long> {
}
