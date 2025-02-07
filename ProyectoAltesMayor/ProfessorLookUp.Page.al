page 50127 "Profesor Look Up"
{
    PageType = List;
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