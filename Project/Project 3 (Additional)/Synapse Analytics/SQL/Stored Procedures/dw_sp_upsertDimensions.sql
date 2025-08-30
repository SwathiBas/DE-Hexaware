SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dw].[sp_upsert_dimensions] AS
BEGIN
    SET NOCOUNT ON;

    --------------------------------------------------------------------
    -- Customers (Type 1 Slowly Changing Dimension)
    --------------------------------------------------------------------
    -- Step 1: Update existing rows
    UPDATE tgt
    SET 
        tgt.CustomerName = src.CustomerName,
        tgt.Email        = src.Email,
        tgt.City         = src.City,
        tgt.State        = src.State,
        tgt.Country      = src.Country
    FROM dw.DimCustomer tgt
    INNER JOIN stg.Customers src
        ON tgt.CustomerID = src.CustomerID;

    -- Step 2: Insert new rows
    INSERT INTO dw.DimCustomer (CustomerID, CustomerName, Email, City, State, Country, EffectiveFrom)
    SELECT 
        src.CustomerID, src.CustomerName, src.Email, src.City, src.State, src.Country, SYSUTCDATETIME()
    FROM stg.Customers src
    LEFT JOIN dw.DimCustomer tgt
        ON tgt.CustomerID = src.CustomerID
    WHERE tgt.CustomerID IS NULL;


    --------------------------------------------------------------------
    -- Products (Type 1 Slowly Changing Dimension)
    --------------------------------------------------------------------
    -- Step 1: Update existing rows
    UPDATE tgt
    SET 
        tgt.ProductName = src.ProductName,
        tgt.Category    = src.Category,
        tgt.UnitPrice   = src.UnitPrice
    FROM dw.DimProduct tgt
    INNER JOIN stg.Products src
        ON tgt.ProductID = src.ProductID;

    -- Step 2: Insert new rows
    INSERT INTO dw.DimProduct (ProductID, ProductName, Category, UnitPrice, EffectiveFrom)
    SELECT 
        src.ProductID, src.ProductName, src.Category, src.UnitPrice, SYSUTCDATETIME()
    FROM stg.Products src
    LEFT JOIN dw.DimProduct tgt
        ON tgt.ProductID = src.ProductID
    WHERE tgt.ProductID IS NULL;

END;
GO