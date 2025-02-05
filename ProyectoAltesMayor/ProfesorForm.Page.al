page 50123 "Profesor Form"
{
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = Administration;
    SourceTable = Enrolment;
    PromotedActionCategories = 'Acciones';
    Caption = 'Profesor Form', comment = 'ESP="Ficha Profesor"';

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Course code"; Rec."Course Code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Course code', comment = 'ESP="Código curso"';
                }
                field("Section"; Rec."Section")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Section', comment = 'ESP="Sección"';
                }
                field("Student code"; Rec."Student Code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Student code', comment = 'ESP="Código estudiante"';
                }

                field("Enrolment date"; Rec."Enrolment Date")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Enrolment date', comment = 'ESP="Fecha matric."';
                }

                field("Enrolment hour"; Rec."Enrolment hour")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Enrolment hour', comment = 'ESP="Hora matric."';
                }


            }

            group("Students tutor")
            {
                Caption = 'Students tutor', comment = 'ESP="Alumnos tutoría"';

                part(StudentsList; "Students Subpage")
                {
                    ApplicationArea = All;
                    SubPageLink = "Student Code" = field("Student Code");
                }
            }

        }
        area(Factboxes)
        {
            part("Statistics"; "Statistics Fact Box")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("New Student")
            {
                ApplicationArea = all;
                Caption = 'New Student', comment = 'Nuevo alumno';
                Promoted = true;
                Image = ConsumptionJournal;
                RunObject = page "Student Form";
                RunPageMode = Create;
                trigger OnAction()
                begin

                end;
            }
        }

    }
}