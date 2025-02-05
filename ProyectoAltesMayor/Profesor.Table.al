table 50109 "Profesor Table"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Profesor Code"; Code[2])
        {
            DataClassification = ToBeClassified;
            Numeric = true;
            NotBlank = true;
            Caption = 'Profesor Code', comment = 'ESP="Código Profesor"';

        }

        field(2; "Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            Caption = 'Name', comment = 'ESP="Nombre"';
        }

        field(3; "Adress"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            Caption = 'Adress', comment = 'ESP="Dirección"';
        }

        field(4; "Department"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
            Caption = 'Department', comment = 'ESP="Departamento"';
        }

        field(5; "CodigoEstudiante"; Code[3])
        {
            TableRelation = "Students";
        }

    }

    keys
    {
        key(Key1; "Profesor Code")
        {
            Clustered = true;
        }
    }


}