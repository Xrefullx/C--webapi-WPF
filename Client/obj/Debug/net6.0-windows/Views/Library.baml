   M S B A M L   `   `   `  ????A  =Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Client.ViewsClient.Views  5   	       Client.Views.Library   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:Client.Views     5   	     ? Title$  Library??5   	   $	??555??6   $
??1250??6&   .??5	      ?  ? ColumnDefinitions 5
   
   ?? 5      $
??141* ?6   ?? 5      $??1109* ?6   .+?5   
   ?? -   5         ??Name$ lblName??5      $??Name : ??6!   $
??Left=?63   $??	70,55,0,0q?6N   $	??Top=?6a   ?? 5   
   -   5        $ 	lblAuthor??5      $??	Author : ??6#   $
??Left=?67   $??	71,89,0,0q?6R   $	??Top=?6e   ?? 5   
   -   5         ??Name$ 
txtboxname??5      $
??Left=?6&   $??
126,62,0,0q?6A    ?? TextWrapping$
 Wrap=?6U   $	??Top=?6i   $	??222??6?   $??20??6?   $??2??6?   ?? 5   
   -   5        $ txtboxauthor??5      $
??Left=?6(   $??
127,94,0,0q?6C   $
 Wrap=?6W   $	??Top=?6k   $	??221??6?   $??2??6?   ?? 5   
   -   5        $??	Save book??5      $
??Left=?6%   $??
88,140,0,0q?6@   $	??Top=?6T   $	??103??6?   $??2??6?   ?? 5   
   -   5         ??Name$ RefreshButton??5      $??Refresh??6(   $
??Left=?6:   $??625,474,0,0q?6U   $	??Top=?6j    J? RenderTransformOrigin$ -0.538,0.503&?6?   $??24??6?   $??94??6?   $??1??6?   ?? 5   
   -   5        $ 
lblmesseng??5      $?? ??6$   $
??Left=?6/   $??
35,119,0,0q?6J   $	??Top=?6^   $	??109??6v   $??1??6?   &   System.Windows.Controls.DataGrid  5   
   <my-http://schemas.microsoft.com/wpf/2008/toolkit     5      -   5          Name$ dgBooks??5         CanUserAddRows$
 True??5      $??230,21,33,110q?5      	   AutoGenerateColumns$	 False??5      $??1??6/   
   Columns
 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ id??6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   ??  ?? Path$ id?  5      $
 Name??6%    63   ?? $
 Name?  5      $ Author??6%    65   ?? $ Author?4  .System.Windows.Controls.DataGridTemplateColumn  5      $ Edit Actions??6)      CellTemplate 5       ?? 5!      .R?5"      ?? -	   5        .??5"   9   Edit6?   5#      5%        5&      $ Delete Actions??6)    5'      ?? 5(      .R?5)      ?? -
   5        .??5)   ;   Delete6C   5*      5,      5.      ?? 5/   
   -   5        $ bookid??5/      $
??Left=?6"   $y?Hidden=?6=   $??
127,32,0,0q?6Q   $
 Wrap=?6e   $	??Top=?6y   $	??120??6?   $??2??6?   ?? 50   
   -   5        $??1??50      $??Update book??6!   $
??Left=?67   $??
89,139,0,0q?6R   $	??Top=?6f   $??24??6~   $??92??6?   6?   51      52      