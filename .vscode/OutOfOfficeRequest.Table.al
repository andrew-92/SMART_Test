table 50141 OutOfOfficeRequest
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No"; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Editable = false;
        }

        field(2; "Employee No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";
        }

        field(3; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

            trigger OnValidate()
            var

            begin
                if "Start Date" < WORKDATE() then
                    Error('Дата начала не может быть меньше рабочей даты!');
            end;
        }

        field(4; "Start Time"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 090000T;
            NotBlank = true;

            trigger OnValidate()
            begin
                if "Start Time" = 0T then
                    Error('This field can''t be empty');
            end;
        }

        field(5; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(6; "End Time"; Time)
        {
            DataClassification = ToBeClassified;
            InitValue = 180000T;
            NotBlank = true;
        }

        field(7; "Reason Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = OutOfOfficeReasons.Code;
            NotBlank = true;
        }

        field(8; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = New,"In process",Approved,Declined;
            OptionCaption = 'Новая, На рассмотрении, Утверждено, Отклонено';
            InitValue = New;
        }

        field(9; Description; Text[250])
        {
            DataClassification = CustomerContent;
            NotBlank = true;
        }

        field(10; "Rejection reason"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PrimaryKey; "Entry No")
        {
            Clustered = true;

        }

    }

    var

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