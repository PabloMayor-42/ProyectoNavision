table 50101 SalesTransaction
{
    DataClassification = ToBeClassified;
    DrillDownPageId = "Sales Transaction List";

    fields
    {
        field(1; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Salesperson Code"; Code[10])
        {
            TableRelation = "Salesperson/Purchaser" where("Commission %" = filter('<>0'));
        }

        field(3; "No."; Code[20])
        {
            TableRelation = if (Type = const(Item)) Item
            else if (Type = const(Account)) "G/L Account"
            else if (Type = const(Resource)) Resource
            else if (Type = const(Vehicle)) Vehicles."Serial No.";
        }

        field(4; Amount; Decimal)
        {

        }

        field(5; Type; Enum "Transactions Line Type")
        {

        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }


}