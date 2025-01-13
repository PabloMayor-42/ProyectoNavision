page 50106 "Staff List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Staff;
    Caption = 'Staff List', comment = 'ESP="Lista Personal"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
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
                field("Professor code"; Rec."Professor code")
                {
                    Caption = 'Professor Code', comment = 'ESP="Código Profesor"';
                    ApplicationArea = all;
                }
            }
        }
    }
}