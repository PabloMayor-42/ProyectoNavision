page 50107 "Enrolment Form"
{
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = Administration;
    SourceTable = Enrolment;
    Caption = 'Enrolment Form', comment = 'ESP="Ficha matrícula"';

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Course code"; Rec."Course Code")
                {
                    ApplicationArea = all;
                    Caption = 'Course code', comment = 'ESP="Código curso"';
                }
                field("Section"; Rec."Section")
                {
                    ApplicationArea = all;
                    Caption = 'Section', comment = 'ESP="Sección"';
                }
                field("Student code"; Rec."Student Code")
                {
                    ApplicationArea = all;
                    Caption = 'Student code', comment = 'ESP="Código estudiante"';
                }

                field("Enrolment date"; Rec."Enrolment Date")
                {
                    Editable = true;
                    ApplicationArea = all;
                    Caption = 'Enrolment date', comment = 'ESP="Fecha matric."';
                }

                field("Enrolment hour"; Rec."Enrolment hour")
                {
                    Editable = true;
                    ApplicationArea = all;
                    Caption = 'Enrolment hour', comment = 'ESP="Hora matric."';
                }


            }
        }

    }

}