page 50112 "Course Form"
{
    PageType = Card;
    ApplicationArea = all;
    UsageCategory = Administration;
    SourceTable = Course;
    Caption = 'Course Form', comment = 'ESP="Ficha curso"';

    layout
    {
        area(Content)
        {
            group(General)
            {

                field("Course code"; Rec."Course Code")
                {

                    ApplicationArea = all;
                    Caption = 'Course code', comment = 'ESP="Código curso"';
                }
                field("Course name"; Rec."Course name")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Course name', comment = 'ESP="Nombre curso"';
                }
                field("Course desc."; Rec."Course desc.")
                {
                    Importance = Promoted;
                    ApplicationArea = all;
                    Caption = 'Course desc.', comment = 'ESP="Descripción curso"';
                }


                field("Credence"; Rec.Credence)
                {

                    ApplicationArea = all;
                    Caption = 'Credence', comment = 'ESP="Créditos"';
                }

                field("Rate"; Rec.Rate)
                {

                    ApplicationArea = all;
                    Caption = 'Rate', comment = 'ESP="Tarifa"';
                }

                field("Dept. code"; Rec."Dept. code")
                {

                    ApplicationArea = all;
                    Caption = 'Dept. code', comment = 'ESP="Código Departamento"';
                }
            }

        }


        area(factboxes)
        {
            part(" "; "Classes Factbox")
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {

    }

}