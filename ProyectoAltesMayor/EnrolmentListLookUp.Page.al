page 50111 "Enrolment List Look Up"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Enrolment;
    Caption = 'Enrolment List Look Up', comment = 'ESP="Lista Matrículas LU"';
    CardPageId = "Enrolment Form";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course Code"; Rec."Course Code")
                {
                    Caption = 'Course Code', comment = 'ESP="Código Curso"';
                    ApplicationArea = all;
                }
                field(Section; Rec.Section)
                {
                    Caption = 'Section', comment = 'ESP="Sección"';
                    ApplicationArea = all;
                }
                field("Student Code"; Rec."Student Code")
                {
                    Caption = 'Student Code', comment = 'ESP="Código Estudiante"';
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