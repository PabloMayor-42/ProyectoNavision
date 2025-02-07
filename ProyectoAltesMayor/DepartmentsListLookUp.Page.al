page 50115 "Department List Look Up"
{
    PageType = ListPart;
    SourceTable = Departments;
    Caption = 'Department List Look Up', comment = 'ESP="Lista Departamentos LU"';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Dept. code"; Rec."Dept. code")
                {
                    ApplicationArea = all;
                    Caption = 'Dept. code', comment = 'ESP="Código dept."';
                }
                field(Building; Rec.Building)
                {
                    ApplicationArea = all;
                    Caption = 'Building', comment = 'ESP="Edificio"';
                }
                field(Office; Rec.Office)
                {
                    ApplicationArea = all;
                    Caption = 'Despacho', comment = 'ESP="Despacho"';
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

    var
        myInt: Integer;
}