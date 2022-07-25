table 50140 OutOfOfficeReasons
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Код';
        }

        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Описание';
        }
    }

    keys
    {
        key(PrimaryKey; Code)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}