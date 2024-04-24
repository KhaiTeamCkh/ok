<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="mx-auto max-w-screen-lg">
        <div class="relative h-56 rounded-xl bg-cover bg-center bg-no-repeat shadow-lg bg-[url('https://images.unsplash.com/photo-1567401893414-76b7b1e5a7a5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')]">
            <div class="px-4 pt-8 pb-10">
                <div class="absolute inset-x-0 -bottom-10 mx-auto w-36 rounded-full border-8 border-white shadow-lg">
                    <span class="absolute right-0 m-3 h-3 w-3 rounded-full bg-green-500 ring-2 ring-green-300 ring-offset-2"></span>
                    <img class="mx-auto h-auto w-full rounded-full" src="https://cdn.haitrieu.com/wp-content/uploads/2022/09/Logo-SSSTUTTER-Black.png" alt="" />
                </div>
            </div>
        </div>
        <div class="mt-10 flex flex-col items-start justify-center space-y-4 py-8 px-4 sm:flex-row sm:space-y-0 md:justify-between lg:px-0">
            <div class="max-w-lg">
                <h1 class="text-2xl font-bold text-gray-800">Giới thiệu về: SSStutter</h1>
                <p class="mt-2 text-gray-600"> SSStuter - Chào mừng đến với trang web của chúng tôi - nơi nơi bạn có thể khám phá không gian thời trang đầy màu sắc và sáng tạo  </p>
            </div>
            <div class="">
                <button class="flex whitespace-nowrap rounded-lg bg-gradient-to-r 
                    px-6 py-2 font-bold from-sky-400 to-blue-500 text-white transition hover:translate-y-1">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                    </svg>
                    Liên hệ
                </button>
                <p class="mt-4 flex items-center whitespace-nowrap text-gray-500 sm:justify-end">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z" />
                    </svg>
                    0848926689
                </p>
            </div>
        
        
       
        </div>
     <div class=" w-full items-center space-y-4 py-8 px-4 ">
      <div class="max-w-full">
     <h2 class="text-2xl  font-bold text-gray-800">Giới thiệu mặt hàng</h2>
   <ul>
     <li class="mt-2" >SSS là điểm đến lý tưởng cho những ai đang tìm kiếm sự phong phú và độc đáo trong thế giới thời trang.</li>
     <li>SSS là điểm đến lý tưởng cho những ai đang tìm kiếm sự phong phú và độc đáo trong thế giới thời trang,</li>
     <li> chúng tôi cam kết mang đến cho bạn những lựa chọn tuyệt vời để thể hiện phong cách riêng của mình.</li>
   </ul>

 <h2 class="text-2xl mt-3 font-bold text-gray-800">Giới thiệu nguồn gốc</h2>
   <ul>
     <li>Tại SSS, chúng tôi tự hào là một trong những thương hiệu thời trang nữ có nguồn gốc từ việc sản xuất và may mắn riêng.</li>
     <li>Điều này đảm bảo rằng mỗi sản phẩm được tạo ra từ những bàn tay khéo léo và tâm huyết, từ việc chọn lựa vải liệu đến quá trình sản xuất chi tiết.</li>
     <li>Chúng tôi tin rằng sự tỉ mỉ và tinh tế trong từng đường kim mũi chỉ sẽ làm nên sự khác biệt đối với bạn.</li>
   </ul>

           <h2 class="text-2xl mt-3 font-bold text-gray-800">Cam kết chất lượng</h2>
   <ul>
     <li>Chất lượng luôn là ưu tiên hàng đầu tại SSS.</li>
     <li>Chúng tôi luôn cam kết mang đến cho bạn những sản phẩm thời trang chất lượng cao, từ chất liệu đến thiết kế và cả quy trình sản xuất.</li>
     <li>TMỗi sản phẩm đều được kiểm tra kỹ lưỡng trước khi đến tay bạn, để đảm bảo rằng bạn sẽ luôn hài lòng với sự lựa chọn của mình.</li>
   </ul>

            <%--    <button class="flex whitespace-nowrap rounded-lg bg-gradient-to-r 
                    px-6 py-2 font-bold from-sky-400 to-blue-500 text-white transition hover:translate-y-1">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z" />
                    </svg>
                    Liên hệ
                </button>
                <p class="mt-4 flex items-center whitespace-nowrap text-gray-500 ">
                    <svg xmlns="http://www.w3.org/2000/svg" class="mr-2 inline h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                        <path d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836l.74 4.435a1 1 0 01-.54 1.06l-1.548.773a11.037 11.037 0 006.105 6.105l.774-1.548a1 1 0 011.059-.54l4.435.74a1 1 0 01.836.986V17a1 1 0 01-1 1h-2C7.82 18 2 12.18 2 5V3z" />
                    </svg>
                    0848926689
                </p>--%>
            
</div>
</div>


        </asp:Content>