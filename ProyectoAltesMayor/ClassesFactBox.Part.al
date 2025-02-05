page 50119 "Classes Factbox"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Classes;
    Caption = 'Classes Factbox', comment = 'ESP="Clases asociadas"';

    layout
    {
        area(Content)
        {
            group("Clases asociadas")
            {
                field(Day; Rec.Day)
                {

                }
                field(Hour; Rec.Hour)
                {

                }
                field("Professor name"; Rec."Professor code")
                {

                }
            }
        }
    }



    var
        myInt: Integer;
}