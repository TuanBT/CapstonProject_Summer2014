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
    
    public partial class SearchHistory
    {
        public int AutoID { get; set; }
        public string SearchValue { get; set; }
        public string Username { get; set; }
        public Nullable<int> HitCount { get; set; }
        public Nullable<System.DateTime> CreatedDate { get; set; }
    }
}
