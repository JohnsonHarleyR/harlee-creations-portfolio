using HarleeCreations.Crosscutting;
using HarleeCreations.Crosscutting.Dtos.Theme;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;

namespace HarleeCreations.Data.Repositories
{
    public class ThemeRepository
    {
        private string Schema = @"[Theme]";
        private string ConnectionString;

        public ThemeRepository()
        {
            ConnectionString = ConnectionStrings.GetConnectionString();
        }

        public void AddColorScheme(ColorSchemeDto colorSchemeDto)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                string sql = $"{Schema}.AddColorScheme";

                connection.Execute(sql,
                    new
                    {
                        UniqueName = colorSchemeDto.UniqueName,
                        V100 = colorSchemeDto.V100,
                        V200 = colorSchemeDto.V200,
                        V300 = colorSchemeDto.V300,
                        V400 = colorSchemeDto.V400,
                        V500 = colorSchemeDto.V500,
                        V600 = colorSchemeDto.V600,
                        V700 = colorSchemeDto.V700,
                        V800 = colorSchemeDto.V800,
                        V900 = colorSchemeDto.V900,
                    },
                    commandType: System.Data.CommandType.StoredProcedure);
            }
        }
    }
}
