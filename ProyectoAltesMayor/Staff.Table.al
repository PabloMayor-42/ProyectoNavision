table 50106 Staff
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Staff code"; Code[3])
        {
            DataClassification = ToBeClassified;
            Numeric = true;
            NotBlank = true;
        }

        field(2; Name; Text[30])
        {
            NotBlank = true;

        }

        field(3; Post; Text[20])
        {


        }

        field(4; Salary; Decimal)
        {
            DecimalPlaces = 2;
            MinValue = 0;
        }

        field(5; "Professor code"; Code[2])
        {
            TableRelation = Senate where("Professor Code" = field("Professor code"));
        }
    }

    keys
    {
        key(Key1; "Staff code")
        {
            Clustered = true;
        }

        key(Key2; Name)
        {

        }

        key(Key3; Post)
        {

        }
    }

}