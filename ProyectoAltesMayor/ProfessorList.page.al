page 50124 "Profesor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Senate";
    Caption = 'Profesor List', comment = 'ESP="Lista Profesor"';
    CardPageId = "Profesor Form";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Profesor Code: "; Rec."Professor Code")
                {
                    Caption = 'Profesor Code', comment = 'ESP="Código Profesor"';
                    ApplicationArea = all;
                    Importance = Promoted;
                }
                field("Nombre: "; Rec.Name)
                {
                    Caption = 'Name:', comment = 'ESP="Nombre"';
                    ApplicationArea = all;
                    Importance = Promoted;
                }
                field("Adress: "; Rec."Adress")
                {
                    Caption = 'Adress:', comment = 'ESP="Dirección:"';
                    ApplicationArea = all;
                }
                field("Department: "; Rec."Professor Code")
                {
                    Caption = 'Department', comment = 'ESP="Departamento"';
                    ApplicationArea = all;
                }
                field("Adress"; Rec."Adress")
                {
                    ApplicationArea = all;
                }
            }
        }

    }
    actions
    {
        area(Navigation)
        {
            action("Alumnos Tutoria")
            {
                ApplicationArea = all;
                RunObject = page "Students List";
                RunPageMode = View;
            }
        }
    }



}
