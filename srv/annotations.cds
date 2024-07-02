using EmployeeService from './employee-srv';

annotate EmployeeService.Employees with @(
//Design Level
odata.draft.enabled,
UI : {
SelectionFields:[
    AGE,
    PHONE_NO,
],

//Table Columns
LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type: 'UI.DataField',
            Value: NAME,

        },
        {
            $Type: 'UI.DataField',
            Value : AGE,
        },
        {
            $Type: 'UI.DataField',
            Value : MAIL_ID,
        },
        {
            $Type: 'UI.DataField',
            Value : PHONE_NO,
        }
     ],

     FieldGroup #BasicData : {
           $Type : 'UI.FieldGroupType',
           Data : [

                    {
                        $Type: 'UI.DataField',
                        Value: NAME,
                    },
                    {
                        $Type: 'UI.DataField',
                        Value: AGE,
                    },
                    {
                        $Type: 'UI.DataField',
                        Value: MAIL_ID,
                    },
                    {
                        $Type: 'UI.DataField',
                        Value: PHONE_NO,
                    }

           ]
     },

     //Facets

     Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Target : '@UI.FieldGroup#BasicData',
                    Label  : 'EMP baisc Data',
                    ID     : 'idEmpBasicData',
                },
     ]
}
){
//Property Level

ID @title: 'Emp ID';
NAME @title: 'Name';
AGE @title: 'Age';
MAIL_ID @title: 'Email Id';
PHONE_NO @title: 'Phone Number';


}