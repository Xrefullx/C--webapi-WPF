using System;
using System.Collections.Generic;

namespace lib.Models
{
    public partial class Book
    {
        public long Id { get; set; }
        public string Name { get; set; } = null!;
        public string Author { get; set; } = null!;
    }
}
