page 50126 "Students Subpage"
{
    PageType = ListPart;
    SourceTable = Students;
    Caption = 'Tutoring Students', comment = 'ESP="Estudiantes en Tutoría"';
    layout
    {
        area(Content)
        {
            repeater(Students)
            {
                field("Student Code"; Rec."Student Code")
                {
                    ApplicationArea = All;
                    Caption = 'Student Code', comment = 'ESP="Código Estudiante"';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name', comment = 'ESP="Nombre"';
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Plates")
            {
                Caption = 'Matriculas';
                ApplicationArea = All;
                RunObject = Page "Students List";
                Image = NewCustomer;
                RunPageLink = "Student Code" = field("Student Code");
            }
            action("Data")
            {
                Caption = 'Datos';
                ApplicationArea = All;
                RunObject = Page "Student Form";
                Image = NewCustomer;
                RunPageLink = "Student Code" = field("Student Code");
            }
        }
    }
}