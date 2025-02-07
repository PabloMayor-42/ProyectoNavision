page 50108 "Course List Look Up"
{
    PageType = List;
    SourceTable = Course;
    Caption = 'Course List Look Up', comment = 'ESP="Lista Cursos LU"';

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