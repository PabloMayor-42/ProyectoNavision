table 50101 Departments
{
    DataClassification = ToBeClassified;

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

        field(4; "Professor Code"; Code[2])
        {
            TableRelation = Senate where("Professor Code" = field("Professor Code"));
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