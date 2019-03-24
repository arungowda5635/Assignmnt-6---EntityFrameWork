namespace EntityFrameWork
{
    using System;
    using System.Data.Entity;
    using System.Linq;

    public class DataBaseModel : DbContext
    {
        // Your context has been configured to use a 'DataBaseModel' connection string from your application's 
        // configuration file (App.config or Web.config). By default, this connection string targets the 
        // 'EntityFrameWork.DataBaseModel' database on your LocalDb instance. 
        // 
        // If you wish to target a different database and/or database provider, modify the 'DataBaseModel' 
        // connection string in the application configuration file.
        public DataBaseModel()
            : base("name=DataBaseModel")
        {
        }

        public virtual DbSet<customer> Customers {get; set;}

        // Add a DbSet for each entity type that you want to include in your model. For more information 
        // on configuring and using a Code First model, see http://go.microsoft.com/fwlink/?LinkId=390109.

        // public virtual DbSet<MyEntity> MyEntities { get; set; }
    }

    public class customer {
            public String Sname { get; set; }
            public String Semail { get; set; }
            public String Spwd { get; set; }
    }

    //public class MyEntity
    //{
    //    public int Id { get; set; }
    //    public string Name { get; set; }
    //}
}