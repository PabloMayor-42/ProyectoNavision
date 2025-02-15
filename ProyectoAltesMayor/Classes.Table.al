table 50102 Classes
{
    DataClassification = ToBeClassified;
    LookupPageId = "Classes List Look Up";
    DrillDownPageId = "Classes List Look Up";

    fields
    {
        field(1; "Course code"; Code[3])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Course."Course code";
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

    fieldgroups
    {
        fieldgroup(DropDown; "Course code", Division, Day, Hour)
        {

        }
    }
}