//tpage
page 50102 "My Item Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Item;

    //tcaption
    Caption = 'My Item Card', comment = 'ESP="Mi ficha de productos"';

    layout
    {
        area(Content)
        {

            field("Show Details"; mostrarDetalle)
            {
                ApplicationArea = all;
            }

            group(General)
            {
                //tcaption
                Caption = 'General', comment = 'ESP="General"';
                field("No."; rec."No.")
                {
                    ApplicationArea = all;
                    Caption = 'No.', comment = 'ESP="Nº"';
                    Importance = Promoted;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description', comment = 'ESP="Descripción"';
                    ApplicationArea = all;

                }
            }


            group(Details)
            {

                Caption = 'Details', comment = 'ESP="Detalles"';
                Visible = mostrarDetalle;
                field("Costing Method"; rec."Costing Method")
                {
                    Caption = 'Costing Method', comment = 'ESP="Metodo Coste"';
                    ApplicationArea = all;


                }
                field("Profit %"; Rec."Profit %")
                {
                    Caption = 'Profit %', comment = 'ESP="Beneficio"';
                    ApplicationArea = all;
                    Importance = Additional;
                    ExtendedDatatype = Ratio;
                    ToolTip = 'Profit % of item', comment = 'ESP="% de beneficios "';
                }
                group(subgrupo)
                {
                    Visible = mostrarUnitCost;
                    Caption = '';
                    field("Unit Cost"; Rec."Unit Cost")
                    {
                        Caption = 'Unit Cost', comment = 'ESP="Coste unitario"';
                        ApplicationArea = all;
                        //Este campo no se mostrara si es el unit cost es dindt de Standar

                    }
                }

            }
        }



    }

    actions
    {
        area(Reporting)
        {
            action(Inventory)
            {
                ApplicationArea = all;
                RunObject = report "Inventory - List";
                Caption = 'Inventory List', Comment = 'Esp="Inventario"';
                Image = Inventory;

            }
        }
        area(Processing)
        {
            action(Turnover)
            {
                ApplicationArea = all;
                Caption = 'Item Turnover', Comment = 'ESP="MOV. Prods';
                RunObject = page "Item Turnover";
                RunPageLink = "No." = field("No.");
                Image = Turnover;

            }
        }
    }

    trigger OnInit()
    begin
        mostrarUnitCost := true;
    end;

    trigger OnAfterGetRecord()
    begin
        if Rec."Costing Method" <> Rec."Costing Method"::Standard then begin
            mostrarUnitCost := false
        end
        else begin
            mostrarUnitCost := true
        end;
    end;


    var
        mostrarDetalle: Boolean;

    var
        mostrarUnitCost: Boolean;
}