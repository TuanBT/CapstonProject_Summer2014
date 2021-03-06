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
    
    public partial class Order
    {
        public Order()
        {
            this.OrderDetails = new HashSet<OrderDetail>();
        }
    
        public int OrderID { get; set; }
        public string Username { get; set; }
        public Nullable<System.DateTime> RequestDate { get; set; }
        public string Notes { get; set; }
        public Nullable<double> Total { get; set; }
        public string Status { get; set; }
        public string Fullname { get; set; }
        public string Phone { get; set; }
        public string District { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string Elog { get; set; }
        public string GiftCode { get; set; }
    
        public virtual Account Account { get; set; }
        public virtual ICollection<OrderDetail> OrderDetails { get; set; }
    }
}
