page 50104 "Enrolment List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Enrolment;
    Caption = 'Enrolment List', comment = 'ESP="Lista Matrículas"';
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
                field("Enrolment Date"; Rec."Enrolment Date")
                {
                    Caption = 'Enrolment Date', comment = 'ESP="Fecha matric."';
                    ApplicationArea = all;
                }
                field("Enrolment hour"; Rec."Enrolment hour")
                {
                    Caption = 'Enrolment hour', comment = 'ESP="Hora matric."';
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