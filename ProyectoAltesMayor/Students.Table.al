table 50103 Students
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student Code"; Code[3])
        {
            DataClassification = ToBeClassified;
            Numeric = true;
            NotBlank = true;

        }

        field(2; "Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(3; "Sex"; Enum Sex)
        {
            DataClassification = ToBeClassified;

            ValuesAllowed = " ", Man, Woman;
        }


        field(4; "Adress"; Text[50])
        {
            DataClassification = ToBeClassified;

        }

        field(5; "Phone number"; Text[9])
        {
            DataClassification = ToBeClassified;
            Numeric = true;

        }
        field(6; "Birdthday"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Mentor code"; Code[2])
        {
            TableRelation = Senate where("Professor Code" = field("Mentor code"));
        }
    }

    keys
    {
        key(Key1; "Student Code")
        {
            Clustered = true;

        }
        key(key2; "Name")
        {

        }
        key(key3; Adress)
        {

        }
        key(key4; "Phone number")
        {

        }


    }
}
