using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Client.Models
{
    public partial class Books
    {
        public long Id { get; set; }
        public string Name { get; set; } = null!;
        public string Author { get; set; } = null!;
    }

}

    