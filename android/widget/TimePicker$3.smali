.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 11
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 202
    .local v1, minValue:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 203
    .local v0, maxValue:I
    if-ne p2, v0, :cond_53

    if-ne p3, v1, :cond_53

    .line 205
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .line 206
    .local v2, newHour:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_42

    const/16 v5, 0xc

    if-ne v2, v5, :cond_42

    .line 207
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_51

    :goto_3a
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z

    .line 208
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)V

    .line 210
    :cond_42
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 220
    .end local v2           #newHour:I
    :cond_4b
    :goto_4b
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 221
    return-void

    .restart local v2       #newHour:I
    :cond_51
    move v3, v4

    .line 207
    goto :goto_3a

    .line 211
    .end local v2           #newHour:I
    :cond_53
    if-ne p2, v1, :cond_4b

    if-ne p3, v0, :cond_4b

    .line 213
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    .line 214
    .restart local v2       #newHour:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_7f

    const/16 v5, 0xb

    if-ne v2, v5, :cond_7f

    .line 215
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_89

    :goto_77
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$002(Landroid/widget/TimePicker;Z)Z

    .line 216
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)V

    .line 218
    :cond_7f
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_4b

    :cond_89
    move v3, v4

    .line 215
    goto :goto_77
.end method
