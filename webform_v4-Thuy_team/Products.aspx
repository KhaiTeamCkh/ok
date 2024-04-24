<%@ Page Title="product list" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="mx-auto max-w-screen-lg">
        <div class="relative h-56 rounded-xl bg-cover bg-center bg-no-repeat shadow-l bg-[url('https://marketplace.canva.com/EAFVHstxnwk/1/0/1600w/canva-beige-aesthetic-exclusive-fashion-wear-collection-clothing-banner-BZb4KkCdNP0.jpg')]"">
            <div class="px-4 pt-8 pb-10">
                <div class="absolute inset-x-0 -bottom-10 mx-auto w-36 rounded-full border-8 border-white shadow-lg">
                    <span class="absolute right-0 m-3 h-3 w-3 rounded-full bg-green-500 ring-2 ring-green-300 ring-offset-2"></span>
                    <img class="mx-auto h-auto w-full rounded-full" src="https://cdn.haitrieu.com/wp-content/uploads/2022/09/Logo-SSSTUTTER-Black.png" alt="" />
                </div>
            </div>
        </div>
        
        <main class=" px-2 pb-20 sm:px-8 lg:mt-16 lg:gap-x-4 lg:px-0">
            <div class="flex flex-column items-start">
                <div class="text-4xl font-bold px-5 w-full text-center" style="color: #0094ff">Sản phẩm </div>
                <div class="grid md:grid-cols-4 grid-cols-1">
                    <asp:PlaceHolder ID="ProductsPlaceholder" runat="server"></asp:PlaceHolder>
                </div>
            </div>

        </main>
    </div>

</asp:Content>
