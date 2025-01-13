//tpage
page 50100 "Students List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Students;
    Caption = 'Students List', comment = 'ESP="Lista Estudiantes"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Student Code"; Rec."Student Code")
                {
                    Caption = 'Student Code', comment = 'ESP="Código Estudiante"';
                    ApplicationArea = all;
                }

                field("Name"; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = all;
                }
                field("Sex"; Rec.Sex)
                {
                    Caption = 'Sex', comment = 'ESP="Sexo"';
                    ApplicationArea = all;
                }
                field("Adress"; Rec.Adress)
                {
                    Caption = 'Adress', comment = 'ESP="Dirección"';
                    ApplicationArea = all;
                }
                field("Phone Number"; Rec."Phone number")
                {
                    Caption = 'Phone Number', comment = 'ESP="Teléfono"';
                    ApplicationArea = all;
                }
                field("Birthday"; Rec.Birdthday)
                {
                    Caption = 'Birthday', comment = 'ESP="Fecha nac."';
                    ApplicationArea = all;
                }
                field("Professor Code"; Rec."Student Code")
                {
                    Caption = 'Professor Code', comment = 'ESP="Código Profesor"';
                    ApplicationArea = all;
                }
                field("Mentor code"; Rec."Mentor code")
                {
                    Caption = 'Mentor code', comment = 'ESP="Código Mentor"';
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