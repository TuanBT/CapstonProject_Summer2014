//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CocBookSite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class BookPrice
    {
        public int BookID { get; set; }
        public System.DateTime ApplyTime { get; set; }
        public Nullable<double> Price { get; set; }
    
        public virtual Book Book { get; set; }
    }
}
