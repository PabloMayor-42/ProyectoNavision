page 50101 "Sales Transaction List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = SalesTransaction;
    Caption = 'Sales Transaction List', comment = 'ESP="Transacciones de ventas"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Line No."; Rec."Line No.")
                {
                    Caption = 'Line No.', comment = 'ESP="Nº. de línea"';
                    ApplicationArea = All;
                }

                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    Caption = 'Salesperson Code', comment = 'ESP="Código vendedor"';
                    ApplicationArea = All;
                }

                field(Type; Rec.Type)
                {
                    Caption = 'Type', comment = 'ESP="Tipo"';
                    ApplicationArea = All;
                }

                field("No."; Rec."No.")
                {
                    Caption = 'No.', comment = 'ESP="Número"';
                    ApplicationArea = All;
                }

                field(Amount; Rec.Amount)
                {
                    Caption = 'Amount', comment = 'ESP="Importe"';
                    ApplicationArea = All;
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