page 50114 "Student Form"
{
    PageType = Card;
    SourceTable = Students;
    PromotedActionCategories = 'Acciones,Navegar';
    Caption = 'Student Form', comment = 'ESP="Ficha Estudiante"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Student Code"; Rec."Student Code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Student Code', comment = 'ESP="Código de estudiante"';
                }
                field("Name"; Rec.Name)
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Name', comment = 'ESP="Nombre"';
                }
                field("Sexo"; Rec.Sex)
                {
                    ApplicationArea = all;
                    Caption = 'Sex', comment = 'ESP="Sexooo"';
                }
                field("Birthday"; Rec.Birdthday)
                {
                    ApplicationArea = all;
                    Caption = 'Birthday', comment = 'ESP="Fecha nac."';
                }
            }
            group(Comunication)
            {
                Caption = 'Comunication', comment = 'ESP="Comunicación"';
                field("Adress"; Rec.Adress)
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Adress', comment = 'ESP="Direccion"';
                }
                field("Phone Numbre"; Rec."Phone number")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Phone number', comment = 'ESP="Nº Telefono"';
                }
            }
            group(Tutoria)
            {
                field("Mentor"; Rec."Mentor code")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Mentor', comment = 'ESP="Tutor"';
                }
            }
        }

        area(FactBoxes)
        {
            systempart(contr0l; MyNotes)
            {

            }
            systempart(jhdebfjuae; Outlook)
            {

            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("New Enrolment")
            {
                Caption = 'New Enrolment', comment = 'Nueva Matrícula';
                ApplicationArea = all;
                Promoted = true;
                Image = CalculateSalesTax;
                RunObject = page "Enrolment Form";
                RunPageMode = Create;
                trigger OnAction()
                begin

                end;
            }

        }
        area(Creation)
        {
            action(Enrolment)
            {
                Caption = 'Enrolment', comment = 'Matriculas';
                ApplicationArea = all;
                Promoted = true;
                Image = CalendarMachine;
                RunObject = page "Enrolment List";
                RunPageMode = View;
                trigger OnAction()
                begin

                end;
            }

        }

    }
}