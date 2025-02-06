page 50106 "Staff List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Staff;
    Caption = 'Staff', comment = 'ESP="Personal"';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Staff Code"; Rec."Staff code")
                {
                    ApplicationArea = all;
                    Caption = 'Staff Code', comment = 'ESP="Código Personal"';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                    Caption = 'Name', comment = 'ESP="Nombre"';
                }
                field(Post; Rec.Post)
                {
                    ApplicationArea = all;
                    Caption = 'Post', comment = 'ESP="Puesto"';
                }
                field(Salary; Rec.Salary)
                {
                    ApplicationArea = all;
                    Caption = 'Salary', comment = 'ESP="Salario"';
                }
                field("Professor Code"; Rec."Professor code")
                {
                    ApplicationArea = All;
                    Caption = 'Teacher Code', comment = 'ESP="Código Profesor"';
                }
            }
        }
        area(Factboxes)
        {

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
}

