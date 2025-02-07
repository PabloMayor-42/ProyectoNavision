page 50128 "Enrolment Fact Box"
{
    PageType = CardPart;
    SourceTable = Enrolment;
    Caption = 'Enrolment Fact Box', comment = 'ESP="Matriculas"';

    layout
    {
        area(Content)
        {
            group(" ")
            {
                field("Nº enrolments"; Rec."Nº enrolments")
                {
                    Caption = 'Nº enrolments', comment = 'ESP="Nº de matriculas:"';
                }
            }


        }
    }

}