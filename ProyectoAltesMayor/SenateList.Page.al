page 50102 "Senate List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Senate;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Professor Code"; Rec."Professor Code")
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field(Adress; Rec.Adress)
                {
                    ApplicationArea = all;
                }
                field("Contribution Date"; Rec."Contribution Date")
                {
                    ApplicationArea = all;
                }
                field("Assistant Number"; Rec."Assistant Number")
                {
                    ApplicationArea = all;
                }
                field(Salary; Rec.Salary)
                {
                    ApplicationArea = all;
                }
                field("Dept. code"; Rec."Dept. code")
                {
                    ApplicationArea = all;
                }
            }
        }
        area(Factboxes)
        {

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