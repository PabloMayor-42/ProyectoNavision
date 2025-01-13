table 50104 Enrolment
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Course Code"; Code[3])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Classes where("Course code" = field("Course Code"));
        }

        field(2; "Section"; Text[2])
        {
            Numeric = true;
            NotBlank = true;
        }
        field(3; "Student Code"; Code[3])
        {
            Numeric = true;
            NotBlank = true;
            TableRelation = Students where("Student Code" = field("Student Code"));
        }

        field(4; "Enrolment Date"; Date)
        {

        }
        field(5; "Enrolment hour"; Time)
        {

        }



    }

    keys
    {
        key(Key1; "Course Code", Section, "Student Code")
        {
            Clustered = true;
        }

        key(key2; "Enrolment Date", "Enrolment hour")
        {

        }
    }
}