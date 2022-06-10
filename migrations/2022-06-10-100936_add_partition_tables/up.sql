--
-- ATTENTION: The following query does not work with diesel_cli 1.4.1
-- diesel_cli 2.0.0-rc.0 seems to work

--CREATE TABLE course_user_partiton_22_ss PARTITION OF course_user
--    FOR VALUES FROM (2210000000000000000) TO (2220000000000000000);
-----------------

CREATE TABLE course_partiton_22_ss PARTITION OF course
    FOR VALUES FROM (2210000000000000000) TO (2220000000000000000);
