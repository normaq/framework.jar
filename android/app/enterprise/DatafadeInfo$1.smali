.class final Landroid/app/enterprise/DatafadeInfo$1;
.super Ljava/lang/Object;
.source "DatafadeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/DatafadeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/app/enterprise/DatafadeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/DatafadeInfo;
    .registers 4
    .parameter "in"

    .prologue
    .line 133
    new-instance v0, Landroid/app/enterprise/DatafadeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/enterprise/DatafadeInfo;-><init>(Landroid/os/Parcel;Landroid/app/enterprise/DatafadeInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/app/enterprise/DatafadeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/DatafadeInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/DatafadeInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 137
    new-array v0, p1, [Landroid/app/enterprise/DatafadeInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/app/enterprise/DatafadeInfo$1;->newArray(I)[Landroid/app/enterprise/DatafadeInfo;

    move-result-object v0

    return-object v0
.end method
