page 50117 "Secretaria/Admón. Role Center"
{
    PageType = RoleCenter;
    Caption = 'Secreteria Administracion Role Center', comment = 'ESP="Secretaría Administración"';

    layout
    {
        area(RoleCenter)
        {
            group("")
            {
                part("Information"; "Information Cue")
                {
                    Caption = 'Information', comment = 'ESP="Información"';
                    AccessByPermission = TableData "Information Cue Table" = R;
                    ApplicationArea = Basic, Suite;
                }

                part("Alumnos"; "Students Cue")
                {
                    Caption = 'Alumnos', comment = 'ESP="Alumnos"';
                    AccessByPermission = TableData Students = R;
                    ApplicationArea = Basic, Suite;
                }
                part("Profesores"; "Professors Cue")
                {
                    Caption = 'Profesores', comment = 'ESP="Profesores"';
                    AccessByPermission = TableData Senate = R;
                    ApplicationArea = Basic, Suite;
                }
                part("PAS"; "PAS Cue")
                {
                    Caption = 'PAS', comment = 'ESP="PAS"';
                    AccessByPermission = TableData Staff = R;
                    ApplicationArea = Basic, Suite;
                }
            }




        }

    }

    actions
    {
        area(Processing)
        {

        }
    }
}


profile "Secretary Rol"
{
    Caption = 'Secretary Rol', comment = 'ESP="Secretaria/Admón. Rol"';
    RoleCenter = "Secretaria/Admón. Role Center";
}