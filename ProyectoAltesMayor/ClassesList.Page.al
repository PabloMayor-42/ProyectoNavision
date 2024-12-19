page 50101 "Classes List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classes;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course Code"; Rec."Course code")
                {
                    ApplicationArea = all;
                }
                field(Division; Rec.Division)
                {
                    ApplicationArea = all;
                }
                field(Day; Rec.Day)
                {
                    ApplicationArea = all;
                }
                field(Hour; Rec.Hour)
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

                field("Professor code"; Rec."Professor code")
                {
                    ApplicationArea = all;
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

                trigger OnAction()
                begin

                end;
            }
        }
    }
}