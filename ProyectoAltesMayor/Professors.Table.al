table 50108 "Professors Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Professor Code"; Code[2])
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
        field(3; "Adress"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Contribution Date"; Date)
        {
            DataClassification = ToBeClassified;


        }
        field(5; "Assistant Number"; Integer)
        {
            MinValue = 0;
            InitValue = 0;
            MaxValue = 1;
            FieldClass = FlowField;
            CalcFormula = count(Staff where("Professor code" = field("Professor Code"), Post = const('Ayudante')));
        }

        field(6; "Salary"; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 0 : 2;
            MinValue = 0;
        }

        field(7; "Dept. code"; Code[4])
        {
            TableRelation = Departments where("Dept. code" = field("Dept. code"));
        }
    }

    keys
    {
        key(Key1; "Professor Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}