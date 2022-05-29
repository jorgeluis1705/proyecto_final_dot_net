using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(dotnetProyecto.Startup))]
namespace dotnetProyecto
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
