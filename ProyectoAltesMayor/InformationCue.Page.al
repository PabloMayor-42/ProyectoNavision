page 50118 "Information Cue"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Information Cue Table";

    layout
    {
        area(Content)
        {
            cuegroup(Estudiantes)
            {
                field("Hombres - Nº"; Rec.Hombres)
                {
                    ApplicationArea = all;
                }
                field("Mujeres - Nº"; Rec.Mujeres)
                {
                    ApplicationArea = all;
                }

            }
            cuegroup(" ")
            {
                actions
                {
                    action("Nuevo estudiante")
                    {
                        Image = TileNew;
                        RunObject = page "Student Form";
                        RunPageMode = Create;
                        ApplicationArea = all;
                    }
                }
            }
            cuegroup(Matriculaciones)
            {
                field("Matriculas - Nº"; Rec.Matriculas)
                {
                    ApplicationArea = all;
                }
            }
            cuegroup("")
            {
                actions
                {
                    action("Nueva matricula")
                    {
                        Image = TileNew;
                        RunObject = page "Enrolment Form";
                        RunPageMode = Create;
                        ApplicationArea = all;
                    }
                }
            }

        }


    }




    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;


    end;



}