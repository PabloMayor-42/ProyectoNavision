page 50106 "My Order Sales"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Sales Header";
    SourceTableView = where("Document Type" = const(Order));
    //SourceTableView >> Filtro para cargar solo los order(pedidos)
    Caption = 'My Order Sales', comment = 'ESP="Mis pedidos Venta"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = all;
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                    ApplicationArea = all;
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                    ApplicationArea = all;
                }
            }

            group("Order Lines")
            {
                part("Lines"; "Sales Order Subform")
                {
                    ApplicationArea = all;
                    //Link
                    SubPageLink = "Document Type" = field("Document Type"),
                                  "Document No." = field("No.");
                }
            }

            group(Shipping)
            {
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                    ApplicationArea = all;
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    var
        myInt: Integer;
}