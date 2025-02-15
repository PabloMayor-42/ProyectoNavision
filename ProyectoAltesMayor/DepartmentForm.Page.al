page 50116 "Department Form"
{
    PageType = Card;
    SourceTable = Departments;
    PromotedActionCategories = 'Navegar';
    Caption = 'Department Form', comment = 'ESP="Ficha departamento"';

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Dept. code"; Rec."Dept. code")
                {
                    ApplicationArea = all;
                    Caption = 'Dept. code', comment = 'ESP="Código dept."';
                }
                field(Building; Rec.Building)
                {
                    ApplicationArea = all;
                    Caption = 'Building', comment = 'ESP="Edificio"';
                }
                field(Office; Rec.Office)
                {
                    ApplicationArea = all;
                    Caption = 'Despacho', comment = 'ESP="Despacho"';
                }
                field("Average Lab Price"; Rec."Average Lab Price")
                {
                    Caption = 'Average Lab Price', comment = 'ESP="Promedio tarifa lab:"';
                    ApplicationArea = all;
                    Lookup = true;

                    trigger OnDrillDown()
                    var
                        CoursesListPage: Page "Course List Look Up";
                    begin
                        CoursesListPage.Run();
                    end;
                }
            }

        }


        area(factboxes)
        {
            systempart(Control278243; MyNotes)
            {
                ApplicationArea = all;
            }
            systempart(Control27834; Notes)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action("Profesores")
            {
                ApplicationArea = all;
                Caption = 'Profesor', comment = 'Profesores';
                Promoted = true;
                Image = CalculateSalesTax;
                RunObject = page "Department List Look Up";
                RunPageMode = View;
                trigger OnAction()
                begin
                end;
            }
        }
        area(Creation)
        {
            action("Director")
            {
                ApplicationArea = all;
                Caption = 'Director', comment = 'Director';
                Promoted = true;
                Image = CalendarMachine;
                RunObject = page "Profesor Look Up";
                RunPageMode = View;
                trigger OnAction()
                begin
                end;
            }
        }
    }

}