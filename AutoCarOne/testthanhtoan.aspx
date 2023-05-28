<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testthanhtoan.aspx.cs" Inherits="AutoCarOne.testthanhtoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <!-- Thêm nút PayPal -->
<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_xclick" />
<input type="hidden" name="business" value="merchant-email@example.com" />
<input type="hidden" name="lc" value="VN" />
<input type="hidden" name="item_name" value="Product Name" />
<input type="hidden" name="amount" value="100.00" />
<input type="hidden" name="currency_code" value="USD" />
<input type="hidden" name="button_subtype" value="services" />
<input type="hidden" name="no_note" value="1" />
<input type="hidden" name="tax_rate" value="20.000" />
<input type="hidden" name="shipping" value="20.00" />
<input type="hidden" name="bn" value="PP-BuyNowBF:btn_paynow_LG.gif:NonHostedGuest" />
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_paynow_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!" />
<img alt="" border="0" src="https://www.paypalobjects.com/vi_VN/i/scr/pixel.gif" width="1" height="1" />



</form>
</body>
</html>
