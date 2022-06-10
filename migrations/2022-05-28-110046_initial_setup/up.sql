
CREATE TABLE IF NOT EXISTS "user"
(
    id bigint NOT NULL,
    last_name text NOT NULL,
    common_name text NOT NULL,
    last_activity_year smallint NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (id)
);
-----------------------

CREATE TABLE IF NOT EXISTS course
(
    id bigint NOT NULL,
    name text NOT NULL,
    CONSTRAINT course_pkey PRIMARY KEY (id)
) PARTITION BY RANGE (id);

CREATE INDEX ON course (id);

----------------------

CREATE TABLE IF NOT EXISTS course_user
(
    course_id bigint NOT NULL REFERENCES course(id) ON DELETE CASCADE,
    member_user_id bigint NOT NULL REFERENCES "user"(id) ON DELETE CASCADE,
    role text NOT NULL,
    CONSTRAINT course_user_pkey PRIMARY KEY (course_id, member_user_id)
) PARTITION BY RANGE (course_id);

CREATE INDEX ON course_user (member_user_id);
