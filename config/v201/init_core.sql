-- Authorization cache --
CREATE TABLE IF NOT EXISTS AUTH_CACHE(
    ID_TOKEN_HASH TEXT PRIMARY KEY NOT NULL,
    ID_TOKEN_INFO TEXT NOT NULL
);

-- Availability --
CREATE TABLE IF NOT EXISTS AVAILABILITY(
    EVSE_ID INT PRIMARY KEY NOT NULL,
    CONNECTOR_ID INT,
    OPERATIONAL_STATUS TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS TRANSACTION_QUEUE(
    UNIQUE_ID TEXT PRIMARY KEY NOT NULL,
    MESSAGE TEXT NOT NULL,
    MESSAGE_TYPE TEXT NOT NULL,
    MESSAGE_ATTEMPTS INT NOT NULL,
    MESSAGE_TIMESTAMP TEXT NOT NULL
);


-- Auth list --
CREATE TABLE IF NOT EXISTS AUTH_LIST_VERSION (
    ID INT PRIMARY KEY NOT NULL,
    VERSION INT
);

CREATE TABLE IF NOT EXISTS AUTH_LIST (
    ID_TOKEN_HASH TEXT PRIMARY KEY NOT NULL,
    ID_TOKEN_INFO TEXT NOT NULL
);

INSERT OR IGNORE INTO AUTH_LIST_VERSION (ID, VERSION) VALUES
    (0, 0);
