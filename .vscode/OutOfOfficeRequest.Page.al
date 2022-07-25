page 50143 OutOfOfficeRequest
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = OutOfOfficeRequest;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;
                }

                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;


                }

                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    Editable = true;
                    NotBlank = true;

                }

                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    NotBlank = true;
                }

                field("Rejection reason"; Rec."Rejection reason")
                {
                    ApplicationArea = All;
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