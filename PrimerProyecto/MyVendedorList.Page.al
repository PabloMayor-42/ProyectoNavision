page 50104 "My Vendor"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Vendor;
    Caption = 'My Vendor', comment = 'ESP="Mis proveedores"';
    Editable = false;
    CardPageId = "My Vendor Card";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
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