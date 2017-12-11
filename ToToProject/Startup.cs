using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ToToProject.Startup))]
namespace ToToProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
