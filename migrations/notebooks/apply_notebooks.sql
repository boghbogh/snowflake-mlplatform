USE DATABASE <% database %>;
USE SCHEMA <% schema %>;

CREATE OR REPLACE NOTEBOOK DIAMONDS_PROD
    FROM '@"GITREPOS"."MLOPSSCHEMA"."snowflake-mlplatform"/branches/master/DIAMONDS/'
    MAIN_FILE = 'BOGHBOGH 2025-03-20 05:22:13.ipynb'
    QUERY_WAREHOUSE = <% wh %>;
ALTER NOTEBOOK DIAMONDS_PROD ADD LIVE VERSION FROM LAST; 
--EXECUTE NOTEBOOK NOTEBOOKS.DIAMONDS_PROD();
    