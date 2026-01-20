using Microsoft.AspNetCore.Mvc;

namespace Exposed.Controller
{
    public class HomeController : Microsoft.AspNetCore.Mvc.Controller
    {
        public IActionResult Index() => base.View();
    }
}