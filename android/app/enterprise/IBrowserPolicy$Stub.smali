.class public abstract Landroid/app/enterprise/IBrowserPolicy$Stub;
.super Landroid/os/Binder;
.source "IBrowserPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IBrowserPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IBrowserPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IBrowserPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IBrowserPolicy"

.field static final TRANSACTION_getBrowserSettingStatus:I = 0x2

.field static final TRANSACTION_setBrowserSettingStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.IBrowserPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.app.enterprise.IBrowserPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/app/enterprise/IBrowserPolicy;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/app/enterprise/IBrowserPolicy$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/enterprise/IBrowserPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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

    const/4 v3, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_48

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 45
    :sswitch_a
    const-string v4, "android.app.enterprise.IBrowserPolicy"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 50
    :sswitch_10
    const-string v5, "android.app.enterprise.IBrowserPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    move v0, v3

    .line 54
    .local v0, _arg0:Z
    :goto_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/IBrowserPolicy$Stub;->setBrowserSettingStatus(ZI)Z

    move-result v2

    .line 56
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v2, :cond_2a

    move v4, v3

    :cond_2a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:I
    .end local v2           #_result:Z
    :cond_2e
    move v0, v4

    .line 52
    goto :goto_1c

    .line 62
    :sswitch_30
    const-string v5, "android.app.enterprise.IBrowserPolicy"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->getBrowserSettingStatus(I)Z

    move-result v2

    .line 66
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v2, :cond_43

    move v4, v3

    :cond_43
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 41
    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_30
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
