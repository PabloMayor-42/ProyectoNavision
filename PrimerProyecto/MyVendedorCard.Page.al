page 50103 "My Vendor Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = Vendor;
    Caption = 'My Vendor Card', comment = 'ESP="Ficha Simplif. proveedor"';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General', Comment = 'ESP="General"';


                field("No."; Rec."No.")
                {

                    ApplicationArea = all;
                    ToolTip = 'Nº';

                }

                field(Address; Rec.Address)
                {

                    ApplicationArea = all;
                    ToolTip = 'Adress';
                }

                field(City; Rec.City)
                {

                    ApplicationArea = all;
                    ToolTip = 'Ciudad';
                }

                field("Country/Region Code"; Rec."Country/Region Code")
                {

                    ApplicationArea = all;
                }

                field("Purchaser Code"; Rec."Purchaser Code")
                {
                    ApplicationArea = all;

                }


            }

            group(Invoicing)
            {

                Caption = 'Invoicing', Comment = 'ESP="Facturacion"';


                field("Budgeted Amount"; Rec."Budgeted Amount")
                {
                    ApplicationArea = all;

                }

                field("Balance (LCY)"; Rec."Balance (LCY)")
                {

                    ApplicationArea = all;
                }
            }
        }
        area(FactBoxes)
        {
            part("Vendor Details"; "Vendor Details FactBox")
            {
                ApplicationArea = all;
                SubPageLink = "No." = field("No.");
            }

            part("Vendor Statics"; "Vendor Statistics FactBox")
            {
                ApplicationArea = all;
            }
        }
    }


}