-- Use your desired schema or stick with the default user schema
-- CREATE USER myjsondb IDENTIFIED BY password;
-- GRANT CONNECT, RESOURCE TO myjsondb;
-- CONNECT myjsondb/password;

-- Create a table to store JSON data
CREATE TABLE json_data (
    id NUMBER PRIMARY KEY,
    data CLOB CONSTRAINT ensure_json CHECK (data IS JSON)
);

-- Sequence for generating unique IDs
CREATE SEQUENCE json_data_seq
    START WITH 1
    INCREMENT BY 1;

-- Sample insert
INSERT INTO json_data (id, data) VALUES (json_data_seq.NEXTVAL, '{"example": "This is a test JSON."}');
