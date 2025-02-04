table 50104 Enrolment
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Enrolment List";

    fields
    {
        field(1; "Course Code"; Code[3])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            TableRelation = Course;
        }

        field(2; "Section"; Text[2])
        {
            Numeric = true;
            NotBlank = true;
            TableRelation = Classes.Division where("Course code" = field("Course Code"));
        }
        field(3; "Student Code"; Code[3])
        {
            NotBlank = true;
            TableRelation = Students;
        }

        field(4; "Enrolment Date"; Date)
        {
            NotBlank = true;
        }
        field(5; "Enrolment hour"; Time)
        {
            NotBlank = true;
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