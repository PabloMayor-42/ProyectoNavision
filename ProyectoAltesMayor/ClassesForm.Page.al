page 50113 "Class Form"
{
    PageType = Card;
    SourceTable = Classes;
    Caption = 'Class Form', comment = 'ESP="Ficha Clases"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Course Code"; Rec."Course code")
                {
                    Importance = Promoted;
                    Caption = 'Course Code', comment = 'ESP="Código Curso"';
                    ApplicationArea = all;
                }
                field(Division; Rec.Division)
                {
                    Importance = Promoted;
                    Caption = 'Division', comment = 'ESP="Sección"';
                    ApplicationArea = all;
                }
                field(Day; Rec."Day")
                {
                    Importance = Promoted;
                    Caption = 'Day', comment = 'ESP="Día"';
                    ApplicationArea = all;
                }
                field(Hour; Rec.Hour)
                {

                    Caption = 'Hour', comment = 'ESP="Hora"';
                    ApplicationArea = all;
                }
            }
            group(Localizacion)
            {
                field("Building"; Rec.Building)
                {
                    Caption = 'Building', comment = 'ESP="Oficina"';
                    ApplicationArea = All;
                }
                field("Office"; Rec.Office)
                {
                    Caption = 'Office', comment = 'ESP="Oficina"';
                    ApplicationArea = all;
                }
            }
            group(Profesores)
            {
                field("Teacher"; Rec."Professor code")
                {
                    ApplicationArea = all;
                    Caption = 'Teacher', comment = 'ESP="Profesor"';
                }
            }
        }
        area(factboxes)
        {
            part("Estadisticas"; "Enrolment Fact Box")
            {
                ApplicationArea = all;
                SubPageLink = "Course Code" = field("Course code");
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
}






