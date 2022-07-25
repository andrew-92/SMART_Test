page 50141 OutOfOfficeRequests
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = OutOfOfficeRequest;
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {

                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                field("Rejection reason"; Rec."Rejection reason")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(StartProcess)
            {
                Caption = 'Start process';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SelectedRec: Record OutOfOfficeRequest;
                begin
                    CurrPage.GetRecord(SelectedRec);
                    SelectedRec.Status := SelectedRec.Status::"In process";
                    SelectedRec.MODIFY;
                end;
            }

            action(Approve)
            {
                Caption = 'Approve';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SelectedRec: Record OutOfOfficeRequest;
                begin
                    CurrPage.GetRecord(SelectedRec);
                    SelectedRec.Status := SelectedRec.Status::Approved;
                    SelectedRec.MODIFY;
                end;
            }

            action(Decline)
            {
                Caption = 'Decline';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SelectedRec: Record OutOfOfficeRequest;
                begin
                    CurrPage.GetRecord(SelectedRec);
                    SelectedRec.Status := SelectedRec.Status::Declined;
                    SelectedRec.MODIFY;
                end;
            }
        }
    }

    var
        myInt: Integer;
}