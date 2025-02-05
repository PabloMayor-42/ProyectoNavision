page 50109 "Classes List Look Up"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Classes;
    Caption = 'Classes List Look Up', comment = 'ESP="Lista Clases LU"';

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