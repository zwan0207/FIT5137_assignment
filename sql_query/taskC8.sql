SELECT 
    paidtype,
    COUNT(*) AS payment_type_count,
    ROUND(
        (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cashierpayment)), 2) AS payment_type_percentage
FROM 
    cashierpayment
GROUP BY 
    paidtype;