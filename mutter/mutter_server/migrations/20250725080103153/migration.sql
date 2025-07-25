BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "friend" (
    "id" bigserial PRIMARY KEY,
    "senderId" bigint NOT NULL,
    "recipientId" bigint NOT NULL
);

--
-- ACTION DROP TABLE
--
DROP TABLE "message" CASCADE;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "message" (
    "id" bigserial PRIMARY KEY,
    "friendId" bigint NOT NULL,
    "text" text NOT NULL,
    "dateSent" timestamp without time zone NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "dateReceived" timestamp without time zone,
    "dateRead" timestamp without time zone,
    "failed" boolean NOT NULL
);

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "friend"
    ADD CONSTRAINT "friend_fk_0"
    FOREIGN KEY("senderId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;
ALTER TABLE ONLY "friend"
    ADD CONSTRAINT "friend_fk_1"
    FOREIGN KEY("recipientId")
    REFERENCES "serverpod_user_info"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- ACTION CREATE FOREIGN KEY
--
ALTER TABLE ONLY "message"
    ADD CONSTRAINT "message_fk_0"
    FOREIGN KEY("friendId")
    REFERENCES "friend"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;


--
-- MIGRATION VERSION FOR mutter
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('mutter', '20250725080103153', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250725080103153', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240520102713718', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240520102713718', "timestamp" = now();


COMMIT;
