
TRUNCATE TABLE WORK_RIGHT_SHARES;

SELECT @SNAPSHOT_ID := MAX(snapshotid) FROM SNAPSHOTS;

SELECT NOW() FROM DUAL;


LOAD DATA INFILE 'workrightshares.tsv'
    INTO TABLE WORK_RIGHT_SHARES
    FIELDS TERMINATED BY '\t' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
    SET snapshotid= @SNAPSHOT_ID
;



SELECT NOW() FROM DUAL;