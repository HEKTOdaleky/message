package com.example.sweat.repos;


import com.example.sweat.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;


public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String str);
}
