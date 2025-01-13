page 50107 "Enrolment Form"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Enrolment;
    Caption = 'Enrolment Form', comment = 'ESP="Ficha matrícula"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', comment = 'ESP="General"';

                group(" ")
                {
                    Caption = ' ', comment = 'ESP=""';
                    field("Course code"; Rec."Course Code")
                    {
                        Editable = true;
                        ApplicationArea = all;
                        Caption = 'Course code', comment = 'ESP="Código curso"';
                    }
                    field("Section"; Rec."Section")
                    {
                        Editable = true;
                        ApplicationArea = all;
                        Caption = 'Section', comment = 'ESP="Sección"';
                    }
                    field("Student code"; Rec."Student Code")
                    {
                        Editable = true;
                        ApplicationArea = all;
                        Caption = 'Student code', comment = 'ESP="Código estudiante"';
                    }
                }

                group("  ")
                {
                    Caption = '  ', comment = 'ESP=""';
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