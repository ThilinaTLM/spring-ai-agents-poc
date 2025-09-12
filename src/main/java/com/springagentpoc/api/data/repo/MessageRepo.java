package com.springagentpoc.api.data.repo;

import com.springagentpoc.api.data.entity.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface MessageRepo extends JpaRepository<Message, UUID> {

}
