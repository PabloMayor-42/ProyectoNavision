table 50102 Classes
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course code"; Code[3])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            CharAllowed = 'AZ';
            TableRelation = Course where("Course code" = field("Course code"));
        }

        field(2; Division; Text[2])
        {
            Numeric = true;
            NotBlank = true;

        }

        field(3; Day; Text[10])
        {


        }

        field(4; Hour; Time)
        {


        }

        field(5; Building; Text[2])
        {
            CharAllowed = 'AZ';

        }


        field(6; Office; Integer)
        {
            MinValue = 0;

        }

        field(7; "Professor code"; Code[2])
        {
            TableRelation = Senate where("Professor code" = field("Professor code"));
        }
    }

    keys
    {
        key(Key1; "Course code", Division)
        {
            Clustered = true;
        }
        key(Key2; Day)
        {

        }
    }

}