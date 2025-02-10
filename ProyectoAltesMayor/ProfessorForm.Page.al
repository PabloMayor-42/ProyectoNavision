page 50123 "Profesor Form"
{
    PageType = Card;
    SourceTable = Senate;
    PromotedActionCategories = 'Acciones';
    Caption = 'Profesor Form', comment = 'ESP="Ficha Profesor"';

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Professor code"; Rec."Professor Code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Professor code', comment = 'ESP="Código profesor"';
                }
                field("Name"; Rec.Name)
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Section', comment = 'ESP="Sección"';
                }
                field("Adress"; Rec.Adress)
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Student code', comment = 'ESP="Código estudiante"';
                }

                field("Dept. code"; Rec."Dept. code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Enrolment date', comment = 'ESP="Fecha matric."';
                }

            }

            group("Students tutor")
            {
                Caption = 'Students tutor', comment = 'ESP="Alumnos tutoría"';

                part(StudentsList; "Students Subpage")
                {
                    ApplicationArea = All;
                    SubPageLink = "Mentor code" = field("Professor Code");
                }
                systempart(Coifbe; MyNotes)
                {

                }
                systempart(eihfe; Outlook)
                {

                }
            }

        }
        area(Factboxes)
        {
            part("Statistics"; "Statistics Fact Box")
            {
                Caption = 'Statistics', comment = 'ESP="Estadísticas"';
                ApplicationArea = all;
                SubPageLink = "Professor Code" = field("Professor Code");
            }
            systempart(Control278243; MyNotes)
            {
                ApplicationArea = all;
            }
            systempart(Control27834; Notes)
            {
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