page 50105 "Departments List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Departments;
    Caption = 'Departments List', comment = 'ESP="Lista Departamentos"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Dept. code"; Rec."Dept. code")
                {
                    Caption = 'Dept. code', comment = 'ESP="Código dept."';
                    ApplicationArea = all;
                }
                field(Building; Rec.Building)
                {
                    Caption = 'Building', comment = 'ESP="Edificio"';
                    ApplicationArea = all;
                }
                field(Office; Rec.Office)
                {
                    Caption = 'Office', comment = 'ESP="Despacho"';
                    ApplicationArea = all;
                }
                field("Director Code"; Rec."Director Code")
                {
                    Caption = 'Director Code', comment = 'ESP="Código director"';
                    ApplicationArea = all;
                }
            }
        }

    }
}