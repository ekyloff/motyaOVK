-- Improve lookup speed for messaging and notification delivery pipelines
ALTER TABLE `messages`
    ADD INDEX `messages_sender_created` (`sender_id`, `created`),
    ADD INDEX `messages_recipient_created` (`recipient_id`, `created`);

ALTER TABLE `notifications`
    ADD INDEX `notifications_recipient_ts` (`recipientType`, `recipientId`, `timestamp`);
