package com.springagentpoc.api.data.repo;

import com.springagentpoc.api.data.embedded.MessageRole;
import com.springagentpoc.api.data.entity.Message;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface MessageRepo extends JpaRepository<Message, UUID> {

    @Query("SELECT m FROM Message m WHERE m.conversation.id = :conversationId ORDER BY m.createdAt DESC")
    List<Message> findLatestMessagesByConversationId(UUID conversationId, Pageable pageable);

    List<Message> findByConversationIdOrderByCreatedAtAsc(UUID conversationId);

    @Query("SELECT SUM(m.tokenCount) FROM Message m WHERE m.conversation.id = :conversationId")
    Integer getTotalTokenCountByConversationId(UUID conversationId);
}
