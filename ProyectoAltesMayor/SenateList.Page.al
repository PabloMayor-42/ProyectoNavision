page 50102 "Senate List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Senate;
    Caption = 'Senate List', comment = 'ESP="Lista Claustro"';
    CardPageId = "Senate List";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Professor Code"; Rec."Professor Code")
                {
                    Caption = 'Professor Code', comment = 'ESP="Código Profesor"';
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre', comment = 'ESP="Nombre"';
                    ApplicationArea = all;
                }
                field(Adress; Rec.Adress)
                {
                    Caption = 'Adress', comment = 'ESP="Dirección"';
                    ApplicationArea = all;
                }
                field("Contribution Date"; Rec."Contribution Date")
                {
                    Caption = 'Contribution Date', comment = 'ESP="Fecha contr."';
                    ApplicationArea = all;
                }
                field("Assistant Number"; Rec."Assistant Number")
                {
                    Caption = 'Assistant Number', comment = 'ESP="Num. ayud."';
                    ApplicationArea = all;
                }
                field(Salary; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Sueldo"';
                    ApplicationArea = all;
                }
                field("Dept. code"; Rec."Dept. code")
                {
                    Caption = 'Dept. code', comment = 'ESP="Código dept."';
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