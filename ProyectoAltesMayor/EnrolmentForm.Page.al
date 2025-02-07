page 50107 "Enrolment Form"
{
    PageType = Card;
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
                action(Course)
                {
                    ApplicationArea = all;
                    Caption = 'Course', comment = 'ESP="Curso"';
                    Promoted = true;
                    PromotedOnly = true;
                    Image = AssessFinanceCharges;
                    RunObject = page "Course Form";
                    RunPageLink = "Course code" = field("Course Code");
                    RunPageMode = View;

                    trigger OnAction()
                    begin

                    end;

                }

                action(Classroom)
                {
                    ApplicationArea = all;
                    Caption = 'Classroom', comment = 'ESP="Clase"';
                    Promoted = true;
                    PromotedOnly = true;
                    Image = Holiday;
                    RunObject = page "Class Form";
                    RunPageLink = "Course code" = field("Course Code");
                    RunPageMode = View;

                    trigger OnAction()
                    begin

                    end;

                }
            }

            group(Student)
            {
                Caption = 'Student', comment = 'ESP="Estudiante"';
                action(Data)
                {
                    ApplicationArea = all;
                    Caption = 'Data', comment = 'ESP="Datos"';
                    Promoted = true;
                    PromotedOnly = true;
                    Image = Customer;
                    RunObject = page "Student Form";
                    RunPageLink = "Student Code" = field("Student Code");
                    RunPageMode = View;

                    trigger OnAction()
                    begin

                    end;

                }
                action(Enrolment)
                {
                    ApplicationArea = all;
                    Caption = 'Enrolment', comment = 'ESP="Matriculas"';
                    Promoted = true;
                    PromotedOnly = true;
                    Image = ChangeDate;
                    RunObject = page "Enrolment List Look Up";
                    RunPageLink = "Course Code" = field("Course Code");
                    RunPageMode = View;

                    trigger OnAction()
                    begin

                    end;

                }

                action(Mentor)
                {
                    ApplicationArea = all;
                    Caption = 'Mentor', comment = 'ESP="Tutor"';
                    Promoted = true;
                    PromotedOnly = true;
                    Image = CancelLine;

                    trigger OnAction()
                    begin
                        Message('Not programmed yet');
                    end;

                }
            }


        }
    }

}