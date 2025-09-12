package com.springagentpoc.api.data.repo;

import com.springagentpoc.api.data.entity.Conversation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface ConversationRepo extends JpaRepository<Conversation, UUID> {

    Optional<Conversation> findByIdAndUserId(UUID id, UUID userId);

    @Query("SELECT c FROM Conversation c LEFT JOIN FETCH c.messages WHERE c.id = :id")
    Optional<Conversation> findByIdWithMessages(UUID id);
}
