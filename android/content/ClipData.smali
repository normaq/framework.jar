.class public Landroid/content/ClipData;
.super Ljava/lang/Object;
.source "ClipData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipData$Item;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation
.end field

.field static final MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

.field static final MIMETYPES_TEXT_URILIST:[Ljava/lang/String;


# instance fields
.field final mClipDescription:Landroid/content/ClipDescription;

.field final mIcon:Landroid/graphics/Bitmap;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipData$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "text/plain"

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    .line 147
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "text/uri-list"

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 149
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "text/vnd.android.intent"

    aput-object v1, v0, v2

    sput-object v0, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    .line 533
    new-instance v0, Landroid/content/ClipData$1;

    invoke-direct {v0}, Landroid/content/ClipData$1;-><init>()V

    sput-object v0, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V
    .registers 5
    .parameter "description"
    .parameter "item"

    .prologue
    .line 354
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 355
    iput-object p1, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 356
    if-nez p2, :cond_17

    .line 357
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 360
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 10
    .parameter "in"

    .prologue
    const/4 v6, 0x0

    .line 517
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 518
    new-instance v5, Landroid/content/ClipDescription;

    invoke-direct {v5, p1}, Landroid/content/ClipDescription;-><init>(Landroid/os/Parcel;)V

    iput-object v5, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5c

    .line 520
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 524
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 525
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v0, :cond_63

    .line 526
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 527
    .local v3, text:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5f

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    move-object v2, v5

    .line 528
    .local v2, intent:Landroid/content/Intent;
    :goto_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_61

    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v4, v5

    .line 529
    .local v4, uri:Landroid/net/Uri;
    :goto_4f
    iget-object v5, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v3, v2, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 522
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5c
    iput-object v6, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    goto :goto_22

    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v3       #text:Ljava/lang/CharSequence;
    :cond_5f
    move-object v2, v6

    .line 527
    goto :goto_40

    .restart local v2       #intent:Landroid/content/Intent;
    :cond_61
    move-object v4, v6

    .line 528
    goto :goto_4f

    .line 531
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #text:Ljava/lang/CharSequence;
    :cond_63
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V
    .registers 6
    .parameter "label"
    .parameter "mimeTypes"
    .parameter "item"

    .prologue
    .line 339
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Landroid/content/ClipDescription;

    invoke-direct {v0, p1, p2}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    .line 341
    if-nez p3, :cond_1c

    .line 342
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    .line 345
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public static newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
    .registers 5
    .parameter "label"
    .parameter "intent"

    .prologue
    .line 385
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    .line 386
    .local v0, item:Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_INTENT:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
    .registers 5
    .parameter "label"
    .parameter "text"

    .prologue
    .line 372
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 373
    .local v0, item:Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_PLAIN:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .registers 5
    .parameter "label"
    .parameter "uri"

    .prologue
    .line 441
    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 442
    .local v0, item:Landroid/content/ClipData$Item;
    new-instance v1, Landroid/content/ClipData;

    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v1
.end method

.method public static newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;
    .registers 13
    .parameter "resolver"
    .parameter "label"
    .parameter "uri"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 402
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, p2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 403
    .local v1, item:Landroid/content/ClipData$Item;
    const/4 v2, 0x0

    .line 404
    .local v2, mimeTypes:[Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 405
    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, realType:Ljava/lang/String;
    const-string v7, "*/*"

    invoke-virtual {p0, p2, v7}, Landroid/content/ContentResolver;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 407
    if-nez v2, :cond_36

    .line 408
    if-eqz v3, :cond_2c

    .line 409
    new-array v2, v5, [Ljava/lang/String;

    .end local v2           #mimeTypes:[Ljava/lang/String;
    aput-object v3, v2, v9

    const-string/jumbo v5, "text/uri-list"

    aput-object v5, v2, v6

    .line 423
    .end local v3           #realType:Ljava/lang/String;
    .restart local v2       #mimeTypes:[Ljava/lang/String;
    :cond_2c
    :goto_2c
    if-nez v2, :cond_30

    .line 424
    sget-object v2, Landroid/content/ClipData;->MIMETYPES_TEXT_URILIST:[Ljava/lang/String;

    .line 426
    :cond_30
    new-instance v5, Landroid/content/ClipData;

    invoke-direct {v5, p1, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object v5

    .line 412
    .restart local v3       #realType:Ljava/lang/String;
    :cond_36
    array-length v7, v2

    if-eqz v3, :cond_50

    :goto_39
    add-int/2addr v5, v7

    new-array v4, v5, [Ljava/lang/String;

    .line 413
    .local v4, tmp:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 414
    .local v0, i:I
    if-eqz v3, :cond_43

    .line 415
    aput-object v3, v4, v9

    .line 416
    add-int/lit8 v0, v0, 0x1

    .line 418
    :cond_43
    array-length v5, v2

    invoke-static {v2, v9, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
    array-length v5, v2

    add-int/2addr v5, v0

    const-string/jumbo v6, "text/uri-list"

    aput-object v6, v4, v5

    .line 420
    move-object v2, v4

    goto :goto_2c

    .end local v0           #i:I
    .end local v4           #tmp:[Ljava/lang/String;
    :cond_50
    move v5, v6

    .line 412
    goto :goto_39
.end method


# virtual methods
.method public addItem(Landroid/content/ClipData$Item;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 457
    if-nez p1, :cond_b

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "item is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_b
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemAt(I)Landroid/content/ClipData$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 480
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData$Item;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    iget-object v3, p0, Landroid/content/ClipData;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v3, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 491
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_47

    .line 492
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 493
    iget-object v3, p0, Landroid/content/ClipData;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 497
    :goto_13
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 498
    .local v0, N:I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v0, :cond_53

    .line 500
    iget-object v3, p0, Landroid/content/ClipData;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipData$Item;

    .line 501
    .local v2, item:Landroid/content/ClipData$Item;
    iget-object v3, v2, Landroid/content/ClipData$Item;->mText:Ljava/lang/CharSequence;

    invoke-static {v3, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 502
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4b

    .line 503
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v3, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 508
    :goto_38
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_4f

    .line 509
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v3, v2, Landroid/content/ClipData$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 499
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 495
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #item:Landroid/content/ClipData$Item;
    :cond_47
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 506
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #item:Landroid/content/ClipData$Item;
    :cond_4b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_38

    .line 512
    :cond_4f
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 515
    .end local v2           #item:Landroid/content/ClipData$Item;
    :cond_53
    return-void
.end method
