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
    
    public partial class Rating
    {
        public int RateID { get; set; }
        public string Username { get; set; }
        public Nullable<int> BookID { get; set; }
        public Nullable<double> Score { get; set; }
        public Nullable<System.DateTime> RateDate { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual Book Book { get; set; }
    }
}
