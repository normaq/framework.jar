.class Landroid/webkit/WebView$DateTimePicker$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView$DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebView$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebView$DateTimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 6908
    iput-object p1, p0, Landroid/webkit/WebView$DateTimePicker$2;->this$1:Landroid/webkit/WebView$DateTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 6910
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$2;->this$1:Landroid/webkit/WebView$DateTimePicker;

    #setter for: Landroid/webkit/WebView$DateTimePicker;->mhour:I
    invoke-static {v0, p2}, Landroid/webkit/WebView$DateTimePicker;->access$2302(Landroid/webkit/WebView$DateTimePicker;I)I

    .line 6911
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$2;->this$1:Landroid/webkit/WebView$DateTimePicker;

    #setter for: Landroid/webkit/WebView$DateTimePicker;->mminute:I
    invoke-static {v0, p3}, Landroid/webkit/WebView$DateTimePicker;->access$2402(Landroid/webkit/WebView$DateTimePicker;I)I

    .line 6912
    iget-object v0, p0, Landroid/webkit/WebView$DateTimePicker$2;->this$1:Landroid/webkit/WebView$DateTimePicker;

    #calls: Landroid/webkit/WebView$DateTimePicker;->updatetime()V
    invoke-static {v0}, Landroid/webkit/WebView$DateTimePicker;->access$2500(Landroid/webkit/WebView$DateTimePicker;)V

    .line 6913
    return-void
.end method
