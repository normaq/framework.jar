.class Landroid/server/BluetoothBondState$1;
.super Ljava/lang/Object;
.source "BluetoothBondState.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothBondState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothBondState;


# direct methods
.method constructor <init>(Landroid/server/BluetoothBondState;)V
    .registers 2
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 4
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 356
    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 357
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 363
    :cond_a
    :goto_a
    return-void

    .line 358
    .restart local p2
    :cond_b
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 359
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_a

    .line 360
    .restart local p2
    :cond_16
    const/16 v0, 0x8

    if-ne p1, v0, :cond_a

    .line 361
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2
    #setter for: Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, p2}, Landroid/server/BluetoothBondState;->access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_a
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 366
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 367
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mA2dpProxy:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$002(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 373
    :cond_9
    :goto_9
    return-void

    .line 368
    :cond_a
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 369
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mHeadsetProxy:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$102(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_9

    .line 370
    :cond_13
    const/16 v0, 0x8

    if-ne p1, v0, :cond_9

    .line 371
    iget-object v0, p0, Landroid/server/BluetoothBondState$1;->this$0:Landroid/server/BluetoothBondState;

    #setter for: Landroid/server/BluetoothBondState;->mSapProxy:Landroid/bluetooth/BluetoothSap;
    invoke-static {v0, v1}, Landroid/server/BluetoothBondState;->access$202(Landroid/server/BluetoothBondState;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    goto :goto_9
.end method
