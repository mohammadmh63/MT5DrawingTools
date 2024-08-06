//+------------------------------------------------------------------+
//|                                                 DrowingTools.mq5 |
//|                                         Mohammad hossein Rabbani |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Mohammad hossein Rabbani"
#property link      ""
#property version   "1.00"
#property indicator_chart_window

#include <Controls\Button.mqh>
#include <Controls\Panel.mqh>
#include <ChartObjects\ChartObjectsLines.mqh>
#include <ChartObjects\ChartObjectsShapes.mqh>


input color box1_color  = clrBlack ;   // Box 1 color
input color box2_color  = clrBlack ;   // Box 2 color
input color box3_color  = clrBlack ;   // Box 3 color
input color line1_color = clrAqua ;    // Line 1 color
input int   line1_width = 5 ;          // Line 1 width
input color line2_color = clrAqua ;    // Line 2 color
input int   line2_width = 4 ;          // Line 2 width
input color line3_color = clrAqua ;    // Line 3 color
input int   line3_width = 3 ;          // Line 3 width
input int   x_margin    = 3 ;          // Horizental margin
input int   y_margin    = 200 ;        // Vertical margin
input int   button_width = 15 ;        // Buttons width
input int   button_height = 14 ;       // Buttons high
input int   txt_size    = 7   ;        // Font size

const int y_b1 = y_margin ;
const int y_b2 = y_b1 + button_height + 1 ;
const int y_b3 = y_b2 + button_height + 1 ; ;

const int y_b4 = y_b3 + button_height + 10 ; ;
const int y_b5 = y_b4 + button_height + 1 ; ;
const int y_b6 = y_b5 + button_height + 1 ; ;

const int y_b7 = y_b6 + button_height + 10 ; ;

color txt_color = ChartGetInteger(0, CHART_COLOR_BACKGROUND);

CButton  box1_button ;
CButton  box2_button ;
CButton  box3_button ;
CButton  line1_button ;
CButton  line2_button ;
CButton  line3_button ;
CButton  clear_button ;


#define postname        " created by DrowingTools"
#define box1buttonname  "Box 1 button @DrowingTools"
#define box2buttonname  "Box 2 button @DrowingTools"
#define box3buttonname  "Box 3 button @DrowingTools"
#define line1buttonname "Line 1 button @DrowingTools"
#define line2buttonname "Line 2 button @DrowingTools"
#define line3buttonname "Line 3 button @DrowingTools"
#define clearbuttonname "Clear button @DrowingTools"
#define boxprename      "Box "
#define lineprename     "Line "

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   creat_panel();
//---
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int OnDeinit()
  {

   box1_button.Destroy();
   box2_button.Destroy();
   box3_button.Destroy();
   line1_button.Destroy();
   line2_button.Destroy();
   line3_button.Destroy();

   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---

//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
   if(id == CHARTEVENT_OBJECT_CLICK)
     {
      if(sparam == box1buttonname)
        {
         Print("click on",box1buttonname);
         create_box(box1_color);
        }
      else
         if(sparam == box2buttonname)
           {
            Print("click on",box2buttonname);
           }
         else
            if(sparam == box3buttonname)
              {
               Print("click on",box3buttonname);
              }
            else
               if(sparam == line1buttonname)
                 {
                  Print("click on",line1buttonname);
                 }
               else
                  if(sparam == line2buttonname)
                    {
                     Print("click on",line2buttonname);
                    }
                  else
                     if(sparam == line3buttonname)
                       {
                        Print("click on",line3buttonname);
                       }
                     else
                        if(sparam == clearbuttonname)
                          {
                           Print("click on",clearbuttonname);
                          }

     }

  }
//+------------------------------------------------------------------+
void creat_panel()
  {

   box1_button.Create(0, box1buttonname, 0, x_margin, y_b1, x_margin, y_margin);
   box1_button.Text("B");
   box1_button.FontSize(txt_size);
   box1_button.Color(txt_color);
   box1_button.ColorBackground(box1_color);
   box1_button.Width(button_width);
   box1_button.Height(button_height);
   box1_button.Pressed(false);

   box2_button.Create(0, box2buttonname, 0, x_margin, y_b2, 0, 0);
   box2_button.Text("B");
   box2_button.FontSize(txt_size);
   box2_button.Color(txt_color);
   box2_button.ColorBackground(box2_color);
   box2_button.Width(button_width);
   box2_button.Height(button_height);
   box2_button.Pressed(false);

   box3_button.Create(0, box3buttonname, 0, x_margin, y_b3, 0, 0);
   box3_button.Text("B");
   box3_button.FontSize(txt_size);
   box3_button.Color(txt_color);
   box3_button.ColorBackground(box3_color);
   box3_button.Width(button_width);
   box3_button.Height(button_height);
   box3_button.Pressed(false);

   line1_button.Create(0, line1buttonname, 0, x_margin, y_b4, 0, 0);
   line1_button.Text("L");
   line1_button.FontSize(txt_size);
   line1_button.Color(txt_color);
   line1_button.ColorBackground(line1_color);
   line1_button.Width(button_width);
   line1_button.Height(button_height);
   line1_button.Pressed(false);

   line2_button.Create(0, line2buttonname, 0, x_margin, y_b5, 0, 0);
   line2_button.Text("L");
   line2_button.FontSize(txt_size);
   line2_button.Color(txt_color);
   line2_button.ColorBackground(line2_color);
   line2_button.Width(button_width);
   line2_button.Height(button_height);
   line2_button.Pressed(false);

   line3_button.Create(0, line3buttonname, 0, x_margin, y_b6, 0, 0);
   line3_button.Text("L");
   line3_button.FontSize(txt_size);
   line3_button.Color(txt_color);
   line3_button.ColorBackground(line3_color);
   line3_button.Width(button_width);
   line3_button.Height(button_height);
   line3_button.Pressed(false);

   clear_button.Create(0, clearbuttonname, 0, x_margin, y_b7, 0, 0);
   clear_button.Text("C");
   clear_button.FontSize(txt_size);
   clear_button.Color(txt_color);
   clear_button.ColorBackground(box1_color);
   clear_button.Width(button_width);
   clear_button.Height(button_height);
   clear_button.Pressed(false);

  }
//+------------------------------------------------------------------+
void create_box(color boxcolor)
{
int count = ObjectsTotal(0,0,OBJ_RECTANGLE)+1;
string scount = IntegerToString(count,3,'0');
string newname = boxprename + scount + postname ;

int firstbar = ChartGetInteger(0,CHART_VISIBLE_BARS)-10;
MqlRates candels[]={};
CopyRates(NULL,PERIOD_CURRENT,2,firstbar,candels);
double p0 = (ChartGetDouble(0,CHART_PRICE_MAX)-ChartGetDouble(0,CHART_PRICE_MIN))/20 ;
double p1 = ChartGetDouble(0,CHART_PRICE_MAX)-(p0*9);
double p2 = ChartGetDouble(0,CHART_PRICE_MAX)-(p0*10);

ObjectCreate(0,newname,OBJ_RECTANGLE,0,candels[firstbar-1].time,p1,candels[0].time,p2);
ObjectSetInteger(0,newname,OBJPROP_COLOR,boxcolor);
ObjectSetInteger(0,newname,OBJPROP_BACK,true);
ObjectSetInteger(0,newname,OBJPROP_SELECTABLE,true);
ObjectSetInteger(0,newname,OBJPROP_SELECTED,true);
ObjectSetInteger(0,newname,OBJPROP_HIDDEN,false);
ObjectSetInteger(0,newname,OBJPROP_FILL,true);

ChartRedraw(0);
}