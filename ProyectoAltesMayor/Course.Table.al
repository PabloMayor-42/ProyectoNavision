table 50100 Course

{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course code"; Code[3])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(2; "Course name"; Text[30])
        {
            NotBlank = true;
        }

        field(3; "Course desc."; Text[30])
        {

        }

        field(4; Credence; Integer)
        {
            InitValue = 0;
        }
        field(5; Rate; Decimal)
        {
            DecimalPlaces = 2;
        }

        field(6; "Dept. code"; Code[4])
        {
            TableRelation = Departments where("Dept. code" = field("Dept. code"));
        }
    }

    keys
    {
        key(Key1; "Course code")
        {
            Clustered = true;
        }
        key(Key2; "Course name")
        {

        }
        key(Key3; "Course desc.")
        {

        }
    }

}