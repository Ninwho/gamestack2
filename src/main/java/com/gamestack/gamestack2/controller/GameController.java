package com.gamestack.gamestack2.controller;

import com.gamestack.gamestack2.model.Game;
import com.gamestack.gamestack2.repository.GameRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/games")
public class GameController {

    @Autowired
    private GameRepository gameRepository;

    @GetMapping
    public List<Game> list() {
        return gameRepository.findAll();
    }

    @GetMapping
    @RequestMapping("{id}")
    public Game get(@PathVariable Long id) {
        return gameRepository.getById(id);
    }

    @PostMapping
    public Game create(@RequestBody final Game game) {
        return gameRepository.saveAndFlush(game);
    }

    @RequestMapping(value="{id}", method=RequestMethod.DELETE)
    public void delete(@PathVariable Long id) {
        gameRepository.deleteById(id);
    }

    @RequestMapping(value="{id}", method=RequestMethod.PUT)
    public Game update(@PathVariable Long id, @RequestBody Game game) {
        Game existingGame = gameRepository.getById(id);
        BeanUtils.copyProperties(game, existingGame, "game_id");
        return gameRepository.saveAndFlush(existingGame);
    }

}
