page 50121 "Professors Cue"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Senate;

    layout
    {
        area(Content)
        {
            repeater(" ")
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
                field("Dept. code"; Rec."Dept. code")
                {
                    Caption = 'Dept. code', comment = 'ESP="Codigo dept."';
                    ApplicationArea = all;
                }
            }
        }
    }


}