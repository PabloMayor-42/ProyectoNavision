table 50104 "Information Cue Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PK; code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Hombres; Integer)
        {
            CalcFormula = count(Students where(Sex = filter('Hombre')));
            FieldClass = FlowField;
        }
        field(3; Mujeres; Integer)
        {
            CalcFormula = count(Students where(Sex = filter('Mujer')));
            FieldClass = FlowField;
        }
        field(4; Matriculas; Integer)
        {
            CalcFormula = count(Enrolment);
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; PK)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}