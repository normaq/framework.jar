.class public abstract Landroid/app/enterprise/IDateTimePolicy$Stub;
.super Landroid/os/Binder;
.source "IDateTimePolicy.java"

# interfaces
.implements Landroid/app/enterprise/IDateTimePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IDateTimePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IDateTimePolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IDateTimePolicy"

.field static final TRANSACTION_getAutomaticTime:I = 0xa

.field static final TRANSACTION_getDateFormat:I = 0x8

.field static final TRANSACTION_getDateTime:I = 0x2

.field static final TRANSACTION_getDaylightSavingTime:I = 0xb

.field static final TRANSACTION_getTimeFormat:I = 0x6

.field static final TRANSACTION_getTimeZone:I = 0x4

.field static final TRANSACTION_setAutomaticTime:I = 0x9

.field static final TRANSACTION_setDateFormat:I = 0x7

.field static final TRANSACTION_setDateTime:I = 0x1

.field static final TRANSACTION_setTimeFormat:I = 0x5

.field static final TRANSACTION_setTimeZone:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IDateTimePolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.app.enterprise.IDateTimePolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IDateTimePolicy;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/app/enterprise/IDateTimePolicy;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/app/enterprise/IDateTimePolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IDateTimePolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_f4

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 46
    :sswitch_a
    const-string v4, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 54
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IDateTimePolicy$Stub;->setDateTime(J)Z

    move-result v2

    .line 55
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    if-eqz v2, :cond_23

    move v4, v5

    :cond_23
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v0           #_arg0:J
    .end local v2           #_result:Z
    :sswitch_27
    const-string v4, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getDateTime()J

    move-result-wide v2

    .line 63
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 69
    .end local v2           #_result:J
    :sswitch_37
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->setTimeZone(Ljava/lang/String;)Z

    move-result v2

    .line 73
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v2, :cond_4a

    move v4, v5

    :cond_4a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 79
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_4e
    const-string v4, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 87
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5e
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->setTimeFormat(Ljava/lang/String;)Z

    move-result v2

    .line 91
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_71

    move v4, v5

    :cond_71
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 97
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_75
    const-string v4, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getTimeFormat()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 105
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_85
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->setDateFormat(Ljava/lang/String;)Z

    move-result v2

    .line 109
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v2, :cond_98

    move v4, v5

    :cond_98
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_9d
    const-string v4, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_ae
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c9

    move v0, v5

    .line 126
    .local v0, _arg0:Z
    :goto_ba
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->setAutomaticTime(Z)Z

    move-result v2

    .line 127
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v2, :cond_c4

    move v4, v5

    :cond_c4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v0           #_arg0:Z
    .end local v2           #_result:Z
    :cond_c9
    move v0, v4

    .line 125
    goto :goto_ba

    .line 133
    :sswitch_cb
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getAutomaticTime()Z

    move-result v2

    .line 135
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v2, :cond_da

    move v4, v5

    :cond_da
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 141
    .end local v2           #_result:Z
    :sswitch_df
    const-string v6, "android.app.enterprise.IDateTimePolicy"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/enterprise/IDateTimePolicy$Stub;->getDaylightSavingTime()Z

    move-result v2

    .line 143
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v2, :cond_ee

    move v4, v5

    :cond_ee
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_f4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_37
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_75
        0x7 -> :sswitch_85
        0x8 -> :sswitch_9d
        0x9 -> :sswitch_ae
        0xa -> :sswitch_cb
        0xb -> :sswitch_df
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
