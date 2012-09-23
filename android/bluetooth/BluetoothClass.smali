.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "classInt"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 63
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .registers 6
    .parameter "profile"

    .prologue
    const/high16 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 311
    if-ne p1, v0, :cond_16

    .line 312
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 374
    :cond_c
    :goto_c
    :sswitch_c
    return v0

    .line 318
    :cond_d
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    move v0, v1

    .line 325
    goto :goto_c

    .line 327
    :cond_16
    if-nez p1, :cond_27

    .line 330
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 334
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_78

    move v0, v1

    .line 340
    goto :goto_c

    .line 342
    :cond_27
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3b

    .line 343
    const/high16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 347
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    sparse-switch v2, :sswitch_data_86

    move v0, v1

    .line 363
    goto :goto_c

    .line 365
    :cond_3b
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4a

    .line 366
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x500

    const/16 v3, 0x500

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_c

    .line 367
    :cond_4a
    const/4 v2, 0x4

    if-eq p1, v2, :cond_50

    const/4 v2, 0x5

    if-ne p1, v2, :cond_64

    .line 369
    :cond_50
    const/high16 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 372
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    and-int/lit16 v2, v2, 0x300

    const/16 v3, 0x300

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_c

    :cond_64
    move v0, v1

    .line 374
    goto :goto_c

    .line 318
    :sswitch_data_66
    .sparse-switch
        0x414 -> :sswitch_c
        0x418 -> :sswitch_c
        0x420 -> :sswitch_c
        0x428 -> :sswitch_c
    .end sparse-switch

    .line 334
    :sswitch_data_78
    .sparse-switch
        0x404 -> :sswitch_c
        0x408 -> :sswitch_c
        0x420 -> :sswitch_c
    .end sparse-switch

    .line 347
    :sswitch_data_86
    .sparse-switch
        0x100 -> :sswitch_c
        0x104 -> :sswitch_c
        0x108 -> :sswitch_c
        0x10c -> :sswitch_c
        0x110 -> :sswitch_c
        0x114 -> :sswitch_c
        0x118 -> :sswitch_c
        0x200 -> :sswitch_c
        0x204 -> :sswitch_c
        0x208 -> :sswitch_c
        0x20c -> :sswitch_c
        0x210 -> :sswitch_c
        0x214 -> :sswitch_c
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 67
    instance-of v1, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v1, :cond_e

    .line 68
    iget v1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1
    iget v2, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 70
    :cond_e
    return v0
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public getPeripheralMinorClass()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x5c0

    return v0
.end method

.method public hasService(I)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 130
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 98
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
