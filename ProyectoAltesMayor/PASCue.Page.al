page 50122 "PAS Cue"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Staff;

    layout
    {
        area(Content)
        {
            repeater(" ")
            {
                field("Staff code"; Rec."Staff code")
                {
                    Caption = 'Staff code', comment = 'ESP="Código Personal"';
                    ApplicationArea = all;
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name', comment = 'ESP="Nombre"';
                    ApplicationArea = all;
                }
                field(Post; Rec.Post)
                {
                    Caption = 'Post', comment = 'ESP="Cargo"';
                    ApplicationArea = all;
                }
                field(Salary; Rec.Salary)
                {
                    Caption = 'Salary', comment = 'ESP="Sueldo"';
                    ApplicationArea = all;
                }
            }
        }
    }


}