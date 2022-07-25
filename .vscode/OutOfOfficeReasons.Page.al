page 50140 OutOfOfficeReasons
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = OutOfOfficeReasons;
    CardPageId = 50142;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = All;
                }

                field(Description; Rec.Description)
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

        }
    }

    var

}