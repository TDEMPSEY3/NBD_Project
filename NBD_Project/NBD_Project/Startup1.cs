using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;
using Owin;

[assembly: OwinStartup(typeof(NBD_Project.Startup1))]

namespace NBD_Project
{
    public class Startup1
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                CookieName = "EntityCookie",
                LoginPath = new PathString("/LogIn"),
                LogoutPath = new PathString("/LogIn"),
                ExpireTimeSpan = System.TimeSpan.FromMinutes(5)
            });

            // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=316888
        }
    }
}
