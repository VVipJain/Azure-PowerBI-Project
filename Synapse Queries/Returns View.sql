CREATE VIEW gold.proreturns
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://deprojectdatalakes.blob.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) as QUER1