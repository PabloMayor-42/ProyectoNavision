page 50104 "Enrolment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Enrolment;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course Code"; Rec."Course Code")
                {
                    ApplicationArea = all;
                }
                field(section; Rec.section)
                {
                    ApplicationArea = all;
                }
                field("Student Code"; Rec."Student Code")
                {
                    ApplicationArea = all;
                }
                field("Enrolment Date"; Rec."Enrolment Date")
                {
                    ApplicationArea = all;
                }
                field("Enrolment hour"; Rec."Enrolment hour")
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