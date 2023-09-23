--drop table Article_temp;
/*
CREATE TABLE Article_temp ( articleCode VARCHAR2(128) NOT NULL,  articleName VARCHAR2(128) NOT NULL,  VendorKey VARCHAR2(128) NOT NULL,  VendorName VARCHAR2(128) NOT NULL,  categoryInit INTEGER,  categoryName VARCHAR2(128),  TypeInit INTEGER,  TypeName VARCHAR2(128) NOT NULL,  startDate TIMESTAMP,  expireDate TIMESTAMP,  colourInit INTEGER,  colourName VARCHAR2(128),  sex VARCHAR2(128),  picture VARCHAR2(128),  basePrice INTEGER,  salePrice INTEGER,  notes VARCHAR2(128))    */

--Insert failed for row  1817 
--Line contains invalid enclosed character data or delimiter at position 32.
--Row 1,817
/*
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName,
    sex, picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.FWD-QJ001','LIZZIE OUTERMOST" EP,FWD,JADEFELLOW,1,ACCESSORIES,
        3,CD,2017-10-21 00:00:00.000,2018-01-19 00:00:00.000,0,NA,M,,
        33750,45000,RECEIVE ORDER OCTOBER 2017','','',NULL,'',NULL,'',
        to_timestamp('', 'YYYY-MM-DD HH24:MI:SS.FF'),to_timestamp('', 'YYYY-MM-DD HH24:MI:SS.FF'),
        NULL,'','','',NULL,NULL,'');
*/
--fixed:
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName,
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName,
    sex, picture, basePrice, salePrice, notes
) VALUES (
    'AR.FWD-QJ001', 'LIZZIE OUTERMOST EP','FWD', 'JADEFELLOW',1,'ACCESSORIES',
    3,'CD', to_timestamp('2017-10-21 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
    to_timestamp('2018-01-19 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
    0, 'NA', 'M', '', 33750, 45000, 'RECEIVE ORDER OCTOBER 2017');

--Insert failed for row  2576 
--startDate GDK-05058: non-numeric character found
--Row 2,576
/*
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.LWS-QB018','WO','F BLACK','LWS',COOLTOUR,'11',T-SHIRT,'1',
        to_timestamp('CASUAL', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('2017-02-18 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        2017-05-19 00:00:00.000,'1','BLACK','M',NULL,111300,'159000');
*/
--fixed:
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.LWS-QB018','WOF BLACK','LWS','COOLTOUR',11,'T-SHIRT',1,'CASUAL',
        to_timestamp('2017-02-18 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('017-05-19 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        1,'BLACK','M',NULL,111300,'159000',NULL);

--Insert failed for row  2584 
--startDate GDK-05058: non-numeric character found
--Row 2,584
/*
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.LWS-QB026','AST',' GAS OR GRASS BLACK','LWS',COOLTOUR,'3',HAT,'3',
        to_timestamp('TRUCKER', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('2017-02-18 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        2017-05-19 00:00:00.000,'1','BLACK','M',NULL,111300,'159000');
*/
--fixed:
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.LWS-QB026','AST GAS OR GRASS BLACK','LWS','COOLTOUR',3,'HAT',3,'TRUCKER',
        to_timestamp('2017-02-18 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('2017-05-19 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        1,'BLACK','M',NULL,111300,159000,NULL);


--Insert failed for row  5960 
--startDate GDK-05058: non-numeric character found
--Row 5,960
/*
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.SLT-QF001','MEN ','WOMAN & CHILDREN','SLT',VIRIDIPAL,'11',T-SHIRT,'1',
        to_timestamp('CASUAL', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('2017-06-04 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        2017-09-02 00:00:00.000,'1','BLACK','M',NULL,140000,'175000');
*/
--fixed:
INSERT INTO Article_temp (
    articleCode, articleName, VendorKey, VendorName, categoryInit, categoryName, 
    TypeInit, TypeName, startDate, expireDate, colourInit, colourName, sex, 
    picture, basePrice, salePrice, notes
    ) VALUES (
        'AR.SLT-QF001','MEN WOMAN CHILDREN','SLT','VIRIDIPAL',11,'T-SHIRT',1,'CASUAL',
        to_timestamp('2017-06-04 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        to_timestamp('2017-09-02 00:00:00.000', 'YYYY-MM-DD HH24:MI:SS.FF'),
        1,'BLACK','M',NULL,140000,'175000',NULL);

--drop table Invenory_temp;
/*
CREATE TABLE Invenory ( articleCode VARCHAR2(128) NOT NULL,  barcode VARCHAR2(128) NOT NULL,  sizes VARCHAR2(128) NOT NULL,  CurrentBasePrice INTEGER,  CurrentSalePrice INTEGER,  consignment INTEGER,  consignmentRp INTEGER,  qty INTEGER,  status INTEGER NOT NULL)    
*/

--Insert failed for rows  1  through  1000 
--ORA-01400: cannot insert NULL into ("S30698626"."INVENORY"."STATUS")
--Row 99
/*
INSERT INTO Invenory_temp (articleCode, barcode, sizes, CurrentBasePrice, 
CurrentSalePrice, consignment, consignmentRp, qty, status
) VALUES (
    'AGA-PI0020','2016I00080','XL',130000,200000,30,70000,0,NULL);
*/
--fixed:
INSERT INTO inventory_temp (
    articleCode, barcode, sizes, CurrentBasePrice, 
    CurrentSalePrice, consignment, 
    consignmentRp, qty, status
    ) VALUES (
        'AGA-PI0020','2016I00080','XL',130000,200000,30,70000,0,0);

--Insert failed for rows  14001  through  15000 
--ORA-01400: cannot insert NULL into ("S30698626"."INVENORY"."STATUS")
--Row 14,947
/*
INSERT INTO Invenory_temp (articleCode, barcode, sizes, CurrentBasePrice, 
CurrentSalePrice, consignment, consignmentRp, qty, status
) VALUES (
    'AR.REC-RJ002','20ARRJ0367','32',237250,365000,0,127750,0,NULL);
*/
--fixed:
INSERT INTO inventory_temp (
    articleCode, barcode, sizes, CurrentBasePrice, 
    CurrentSalePrice, consignment, 
    consignmentRp, qty, status
    ) VALUES (
        'AR.REC-RJ002','20ARRJ0367','32',237250,365000,0,127750,0,0);

--Insert failed for rows  23001  through  24000 
--ORA-01400: cannot insert NULL into ("S30698626"."INVENORY"."STATUS")
--Row 23,573
/*
INSERT INTO Invenory_temp (articleCode, barcode, sizes, CurrentBasePrice, 
CurrentSalePrice, consignment, consignmentRp, qty, status
) VALUES ('BSC.AR-QL0010','00ARQL0067','M',94500,135000,0,40500,0,NULL);
*/
--fixed:
INSERT INTO inventory_temp (
    articleCode, barcode, sizes, CurrentBasePrice, 
    CurrentSalePrice, consignment,
    consignmentRp, qty, status
    ) VALUES (
        'BSC.AR-QL0010','00ARQL0067','M',94500,135000,0,40500,0,0);

--Insert failed for rows  29001  through  30000 
--ORA-01400: cannot insert NULL into ("S30698626"."INVENORY"."STATUS")
--Row 29,490
/*
INSERT INTO Invenory (articleCode, barcode, sizes, CurrentBasePrice, 
CurrentSalePrice, consignment, consignmentRp, qty, status
) VALUES (
    'ESH.AR-SE0006','00ARSE0021','S',44000,135000,0,40500,3,NULL);
*/
--fixed:
INSERT INTO inventory_temp (
    articleCode, barcode, sizes, CurrentBasePrice, 
    CurrentSalePrice, consignment, 
    consignmentRp, qty, status
    ) VALUES (
        'ESH.AR-SE0006','00ARSE0021','S',44000,135000,0,40500,3,0);


--drop table CashierDetail_temp;
/*
CREATE TABLE CashierDetail_temp ( noTrans VARCHAR2(128) NOT NULL,  ArticleCode VARCHAR2(128) NOT NULL,  Barcode VARCHAR2(128) NOT NULL,  sizes VARCHAR2(128) NOT NULL,  qty INTEGER NOT NULL,  basePrice INTEGER,  salePrice INTEGER,  DiscountType INTEGER,  discountPersen INTEGER,  discountRupiah INTEGER,  DiscExpenses INTEGER,  consignment INTEGER,  consignmentRp INTEGER,  subTotal INTEGER,  payment INTEGER)    */

--Insert failed for rows  1  through  1000 
--ORA-01722: invalid number
--Row 50
/*
INSERT INTO CashierDetail_temp (noTrans, ArticleCode, Barcode, sizes, qty, 
basePrice, salePrice, DiscountType, discountPersen, discountRupiah, 
DiscExpenses, consignment, consignmentRp, subTotal, payment
) VALUES (
    '01SCS19E010027','BSC.AR-SC0034','00ARSC0228','S',1,125000,315000,
    2,0,94500,1,0,44100,220500 176400,NULL);
*/
--fixed:
INSERT INTO CashierDetail_temp (
    noTrans, ArticleCode, Barcode, sizes, qty, basePrice, salePrice, 
    DiscountType, discountPersen, discountRupiah, DiscExpenses, consignment, 
    consignmentRp, subTotal, payment
    ) VALUES (
        '01SCS19E010027','BSC.AR-SC0034','00ARSC0228','S',1,
        125000,315000,2,0,94500,1,0,44100,220500,176400);

--drop table CashierPayment_temp;
/*
CREATE TABLE CashierPayment_temp ( id INTEGER NOT NULL,  noTrans VARCHAR2(128) NOT NULL,  paidType VARCHAR2(128) NOT NULL,  cardInit VARCHAR2(128),  cardName VARCHAR2(128),  cardNumber VARCHAR2(128),  totalpaid INTEGER,  MachineName VARCHAR2(128),  CompanyCharge INTEGER,  CustomerCharge INTEGER,  ReffNo VARCHAR2(128),  ProgressiveDisc INTEGER NOT NULL)    */

--Insert failed for rows  1  through  1000 
--ORA-01400: cannot insert NULL into ("S30698626"."CASHIERPAYMENT_TEMP"."PROGRESSIVEDISC")
--Row 932
/*
INSERT INTO CashierPayment_temp (id, noTrans, paidType, cardInit, cardName, 
cardNumber, totalpaid, MachineName, CompanyCharge, CustomerCharge, ReffNo, 
ProgressiveDisc
) VALUES (
    61785,'01SCS19E070078','CASH','-','-','-',94500,'-',0,0,'-',NULL);
*/
--fixed:
INSERT INTO CashierPayment_temp (
    id, noTrans, paidType, cardInit, cardName, cardNumber, totalpaid, 
    MachineName, CompanyCharge, CustomerCharge, ReffNo, ProgressiveDisc
    ) VALUES (
        61785,'01SCS19E070078','CASH','-','-','-',94500,'-',0,0,'-',0);

--Insert failed for rows  6001  through  7000 
--ORA-01400: cannot insert NULL into ("S30698626"."CASHIERPAYMENT_TEMP"."PROGRESSIVEDISC")
--Row 6,767
/*
INSERT INTO CashierPayment_temp (id, noTrans, paidType, cardInit, cardName, 
cardNumber, totalpaid, MachineName, CompanyCharge, CustomerCharge, ReffNo, 
ProgressiveDisc) VALUES (
    68275,'01SCS19E310181','CASH','-','-','-',135000,'-',0,0,'-',NULL);
*/
--fixed:
INSERT INTO CashierPayment_temp (
    id, noTrans, paidType, cardInit, cardName, cardNumber, totalpaid, 
    MachineName, CompanyCharge, CustomerCharge, ReffNo, ProgressiveDisc
    ) VALUES (
        68275,'01SCS19E310181','CASH','-','-','-',135000,'-',0,0,'-',0);

--Insert successfully but value is incorrect
/*
INSERT INTO CashierDetail_temp (noTrans, ArticleCode, Barcode, sizes, qty, 
basePrice, salePrice, DiscountType, discountPersen, discountRupiah, 
DiscExpenses, consignment, consignmentRp, subTotal, payment
) VALUES (
    '01SCS19E300663','AR.ESB-SE003','20ARSE0247','M 1',204750,
    315000,2,0,63000,1,0,63000,252000,189000);
*/
--fixed:
UPDATE CashierDetail_temp
SET sizes = 'M'
WHERE sizes = 'M 1';

UPDATE CashierDetail_temp
SET qty = 1204750
WHERE qty = 204750;

/*
INSERT INTO CashierPayment_temp (id, noTrans, paidType, cardInit, cardName, 
cardNumber, totalpaid, MachineName, CompanyCharge, CustomerCharge, ReffNo, 
ProgressiveDisc) VALUES (
    68439,'01SCS19E310345','CASH',-,-,-,-3300,-,0,0,-,0);
*/
--fixed:
UPDATE CashierPayment_temp
SET totalpaid = 3300
WHERE totalpaid = -3300;