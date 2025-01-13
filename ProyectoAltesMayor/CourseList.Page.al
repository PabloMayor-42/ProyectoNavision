page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    Caption = 'Course List', comment = 'ESP="Lista Cursos"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course code"; Rec."Course code")
                {
                    Caption = 'Course code', comment = 'ESP="Código Curso"';
                    ApplicationArea = all;
                }
                field("Course name"; Rec."Course name")
                {
                    Caption = 'Course name', comment = 'ESP="Nombre Curso"';
                    ApplicationArea = all;
                }
                field("Course desc."; Rec."Course desc.")
                {
                    Caption = 'Course desc.', comment = 'ESP="Desc. Curso"';
                    ApplicationArea = all;
                }
                field(Credence; Rec.Credence)
                {
                    Caption = 'Credence', comment = 'ESP="Créditos"';
                    ApplicationArea = all;
                }
                field(Rate; Rec.Rate)
                {
                    Caption = 'Rate', comment = 'ESP="Tarifa"';
                    ApplicationArea = all;
                }

                field("Dept. code"; Rec."Dept. code")
                {
                    Caption = 'Dept. code', comment = 'ESP="Código Departamento"';
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