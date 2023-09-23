-- article table
drop table article;

create table article(
    articleCode VARCHAR2(128) NOT NULL,
    articleName VARCHAR2(128) NOT NULL,
    VendorKey VARCHAR2(128) NOT NULL,
    VendorName VARCHAR2(128) NOT NULL,
    categoryInit INTEGER,
    categoryName VARCHAR2(128) NOT NULL,
    TypeInit INTEGER,
    TypeName VARCHAR2(128) NOT NULL,
    startDate DATE,
    expireDate DATE,
    colourInit INTEGER,
    colourName VARCHAR2(128),
    sex VARCHAR2(128),
    picture VARCHAR2(128),
    basePrice INTEGER,
    salePrice INTEGER,
    notes VARCHAR2(128),
    primary key(articleCode)
)

insert into article (
    articleCode,
    articleName,
    VendorKey,
    VendorName,
    categoryInit,
    categoryName ,
    TypeInit,
    TypeName,
    startDate,
    expireDate,
    colourInit,
    colourName,
    sex,
    picture,
    basePrice,
    salePrice,
    notes
) select
        articleCode,
        articleName,
        VendorKey,
        VendorName,
        categoryInit,
        categoryName ,
        TypeInit,
        TypeName,
        TO_DATE(to_char(startDate,'DD/MM/YYYY'),'DD/MM/YYYY') as startDate,
        TO_DATE(to_char(expireDate,'DD/MM/YYYY'),'DD/MM/YYYY') as expireDate,
        colourInit,
        colourName,
        sex,
        picture,
        basePrice,
        salePrice,
        notes
    from Article_temp;
    
select * from article;



-- cashier table
drop table cashier;

create table cashier(
    notrans VARCHAR2(128) NOT NULL,
    dateTrans DATE NOT NULL,
    typeTrans VARCHAR2(128),
    notes VARCHAR2(128),
    userId VARCHAR2(128),
    referenceTrans VARCHAR2(128),
    primary key(noTrans)
)

insert into cashier (
    notrans,datetrans,typetrans,notes,userid,referencetrans
) select 
    notrans,
        TO_DATE(to_char(datetrans,'DD/MM/YYYY'),'DD/MM/YYYY') as datetrans,
        typetrans,
        notes,
        userid,
        referencetrans
    from cashier_temp;
    
select * from cashier;

-- cashierdetail table
drop table cashierdetail;

CREATE TABLE cashierdetail (
    noTrans VARCHAR2(128) NOT NULL,
    ArticleCode VARCHAR2(128) NOT NULL,
    Barcode VARCHAR2(128) NOT NULL,
    sizes VARCHAR2(128) NOT NULL,
    qty INTEGER NOT NULL,
    basePrice INTEGER,
    salePrice INTEGER,
    discountType INTEGER,
    discountPersen INTEGER,
    discountRupiah INTEGER,
    DiscExpenses INTEGER,
    consignment INTEGER,
    ConsignmentRp INTEGER,
    SubTotal INTEGER,
    payment INTEGER,
    foreign key (noTrans) references cashier(noTrans),
    foreign key (ArticleCode) references article(ArticleCode),
    foreign key (barcode) references inventory(barcode)
);

insert into cashierdetail (
    noTrans, ArticleCode, Barcode, sizes, qty, basePrice, salePrice, DiscountType, discountPersen, 
    discountRupiah, DiscExpenses, consignment, consignmentRp, subTotal, payment
    ) select 
        noTrans, ArticleCode, Barcode, sizes, qty, basePrice, salePrice, DiscountType, discountPersen, 
        discountRupiah, DiscExpenses, consignment, consignmentRp, subTotal, payment 
        from CashierDetail_temp;
        
select * from cashierdetail;

-- cashierpayment table
drop table cashierpayment;

CREATE TABLE cashierpayment (
    id INTEGER NOT NULL,
    noTrans VARCHAR2(128) NOT NULL,
    paidType VARCHAR2(128) NOT NULL,
    cardInit VARCHAR2(128),
    cardName VARCHAR2(128),
    cardNumber VARCHAR2(128),
    totalpaid INTEGER,
    MachineName VARCHAR2(128),
    CompanyCharge INTEGER,
    CustomerCharge INTEGER,
    ReffNo VARCHAR2(128),
    ProgressiveDisc INTEGER not null,
    primary key (id),
    foreign key (noTrans) references cashier(noTrans)
);

insert into CashierPayment (
    Id,noTrans,paidType,cardInit,cardName,cardNumber,totalpaid,MachineName,
    CompanyCharge,CustomerCharge,ReffNo,ProgressiveDisc
    )select 
        Id,noTrans,paidType,cardInit,cardName,cardNumber,totalpaid,MachineName,
        CompanyCharge,CustomerCharge,ReffNo,ProgressiveDisc 
        from CashierPayment_temp;

select * from cashierpayment;

-- inventory table
drop table inventory;

CREATE TABLE inventory (
    ARTICLECODE VARCHAR2(128) NOT NULL,
    Barcode VARCHAR2(128) NOT NULL,
    sizes VARCHAR2(128) NOT NULL,
    CurrentBasePrice INTEGER,
    CurrentSalePrice INTEGER,
    consignment INTEGER,
    ConsignmentRp INTEGER,
    qty INTEGER,
    status INTEGER not null,
    primary key (barcode),
    foreign key (articleCode) references article(articleCode)
);
insert into inventory (
    articleCode, barcode, sizes, CurrentBasePrice, CurrentSalePrice, consignment, consignmentRp, qty, status
    ) select 
    articleCode, barcode, sizes, CurrentBasePrice, CurrentSalePrice, consignment, consignmentRp, qty, status
    from inventory_temp;
    
select * from inventory;