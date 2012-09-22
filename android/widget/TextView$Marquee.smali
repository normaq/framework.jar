.class final Landroid/widget/TextView$Marquee;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x4b0

.field private static final MARQUEE_DELTA_MAX:F = 0.07f

.field private static final MARQUEE_PIXELS_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RESOLUTION:I = 0x21

.field private static final MARQUEE_RESTART_DELAY:I = 0x4b0

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B = 0x0t

.field private static final MESSAGE_RESTART:I = 0x3

.field private static final MESSAGE_START:I = 0x1

.field private static final MESSAGE_TICK:I = 0x2


# instance fields
.field private mFadeStop:F

.field private mGhostOffset:F

.field private mGhostStart:F

.field mMaxFadeScroll:F

.field private mMaxScroll:F

.field private mRepeatLimit:I

.field mScroll:F

.field private final mScrollUnit:F

.field private mStatus:B

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 8090
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8079
    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 8091
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 8092
    .local v0, density:F
    const/high16 v1, 0x41f0

    mul-float/2addr v1, v0

    const/high16 v2, 0x4204

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    .line 8093
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 8094
    return-void
.end method

.method private resetScroll()V
    .registers 3

    .prologue
    .line 8146
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 8147
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8148
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 8149
    :cond_10
    return-void
.end method


# virtual methods
.method getGhostOffset()F
    .registers 2

    .prologue
    .line 8177
    iget v0, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    .line 8098
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 8115
    :cond_6
    :goto_6
    return-void

    .line 8100
    :pswitch_7
    iput-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 8101
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    goto :goto_6

    .line 8104
    :pswitch_d
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->tick()V

    goto :goto_6

    .line 8107
    :pswitch_11
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-ne v0, v1, :cond_6

    .line 8108
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    if-ltz v0, :cond_1f

    .line 8109
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 8111
    :cond_1f
    iget v0, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_6

    .line 8098
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 8189
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isStopped()Z
    .registers 2

    .prologue
    .line 8193
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method shouldDrawGhost()Z
    .registers 3

    .prologue
    .line 8185
    iget-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method shouldDrawLeftFade()Z
    .registers 3

    .prologue
    .line 8181
    iget v0, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v1, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method start(I)V
    .registers 9
    .parameter "repeatLimit"

    .prologue
    const/4 v6, 0x1

    .line 8152
    if-nez p1, :cond_7

    .line 8153
    invoke-virtual {p0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 8174
    :cond_6
    :goto_6
    return-void

    .line 8156
    :cond_7
    iput p1, p0, Landroid/widget/TextView$Marquee;->mRepeatLimit:I

    .line 8157
    iget-object v4, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8158
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_6

    iget-object v4, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_6

    .line 8159
    iput-byte v6, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 8160
    const/4 v4, 0x0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 8161
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 8163
    .local v3, textWidth:I
    iget-object v4, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 8164
    .local v1, lineWidth:F
    int-to-float v4, v3

    const/high16 v5, 0x4040

    div-float v0, v4, v5

    .line 8165
    .local v0, gap:F
    int-to-float v4, v3

    sub-float v4, v1, v4

    add-float/2addr v4, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    .line 8166
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    int-to-float v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    .line 8167
    add-float v4, v1, v0

    iput v4, p0, Landroid/widget/TextView$Marquee;->mGhostOffset:F

    .line 8168
    int-to-float v4, v3

    const/high16 v5, 0x40c0

    div-float/2addr v4, v5

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mFadeStop:F

    .line 8169
    iget v4, p0, Landroid/widget/TextView$Marquee;->mGhostStart:F

    add-float/2addr v4, v1

    add-float/2addr v4, v1

    iput v4, p0, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    .line 8171
    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 8172
    const-wide/16 v4, 0x4b0

    invoke-virtual {p0, v6, v4, v5}, Landroid/widget/TextView$Marquee;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method stop()V
    .registers 2

    .prologue
    .line 8138
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    .line 8139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView$Marquee;->removeMessages(I)V

    .line 8140
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/TextView$Marquee;->removeMessages(I)V

    .line 8141
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView$Marquee;->removeMessages(I)V

    .line 8142
    invoke-direct {p0}, Landroid/widget/TextView$Marquee;->resetScroll()V

    .line 8143
    return-void
.end method

.method tick()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 8118
    iget-byte v1, p0, Landroid/widget/TextView$Marquee;->mStatus:B

    if-eq v1, v3, :cond_6

    .line 8135
    :cond_5
    :goto_5
    return-void

    .line 8122
    :cond_6
    invoke-virtual {p0, v3}, Landroid/widget/TextView$Marquee;->removeMessages(I)V

    .line 8124
    iget-object v1, p0, Landroid/widget/TextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 8125
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8126
    :cond_1f
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mScrollUnit:F

    add-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 8127
    iget v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    iget v2, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3c

    .line 8128
    iget v1, p0, Landroid/widget/TextView$Marquee;->mMaxScroll:F

    iput v1, p0, Landroid/widget/TextView$Marquee;->mScroll:F

    .line 8129
    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/TextView$Marquee;->sendEmptyMessageDelayed(IJ)Z

    .line 8133
    :goto_38
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_5

    .line 8131
    :cond_3c
    const-wide/16 v1, 0x21

    invoke-virtual {p0, v3, v1, v2}, Landroid/widget/TextView$Marquee;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_38
.end method
