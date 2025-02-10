table 50101 Departments
{
    DataClassification = ToBeClassified;
    LookupPageId = "Department List Look Up";

    fields
    {
        field(1; "Dept. code"; Code[4])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; Building; Text[2])
        {
            DataClassification = ToBeClassified;
            CharAllowed = 'AZ';
        }

        field(3; Office; Integer)
        {
            DataClassification = ToBeClassified;
            InitValue = 0;
            MinValue = 0;
        }

        field(4; "Director Code"; Code[2])
        {
            TableRelation = Senate where("Professor Code" = field("Director Code"));
        }
        field(5; "Average Lab Price"; Decimal)
        {
            Editable = false;
            CalcFormula = average(Course.Rate where("Dept. code" = field("Dept. code")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Dept. code")
        {
            Clustered = true;
        }
    }

}