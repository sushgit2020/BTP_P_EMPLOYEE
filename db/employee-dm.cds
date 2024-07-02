namespace btp.hr;

// creating table 

using { cuid } from '@sap/cds/common';

entity EMPLOYEE : cuid {
        NAME: String(50);
        AGE : Integer;
        MAIL_ID : String(255);
        PHONE_NO : String(50);
}

@cds.persistence.exists
entity DEPARTMENT  {
key ID  : UUID;
    NAME : String(50);
    FOUNDED_ON : Date;
    CREATED_DAT : Timestamp;
    CREATED_BY : String(50);
    MODIFIED_DAT : Timestamp;
    MODIFED_BY : String(50);
}

