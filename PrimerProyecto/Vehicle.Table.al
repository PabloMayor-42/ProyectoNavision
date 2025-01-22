table 50100 Vehicles
{
    DataClassification = ToBeClassified;


    fields
    {
        field(1; Model; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

        }

        //Se ponen comillas cuando quieras poner el nombre con espacios
        field(2; "Serial No."; Integer)
        {

        }

        field(3; Description; Text[100])
        {

        }

        field(4; Transmission; Enum "Transmission Type")
        {

        }

        field(5; "List Price"; Decimal)
        {

        }

        field(6; "Date of Manufactoring"; Date)
        {

        }
    }

    keys
    {

        //tkey
        key(Key1; Model, "Serial No.")
        {
            Clustered = true;
        }

        key(Key2; "Date of Manufactoring", Transmission)
        {

        }
    }
}