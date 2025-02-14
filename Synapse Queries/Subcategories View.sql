CREATE VIEW gold.subcat
AS
SELECT 
    * 
FROM 
    OPENROWSET
        (
            BULK 'https://deprojectdatalakes.blob.core.windows.net/silver/Product_Subcategories/',
            FORMAT = 'PARQUET'
        ) as QUER1