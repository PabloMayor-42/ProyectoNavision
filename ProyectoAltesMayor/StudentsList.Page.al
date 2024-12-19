//tpage
page 50100 StudentsList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Students;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Student Code"; Rec."Student Code")
                {
                    ApplicationArea = all;
                }

                field("Name"; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field("Sex"; Rec.Sex)
                {
                    ApplicationArea = all;
                }
                field("Adress"; Rec.Adress)
                {
                    ApplicationArea = all;
                }
                field("Phone Number"; Rec."Phone number")
                {
                    ApplicationArea = all;
                }
                field("Birthday"; Rec.Birdthday)
                {
                    ApplicationArea = all;
                }
                field("Professor Code"; Rec."Student Code")
                {
                    ApplicationArea = all;
                }
                field("Mentor code"; Rec."Mentor code")
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