page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course code"; Rec."Course code")
                {
                    ApplicationArea = all;
                }
                field("Course name"; Rec."Course name")
                {
                    ApplicationArea = all;
                }
                field("Course desc."; Rec."Course desc.")
                {
                    ApplicationArea = all;
                }
                field(Credence; Rec.Credence)
                {
                    ApplicationArea = all;
                }
                field(Rate; Rec.Rate)
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