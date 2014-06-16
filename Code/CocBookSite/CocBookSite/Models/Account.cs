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
    
    public partial class Account
    {
        public Account()
        {
            this.Orders = new HashSet<Order>();
            this.PointTransactions = new HashSet<PointTransaction>();
            this.Ratings = new HashSet<Rating>();
        }
    
        public string Username { get; set; }
        public string Password { get; set; }
        public Nullable<int> RoleID { get; set; }
        public Nullable<bool> Active { get; set; }
    
        public virtual Role Role { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<Order> Orders { get; set; }
        public virtual ICollection<PointTransaction> PointTransactions { get; set; }
        public virtual ICollection<Rating> Ratings { get; set; }
    }
}
