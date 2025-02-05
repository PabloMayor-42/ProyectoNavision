page 50127 "Profesor Look Up"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Profesor Table";
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Profesor Code"; Rec."Profesor Code")
                {
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field(Department; Rec.Department)
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