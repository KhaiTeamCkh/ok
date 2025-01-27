﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string searchTerm = txtSearchName.Text.Trim(); // Trim leading/trailing spaces

            // Build the SQL query based on search term
            string sql = "SELECT * FROM Products WHERE isDeleted = 0 and  Name LIKE '%" + searchTerm + "%'";

            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand(sql, connection);

                SqlDataReader reader = command.ExecuteReader();

                if (!reader.HasRows)
                {
                    // No items found, display empty state HTML
                    ProductsPlaceholder.Controls.Add(new LiteralControl("<p>No items found</p>"));
                }
                else
                {

                    while (reader.Read())
                    {
                        // Create a product card HTML string dynamically
                        string productId = reader["ProductId"].ToString();
                        string imageUrl =  reader["image_url"].ToString(); // Assuming the image file path is stored in the database
                        string productName = reader["Name"].ToString();
                        //string description = reader["Description"].ToString();
                        string lastPrice = reader["LastPrice"].ToString();
                        string price = reader["Price"].ToString();

                        string productCardHtml = $@"
            <div class="" relative m-10 flex w-full max-w-xs flex-col overflow-hidden rounded-2xl
        bg-white shadow-sm border-2 border-solid transition cursor-pointer hover:border-blue-400 hover:shadow-xl"">
              <a class=""relative mx-3 mt-3 flex  overflow-hidden rounded-2xl"" href=""/ProductDetails.aspx?productId={productId}"">
                <img class=""object-cover w-[285.6px] h-[285.6px]"" src={imageUrl} alt=""product image"" />
              </a>
              <div class=""mt-2 px-2 pb-2"">
                <a  href=""/ProductDetails.aspx?productId={productId}"">
                  <h5 class=""text-lg  line-clamp-2 bg-gradient-to-r from-sky-400 to-blue-500 bg-clip-text text-transparent font-bold "">{productName}</h5>
                </a>
                <div class=""mt-2 mb-5 flex items-center justify-between"">
                  <p>
                    <span class=""text-xl font-medium text-red-400"">{lastPrice} đ</span>
                    <span class=""text-sm text-slate-900 line-through"">{price} đ</span>
                  </p>
                </div>
             
<a href=""/Orders.aspx?productId={productId}"" id=""addToCartBtn""  class=""flex p-2 items-center mx-auto w-full justify-center rounded-md bg-gradient-to-r
            from-sky-400 to-blue-500 
            px-5 text-center text-sm font-medium text-white hover:from-sky-500 hover:to-blue-600  
                focus:outline-none focus:ring-4 focus:ring-blue-300""
 type=""button"">
  <svg xmlns=""http://www.w3.org/2000/svg"" class=""mr-2 h-6 w-6"" fill=""none"" viewBox=""0 0 24 24"" stroke=""currentColor"" stroke-width=""2"">
                    <path stroke-linecap=""round"" stroke-linejoin=""round"" d=""M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"" />
                  </svg>
  Thêm vào giỏ
</a>
              </div>
            </div>
               ";



                        // Add the product card HTML to a placeholder control or directly to the page
                        ProductsPlaceholder.Controls.Add(new LiteralControl(productCardHtml));
                    }

                    reader.Close();
                } // Make sure to close the SqlConnection block

            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string searchTerm = txtSearchName.Text.Trim(); // Trim leading/trailing spaces

            // Build the SQL query based on search term
            string sql = "SELECT * FROM Products WHERE isDeleted = 0 and  Name LIKE '%" + searchTerm + "%'";

            // Connect to SQL Server and execute the query
            string connectionString = "Server=localhost\\SQLEXPRESS;Database=db_ECommerceShop;Trusted_Connection=True;TrustServerCertificate=true;";
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand(sql, conn);
            SqlDataReader reader = cmd.ExecuteReader();

            // Bind search results to a data source (e.g., GridView) for display
            // ... your code to display search results ...

            if (!reader.HasRows)
            {
                // No items found, display empty state HTML
                ProductsPlaceholder.Controls.Add(new LiteralControl("<p>No items found</p>"));
            }
            else
            {

                while (reader.Read())
                {
                    // Create a product card HTML string dynamically
                    string productId = reader["ProductId"].ToString();
                    string imageUrl = reader["image_url"].ToString();
                    string productName = reader["Name"].ToString();
                    //string description = reader["Description"].ToString();
                    string lastPrice = reader["LastPrice"].ToString();
                    string price = reader["Price"].ToString();

                    string productCardHtml = $@"
            <div class="" relative m-10 flex w-full max-w-xs flex-col overflow-hidden rounded-2xl
        bg-white shadow-sm border-2 border-solid transition cursor-pointer hover:border-blue-400 hover:shadow-xl"">
              <a class=""relative mx-3 mt-3 flex h-44 overflow-hidden rounded-2xl"" href=""/ProductDetails.aspx?productId={productId}"">
                <img class=""object-cover w-full"" src=""{imageUrl}"" alt=""product image"" />
              </a>
              <div class=""mt-2 px-2 pb-2"">
                <a  href=""/ProductDetails.aspx?productId={productId}"">
                  <h5 class=""text-lg  line-clamp-2 bg-gradient-to-r from-sky-400 to-blue-500 bg-clip-text text-transparent font-bold "">{productName}</h5>
                </a>
                <div class=""mt-2 mb-5 flex items-center justify-between"">
                  <p>
                    <span class=""text-xl font-medium text-red-400"">{lastPrice} đ</span>
                    <span class=""text-sm text-slate-900 line-through"">{price} đ</span>
                  </p>
                </div>
             
<a href=""#"" id=""addToCartBtn""  class=""flex p-2 items-center mx-auto w-full justify-center rounded-md bg-gradient-to-r
            from-sky-400 to-blue-500 
            px-5 text-center text-sm font-medium text-white hover:from-sky-500 hover:to-blue-600  
                focus:outline-none focus:ring-4 focus:ring-blue-300""
 type=""button"">
  <svg xmlns=""http://www.w3.org/2000/svg"" class=""mr-2 h-6 w-6"" fill=""none"" viewBox=""0 0 24 24"" stroke=""currentColor"" stroke-width=""2"">
                    <path stroke-linecap=""round"" stroke-linejoin=""round"" d=""M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"" />
                  </svg>
  Thêm vào giỏ
</a>
              </div>
            </div>
               ";



                    // Add the product card HTML to a placeholder control or directly to the page
                    ProductsPlaceholder.Controls.Add(new LiteralControl(productCardHtml));
                }

                reader.Close();
            } // Make sure to close the SqlConnection block
            conn.Close();
        }


    }
}