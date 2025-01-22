page 50105 "Ficha de pruebas"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    PromotedActionCategories = 'New,Process,Report,Personal14,Personal15';

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Campo1"; var1)
                {
                    ApplicationArea = all;
                }
                field("Campo2"; var2)
                {

                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Action1)
            {
                Caption = 'Mi accion1', comment = 'ESP="Mi accion1"';
                ApplicationArea = all;
                Promoted = true;
                PromotedOnly = true;
                trigger OnAction()
                begin

                end;
            }
        }
        area(Navigation)
        {
            action(Action2)
            {
                Caption = 'Mi accion1', comment = 'ESP="Mi accion1"';
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }

        }

        area(Creation)
        {
            action(Action3)
            {
                Caption = 'Mi accion1', comment = 'ESP="Mi accion1"';
                ApplicationArea = all;
                trigger OnAction()
                begin

                end;
            }

        }

        area(Reporting)
        {
            action(Action4)
            {
                Caption = 'Mi accion1', comment = 'ESP="Mi accion1"';
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Category4;
                trigger OnAction()
                begin

                end;
            }

        }
    }

    var
        var1: Integer;
        var2: Char;
}