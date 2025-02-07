table 50107 Enrolment
{
    DataClassification = ToBeClassified;
    LookupPageId = "Enrolment List Look Up";
    DrillDownPageId = "Enrolment List Look Up";

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
        field(8; "Nº enrolments"; Integer)
        {
            MinValue = 0;
            FieldClass = FlowField;
            CalcFormula = count(Enrolment where("Course code" = field("Course Code")));
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