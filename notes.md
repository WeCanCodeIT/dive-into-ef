# Using Entity Framework

1. Install the nuget package called "Entity Framework"
2. Create a Model class (ie. Todo.cs).
```csharp
public class Todo
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Details { get; set; }
}
```
3. Create a Context class (ie. TodoContext.cs).
```csharp
public class TodoContext : DbContext
{
    public TodoContext() : base()
    {
        // Runs the constructor defined in DbContext
    }
    public DbSet<Todo> Todos { get; set; }
}
```
4. In the Package Manager Console, run the following commands:
  - `Enable-Migrations`
  - `Add-Migration InitialCreate` (InitialCreate is whatever name you want for this migration)
  - `Update-Database` Applies your migrations to the database (and creates the db if it doesn't exist).
