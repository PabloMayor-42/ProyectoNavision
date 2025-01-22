tableextension 50100 "Salesperson/Purchaser" extends "Salesperson/Purchaser"
{
    fields
    {
        //Campo calculado (FlowField) que muestra el total de transacciones de venta (SalesTransaction)
        field(50100; "Total Sales"; Decimal)
        {
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum(SalesTransaction.Amount where("Salesperson Code" = field(Code), Type = field("Filter Type")));
        }

        field(50101; "Filter Type"; Enum "Transactions Line Type")
        {
            FieldClass = FlowFilter;

            //Poner en el FlowField una condición a mayores de coincidencia del filtro
        }
    }
}