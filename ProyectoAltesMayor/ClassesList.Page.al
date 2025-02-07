page 50101 "Classes List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classes;
    Caption = 'Classes List', comment = 'ESP="Lista Clases"';
    CardPageId = "Class Form";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Course Code"; Rec."Course code")
                {
                    Caption = 'Course Code', comment = 'ESP="Código Curso"';
                    ApplicationArea = all;
                }
                field(Division; Rec.Division)
                {
                    Caption = 'Division', comment = 'ESP="Sección"';
                    ApplicationArea = all;
                }
                field(Day; Rec.Day)
                {
                    Caption = 'Day', comment = 'ESP="Día"';
                    ApplicationArea = all;
                }
                field(Hour; Rec.Hour)
                {
                    Caption = 'Hour', comment = 'ESP="Hora"';
                    ApplicationArea = all;
                }
                field(Building; Rec.Building)
                {
                    Caption = 'Building', comment = 'ESP="Edificio"';
                    ApplicationArea = all;
                }
                field(Office; Rec.Office)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = all;
                }

                field("Professor code"; Rec."Professor code")
                {
                    Caption = 'Professor code', comment = 'ESP="Código Profesor"';
                    ApplicationArea = all;
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