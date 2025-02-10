page 50125 "Statistics Fact Box"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Senate;
    Caption = 'Statistics Fact Box', comment = 'ESP="Estadísticas"';

    layout
    {
        area(Content)
        {
            repeater(" ")
            {
                field("Nº helpers"; Rec."Assistant Number")
                {
                    Caption = 'Nº helpers', comment = 'ESP="Nº de ayudantes:"';

                }
                field("Nº classes"; Rec."Nº classes")
                {
                    Caption = 'Nº classes', comment = 'ESP="Nº de clases que imparte:"';
                }
            }


        }
    }

}