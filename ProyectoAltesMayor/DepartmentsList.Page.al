page 50105 "Departments List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departments;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Dept. code"; Rec."Dept. code")
                {
                    ApplicationArea = all;
                }
                field(Building; Rec.Building)
                {
                    ApplicationArea = all;
                }
                field(Office; Rec.Office)
                {
                    ApplicationArea = all;
                }
                field("Director Code"; Rec."Director Code")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
}