.class Lcom/samsung/media/fmradio/FMEventListener$1;
.super Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/internal/IFMEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public earPhoneConnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method public earPhoneDisconnected()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public onAFReceived(J)V
    .registers 7
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    return-void
.end method

.method public onAFStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    return-void
.end method

.method public onChannelFound(J)V
    .registers 7
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 101
    return-void
.end method

.method public onOff(I)V
    .registers 6
    .parameter "reasonCode"

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 124
    return-void
.end method

.method public onOn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    return-void
.end method

.method public onRDSDisabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    return-void
.end method

.method public onRDSEnabled()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v0, v1, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 145
    return-void
.end method

.method public onScanFinished([J)V
    .registers 5
    .parameter "freqArry"

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    return-void
.end method

.method public onScanStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 106
    return-void
.end method

.method public onScanStopped([J)V
    .registers 5
    .parameter "freqArry"

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method

.method public onTune(J)V
    .registers 7
    .parameter "freq"

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    return-void
.end method

.method public recFinish()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public volumeLock()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lcom/samsung/media/fmradio/FMEventListener$1;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    iget-object v0, v0, Lcom/samsung/media/fmradio/FMEventListener;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 172
    return-void
.end method
