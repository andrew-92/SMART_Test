page 50143 OutOfOfficeRequest
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = OutOfOfficeRequest;
    InsertAllowed = true;

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
                }

                field("Start Time"; Rec."Start Time")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("End Date"; Rec."End Date")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("End Time"; Rec."End Time")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                }

                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
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
            action(StartProcess)
            {
                Caption = 'Start process';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ChangeStatus: Codeunit ChangeStatus;
                begin
                    ChangeStatus.SetToInProcess(Rec);
                end;
            }

            action(Approve)
            {
                Caption = 'Approve';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ChangeStatus: Codeunit ChangeStatus;
                begin
                    ChangeStatus.SetToApproved(Rec);
                end;
            }

            action(Decline)
            {
                Caption = 'Decline';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ChangeStatus: Codeunit ChangeStatus;
                begin
                    ChangeStatus.SetToDeclined(Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}