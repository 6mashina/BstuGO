using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;

namespace BstuGO
{
    public interface INativeHttpHandler
    {
        HttpClientHandler GetNativeHandler();
    }
}
