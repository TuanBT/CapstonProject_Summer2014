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
    
    public partial class MusicRating
    {
        public int RateID { get; set; }
        public string UserName { get; set; }
        public int MusicId { get; set; }
        public Nullable<int> Score { get; set; }
        public Nullable<System.DateTime> RateDate { get; set; }
        public Nullable<bool> Active { get; set; }
    
        public virtual Music Music { get; set; }
    }
}
