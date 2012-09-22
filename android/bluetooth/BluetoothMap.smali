.class public Landroid/bluetooth/BluetoothMap;
.super Ljava/lang/Object;
.source "BluetoothMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothMap$ServiceListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final MAP_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.map.intent.MAP_PREVIOUS_STATE"

.field public static final MAP_STATE:Ljava/lang/String; = "android.bluetooth.map.intent.MAP_STATE"

.field public static final MAP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.bluetooth.map.intent.action.MAP_STATE_CHANGED"

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMap"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothMap;

.field private mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothMap$ServiceListener;)V
    .registers 6
    .parameter "context"
    .parameter "l"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 238
    new-instance v0, Landroid/bluetooth/BluetoothMap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothMap$1;-><init>(Landroid/bluetooth/BluetoothMap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    .line 115
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 118
    const-string v0, "BluetoothMap"

    const-string v1, "Could not bind to Bluetooth Map Service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_29
    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothMap;Landroid/bluetooth/IBluetoothMap;)Landroid/bluetooth/IBluetoothMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    return-object p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap$ServiceListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;

    return-object v0
.end method

.method public static doesClassMatchSink(Landroid/bluetooth/BluetoothClass;)Z
    .registers 2
    .parameter "btClass"

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_c

    .line 234
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 232
    :sswitch_9
    const/4 v0, 0x1

    goto :goto_8

    .line 227
    nop

    :sswitch_data_c
    .sparse-switch
        0x100 -> :sswitch_9
        0x104 -> :sswitch_9
        0x108 -> :sswitch_9
        0x10c -> :sswitch_9
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 256
    const-string v0, "BluetoothMap"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_f

    .line 138
    iget-object v0, p0, Landroid/bluetooth/BluetoothMap;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mConnection:Landroid/content/ServiceConnection;

    .line 141
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothMap;->mServiceListener:Landroid/bluetooth/BluetoothMap$ServiceListener;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 142
    monitor-exit p0

    return-void

    .line 137
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()Z
    .registers 4

    .prologue
    .line 206
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_17

    .line 208
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->disconnect()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    .line 209
    const/4 v1, 0x1

    .line 215
    :goto_a
    return v1

    .line 210
    :catch_b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_15
    const/4 v1, 0x0

    goto :goto_a

    .line 212
    :cond_17
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothMap;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 126
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 128
    return-void

    .line 126
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .registers 4

    .prologue
    .line 170
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_17

    .line 172
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getClient()Landroid/bluetooth/BluetoothDevice;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 178
    :goto_a
    return-object v1

    .line 173
    :catch_b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_15
    const/4 v1, 0x0

    goto :goto_a

    .line 175
    :cond_17
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public getState()I
    .registers 4

    .prologue
    .line 151
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_17

    .line 153
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothMap;->getState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 159
    :goto_a
    return v1

    .line 154
    :catch_b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_15
    const/4 v1, -0x1

    goto :goto_a

    .line 156
    :cond_17
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 188
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    if-eqz v1, :cond_17

    .line 190
    :try_start_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothMap;->mService:Landroid/bluetooth/IBluetoothMap;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothMap;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 196
    :goto_a
    return v1

    .line 191
    :catch_b
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothMap"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0           #e:Landroid/os/RemoteException;
    :goto_15
    const/4 v1, 0x0

    goto :goto_a

    .line 193
    :cond_17
    const-string v1, "BluetoothMap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method
