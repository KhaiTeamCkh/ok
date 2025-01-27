﻿<%@ Page Title="SignIN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication1.SignIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="flex w-full my-20 mx-auto items-center justify-center text-gray-600 bg-gray-50">
        <div class="relative">

            <div class="hidden sm:block h-56 w-56 text-indigo-300 absolute a-z-10 -left-20 -top-20">
                <svg id='patternId' width='100%' height='100%' xmlns='http://www.w3.org/2000/svg'>
                    <defs>
                        <pattern id='a' patternUnits='userSpaceOnUse' width='40' height='40' patternTransform='scale(0.6) rotate(0)'>
                            <rect x='0' y='0' width='100%' height='100%' fill='none' />
                            <path d='M11 6a5 5 0 01-5 5 5 5 0 01-5-5 5 5 0 015-5 5 5 0 015 5' stroke-width='1' stroke='none' fill='currentColor' />
                        </pattern>
                    </defs><rect width='800%' height='800%' transform='translate(0,0)' fill='url(#a)' /></svg>
            </div>
            <div class="hidden sm:block h-28 w-28 text-indigo-300 absolute a-z-10 -right-20 -bottom-20">
                <svg id='patternId' width='100%' height='100%' xmlns='http://www.w3.org/2000/svg'>
                    <defs>
                        <pattern id='b' patternUnits='userSpaceOnUse' width='40' height='40' patternTransform='scale(0.5) rotate(0)'>
                            <rect x='0' y='0' width='100%' height='100%' fill='none' />
                            <path d='M11 6a5 5 0 01-5 5 5 5 0 01-5-5 5 5 0 015-5 5 5 0 015 5' stroke-width='1' stroke='none' fill='currentColor' />
                        </pattern>
                    </defs><rect width='800%' height='800%' transform='translate(0,0)' fill='url(#b)' /></svg>
            </div>
            <div class="relative flex flex-col sm:w-[30rem] rounded-lg border-gray-400 bg-white shadow-lg px-4">
                <div class="flex-auto p-6">
                    <!-- Logo -->
                    <div class="mb-10 flex flex-shrink-0 flex-grow-0 items-center justify-center overflow-hidden">
                        <a href="#" class="flex cursor-pointer items-center gap-2 text-indigo-500 no-underline hover:text-indigo-500">
                            <span class="flex-shrink-0 text-3xl font-black lowercase tracking-tight opacity-100">SSStutter</span>
                        </a>
                    </div>
                    <!-- /Logo -->
                    <h4 class="mb-2 font-medium text-gray-700 xl:text-xl">Chào mừng đến với SSStutter!
</h4>
                    <p class="mb-6 text-gray-500">Vui lòng đăng nhập để truy cập tài khoản của bạn</p>

                    <form method="POST" id="" class="mb-4" action="SignIn.aspx.cs">
                        <div class="mb-4">
                            <label for="UserEmail" class="mb-2 inline-block text-xs font-medium uppercase text-gray-700">Email HOẶC TÊN NGƯỜI DÙNG</label>
                            <input type="text" class="block min-w-full cursor-text appearance-none rounded-md border border-gray-400 bg--100 py-2 px-3 text-sm 
                                outline-none focus:border-indigo-500 focus:bg-white focus:text-gray-600 focus:shadow" id="UserEmail" 
                                name="UserEmail" 
                                placeholder=" Nhập email hoặc tên người dùng của bạn" autofocus="" />
                        </div>
                        <div class="mb-4">
                            <div class="relative flex w-full flex-wrap items-stretch">
                                <label for="UserPassword" class="mb-2 inline-block text-xs font-medium uppercase text-gray-700">MẬT KHẨU</label>

                                <input type="password" id="UserPassword" class="relative block min-w-full
                                    cursor-text appearance-none rounded-md border border-gray-400
                                    bg--100 py-2 px-3 text-sm outline-none focus:border-indigo-500 
                                    focus:bg-white focus:text-gray-600 focus:shadow" name="UserPassword" placeholder="············" />
                            </div>
                        </div>
                        <div class="mb-4">
                            <div class="block">
                                <input class="mt-1 mr-2 h-5 w-5 appearance-none rounded border border-gray-300 bg-contain bg-no-repeat align-top
                                    text-black shadow checked:bg-indigo-500 focus:border-indigo-500 focus:shadow"
                                    type="checkbox" id="remember-me" style="background-image: url(&quot;data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 20 20'%3e%3cpath fill='none' stroke='%23fff' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M6 10l3 3l6-6'/%3e%3c/svg%3e&quot;)" checked />
                                <label class="inline-block" for="remember-me">Lưu lại tài khoản</label>
                            </div>
                        </div>
                        <div class="mb-4">
                            <button type="submit" class="mt-4 w-full mx-auto
     block cursor-pointer rounded-lg bg-gradient-to-r 
     from-sky-400 to-blue-500 text-center font-bold text-white pt-3 pb-3 text-white shadow-lg hover:bg-blue-400">Đăng nhập</button>
                        </div>
                    </form>
                <div class="mt-4 text-center">
                    <a href="/SignUp" class="cursor-pointertext-indigo-500  no-underline hover:text-indigo-500">Tạo một tài khoản</a>
                </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>