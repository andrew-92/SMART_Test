page 50142 OutOfOfficeReasonCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = OutOfOfficeReasons;
    Editable = true;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                    Editable = true;
                    Caption = 'Код';

                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Editable = true;
                    Caption = 'Описание';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}