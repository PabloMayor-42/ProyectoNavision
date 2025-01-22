page 50107 "Enrolment Form"
{
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = Administration;
    SourceTable = Enrolment;
    PromotedActionCategories = 'Navegar';
    Caption = 'Enrolment Form', comment = 'ESP="Ficha matrícula"';

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

        }


        area(factboxes)
        {

            part(Holita; "Internal Put-away Subform")
            {

            }

            systempart(Control54353534; Outlook)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            group(Information)
            {
                Caption = 'Information', comment = 'ESP="Información"';
                action(Action1)
                {
                    ApplicationArea = all;
                    Caption = 'Course', comment = 'ESP="Curso"';
                    Promoted = true;
                    PromotedOnly = true;


                    trigger OnAction()
                    begin

                    end;

                }

                action(Action2)
                {
                    ApplicationArea = all;
                    Caption = 'Classrom', comment = 'ESP="Clase"';
                    Promoted = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin

                    end;

                }
            }

            group(Student)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                action(Action3)
                {
                    ApplicationArea = all;
                    Caption = 'Data', comment = 'ESP="Datos"';
                    Promoted = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin

                    end;

                }
                action(Action4)
                {
                    ApplicationArea = all;
                    Caption = 'Enrolment', comment = 'ESP="Matriculas"';
                    Promoted = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin

                    end;

                }

                action(Action5)
                {
                    ApplicationArea = all;
                    Caption = 'Mentor', comment = 'ESP="Tutor"';
                    Promoted = true;
                    PromotedOnly = true;

                    trigger OnAction()
                    begin

                    end;

                }
            }


        }

    }

}