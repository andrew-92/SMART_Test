codeunit 50140 ChangeStatus
{
    trigger OnRun()
    begin

    end;

    procedure SetToInProcess(CurrRec: Record OutOfOfficeRequest)
    begin
        if CurrRec.Status <> CurrRec.Status::New then
            Error('Previous status must be New only');//TestField FieldError
        Validate(CurrRec);
        CurrRec.Status := CurrRec.Status::"In process";
        CurrRec.Modify;
    end;

    procedure SetToApproved(CurrRec: Record OutOfOfficeRequest)
    begin
        if CurrRec.Status <> CurrRec.Status::"In process" then
            Error('Previous status must be In process only');
        Validate(CurrRec);
        CurrRec.Status := CurrRec.Status::Approved;
        CurrRec.Modify;
    end;

    procedure SetToDeclined(CurrRec: Record OutOfOfficeRequest)
    begin
        if CurrRec.Status <> CurrRec.Status::"In process" then
            Error('Previous status must be In process only');
        Validate(CurrRec);
        CurrRec.Status := CurrRec.Status::Declined;
        CurrRec.Modify;
    end;

    procedure Validate(CurrRec: Record OutOfOfficeRequest)
    begin
        if CurrRec."Start Date" = 0D then
            Error('Start Date is required');
        if CurrRec."Start Time" = 0T then
            Error('Start Date is required');
        if CurrRec."End Date" = 0D then
            Error('End Date is required');
        if CurrRec."End Time" = 0T then
            Error('Start Date is required');
        if CurrRec."Reason Code" = '' then
            Error('Reason Code is required');
        if CurrRec.Description = '' then
            Error('Description is required');
    end;

}