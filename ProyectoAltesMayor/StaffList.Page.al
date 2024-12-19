page 50106 "Staff List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Staff;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Staff code"; Rec."Staff code")
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field(Post; Rec.Post)
                {
                    ApplicationArea = all;
                }
                field(Salary; Rec.Salary)
                {
                    ApplicationArea = all;
                }
                field("Professor code"; Rec."Professor code")
                {
                    ApplicationArea = all;
                }
            }
        }
    }
}