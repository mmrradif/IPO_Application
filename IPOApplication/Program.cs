using IPOApplication.Data;
using IPOApplication.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using System.Configuration;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

// Connection with Database
builder.Services.AddDbContext<ApplicationDbContext>(options =>
                options.UseSqlServer(
                    builder.Configuration.GetConnectionString("DbCon")));


builder.Services.AddDatabaseDeveloperPageExceptionFilter();



// Add Identity
builder.Services.AddDefaultIdentity<ApplicationUser>(options => options.SignIn.RequireConfirmedAccount = false)
               .AddRoles<IdentityRole>()
               .AddEntityFrameworkStores<ApplicationDbContext>();
builder.Services.AddControllersWithViews();
builder.Services.AddRazorPages();


//  AUTHORIZATION
builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("AdminCreatePolicy", policy =>
    {
        policy
        .RequireRole("super admin", "admin")
        .RequireClaim("Create Claim", "true");
    });

    options.AddPolicy("AdminEditPolicy", policy =>
    {
        policy
        .RequireRole("super admin", "admin")
        .RequireClaim("Edit Claim", "true");
    });

    options.AddPolicy("AdminDeletePolicy", policy =>
    {
        policy
        .RequireRole("super admin", "admin")
        .RequireClaim("Delete Claim", "true");
    });

});


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseMigrationsEndPoint();
}
else
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();

app.Run();
