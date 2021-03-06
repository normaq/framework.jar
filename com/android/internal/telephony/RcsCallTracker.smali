.class public Lcom/android/internal/telephony/RcsCallTracker;
.super Landroid/os/Handler;
.source "RcsCallTracker.java"


# static fields
.field static final ACTIVE:I = 0x2

.field public static final CALL_CONNECTED:I = 0x2

.field public static final CALL_DISCONECTED:I = 0x1

.field public static final CALL_HOLD:I = 0x3

.field public static final CALL_RESUMED:I = 0x4

.field public static final CALL_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field static final DISCONECTED:I = 0x4

.field static final EVENT_CALL_STATE_CHANGED:I = 0x1

.field static final EVENT_SERVICE_STATE_CHANGED:I = 0x2

.field public static final EXTRA_CALL_EVENT:Ljava/lang/String; = "EXTRA_CALL_EVENT"

.field public static final EXTRA_IS_INCOMING:Ljava/lang/String; = "EXTRA_IS_INCOMING"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "EXTRA_NETWORK_TYPE"

.field public static final EXTRA_SERVICE_STATE:Ljava/lang/String; = "EXTRA_SERVICE_STATE"

.field public static final EXTRA_TEL_NUMBER:Ljava/lang/String; = "EXTRA_TEL_NUMBER"

.field static final HOLD:I = 0x3

.field static final NEW:I = 0x1

.field static final PERMISSION:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field public static final SERVICE_STATE_BROADCAST:Ljava/lang/String; = "com.samsung.rcs.SERVICE_STATE_CHANGED"

.field static final TAG:Ljava/lang/String; = "RcsCallTracker"


# instance fields
.field availableConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mActiveConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mHoldConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    .line 101
    const-string v0, "RcsCallTracker"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    return-void
.end method

.method private analizeAndSendEvents()V
    .registers 11

    .prologue
    const/4 v7, 0x4

    const/4 v9, 0x2

    .line 162
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 163
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/Connection;>;"
    const/4 v4, 0x0

    .line 164
    .local v4, ic:Lcom/android/internal/telephony/Connection;
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ic:Lcom/android/internal/telephony/Connection;
    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 167
    .restart local v4       #ic:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 170
    invoke-direct {p0, v9, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_9

    .line 175
    :cond_24
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    :cond_2a
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #ic:Lcom/android/internal/telephony/Connection;
    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 180
    .restart local v4       #ic:Lcom/android/internal/telephony/Connection;
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 182
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 183
    const/4 v6, 0x3

    invoke-direct {p0, v6, v7, v4}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_2a

    .line 187
    :cond_46
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 189
    .local v0, c:Lcom/android/internal/telephony/Connection;
    const/4 v5, 0x0

    .line 190
    .local v5, src:I
    const/4 v1, 0x0

    .line 192
    .local v1, dest:I
    const-string v6, "RcsCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection state  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 196
    const/4 v5, 0x2

    .line 209
    :goto_7f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v6

    if-nez v6, :cond_a0

    .line 211
    const/4 v1, 0x4

    .line 226
    :cond_86
    :goto_86
    if-ne v1, v5, :cond_b4

    if-ne v1, v9, :cond_8c

    if-eq v5, v9, :cond_b4

    .line 228
    :cond_8c
    const-string v6, "RcsCallTracker"

    const-string v7, "Dual notification from modem... skipping notification"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 198
    :cond_94
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 200
    const/4 v5, 0x3

    goto :goto_7f

    .line 203
    :cond_9e
    const/4 v5, 0x1

    goto :goto_7f

    .line 213
    :cond_a0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_aa

    .line 215
    const/4 v1, 0x3

    goto :goto_86

    .line 216
    :cond_aa
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_86

    .line 218
    const/4 v1, 0x2

    goto :goto_86

    .line 232
    :cond_b4
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 233
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 235
    packed-switch v1, :pswitch_data_d2

    .line 247
    :goto_c1
    invoke-direct {p0, v5, v1, v0}, Lcom/android/internal/telephony/RcsCallTracker;->notifyTransition(IILcom/android/internal/telephony/Connection;)V

    goto :goto_4c

    .line 237
    :pswitch_c5
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mHoldConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 240
    :pswitch_cb
    iget-object v6, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_c1

    .line 249
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #dest:I
    .end local v5           #src:I
    :cond_d1
    return-void

    .line 235
    :pswitch_data_d2
    .packed-switch 0x2
        :pswitch_cb
        :pswitch_c5
    .end packed-switch
.end method

.method private getNetworkType(Landroid/telephony/ServiceState;)I
    .registers 4
    .parameter "ss"

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 367
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_20

    .line 390
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 369
    :pswitch_9
    const/4 v1, 0x1

    goto :goto_8

    .line 371
    :pswitch_b
    const/4 v1, 0x2

    goto :goto_8

    .line 373
    :pswitch_d
    const/4 v1, 0x3

    goto :goto_8

    .line 375
    :pswitch_f
    const/16 v1, 0x8

    goto :goto_8

    .line 377
    :pswitch_12
    const/16 v1, 0x9

    goto :goto_8

    .line 379
    :pswitch_15
    const/16 v1, 0xa

    goto :goto_8

    .line 382
    :pswitch_18
    const/4 v1, 0x4

    goto :goto_8

    .line 384
    :pswitch_1a
    const/4 v1, 0x7

    goto :goto_8

    .line 386
    :pswitch_1c
    const/4 v1, 0x5

    goto :goto_8

    .line 388
    :pswitch_1e
    const/4 v1, 0x6

    goto :goto_8

    .line 367
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_18
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
        :pswitch_1e
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method private notifyTransition(IILcom/android/internal/telephony/Connection;)V
    .registers 11
    .parameter "src"
    .parameter "dest"
    .parameter "c"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 255
    if-ne p1, p2, :cond_b

    if-ne p2, v3, :cond_a

    if-eq p1, v3, :cond_b

    .line 308
    :cond_a
    :goto_a
    return-void

    .line 261
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, i:Landroid/content/Intent;
    const-string v1, "EXTRA_IS_INCOMING"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string v1, "EXTRA_TEL_NUMBER"

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    if-ne p2, v5, :cond_33

    .line 267
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_a

    .line 273
    :cond_33
    if-ne p2, v4, :cond_42

    .line 275
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_a

    .line 281
    :cond_42
    if-ne p2, v3, :cond_53

    if-ne p1, v6, :cond_53

    .line 283
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_a

    .line 289
    :cond_53
    if-ne p2, v3, :cond_64

    if-ne p1, v4, :cond_64

    .line 291
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_a

    .line 299
    :cond_64
    if-ne p2, v3, :cond_a

    if-ne p1, v3, :cond_a

    .line 301
    const-string v1, "EXTRA_CALL_EVENT"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 302
    const-string v1, "RcsCallTracker"

    const-string v2, "dest == ACTIVE && src == ACTIVE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private removeDisconnected()V
    .registers 6

    .prologue
    .line 311
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 314
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 316
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, i:Landroid/content/Intent;
    const-string v3, "EXTRA_CALL_EVENT"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 318
    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    const-string v3, "EXTRA_TEL_NUMBER"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 327
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:Landroid/content/Intent;
    :cond_4c
    return-void
.end method


# virtual methods
.method addNewConnections()V
    .registers 6

    .prologue
    .line 331
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 335
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 339
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mActiveConnections:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, i:Landroid/content/Intent;
    const-string v3, "EXTRA_CALL_EVENT"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 345
    const-string v3, "EXTRA_IS_INCOMING"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v3, "EXTRA_TEL_NUMBER"

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_6

    .line 357
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #i:Landroid/content/Intent;
    :cond_4e
    return-void
.end method

.method protected dispose()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 363
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 124
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_82

    .line 156
    :goto_5
    return-void

    .line 128
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 131
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->availableConnections:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/RcsCallTracker;->analizeAndSendEvents()V

    goto :goto_5

    .line 143
    :pswitch_3c
    const-string v2, "RcsCallTracker"

    const-string v3, "Service state changed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 146
    .local v1, ss:Landroid/telephony/ServiceState;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #i:Landroid/content/Intent;
    const-string v2, "com.samsung.rcs.SERVICE_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "EXTRA_SERVICE_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 148
    const-string v2, "EXTRA_NETWORK_TYPE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RcsCallTracker;->getNetworkType(Landroid/telephony/ServiceState;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    iget-object v2, p0, Lcom/android/internal/telephony/RcsCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 151
    const-string v2, "RcsCallTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 124
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6
        :pswitch_3c
    .end packed-switch
.end method
