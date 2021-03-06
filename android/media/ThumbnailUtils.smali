.class public Landroid/media/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ThumbnailUtils$1;,
        Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    }
.end annotation


# static fields
.field private static final MAX_NUM_PIXELS_MICRO_THUMBNAIL:I = 0x4000

.field private static final MAX_NUM_PIXELS_THUMBNAIL:I = 0x30000

.field private static final OPTIONS_NONE:I = 0x0

.field public static final OPTIONS_RECYCLE_INPUT:I = 0x2

.field private static final OPTIONS_SCALE_UP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ThumbnailUtils"

.field public static final TARGET_SIZE_MICRO_THUMBNAIL:I = 0x60

.field public static final TARGET_SIZE_MINI_THUMBNAIL:I = 0x140

.field private static final UNCONSTRAINED:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method private static closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 336
    if-nez p0, :cond_3

    .line 342
    :goto_2
    return-void

    .line 338
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 339
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 15
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 270
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 271
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 273
    .local v0, h:D
    if-ne p2, v11, :cond_12

    move v2, v6

    .line 275
    .local v2, lowerBound:I
    :goto_b
    if-ne p1, v11, :cond_20

    const/16 v3, 0x80

    .line 279
    .local v3, upperBound:I
    :goto_f
    if-ge v3, v2, :cond_34

    .line 290
    .end local v2           #lowerBound:I
    :cond_11
    :goto_11
    return v2

    .line 273
    .end local v3           #upperBound:I
    :cond_12
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_b

    .line 275
    .restart local v2       #lowerBound:I
    :cond_20
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_f

    .line 284
    .restart local v3       #upperBound:I
    :cond_34
    if-ne p2, v11, :cond_3a

    if-ne p1, v11, :cond_3a

    move v2, v6

    .line 286
    goto :goto_11

    .line 287
    :cond_3a
    if-eq p1, v11, :cond_11

    move v2, v3

    .line 290
    goto :goto_11
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 252
    invoke-static {p0, p1, p2}, Landroid/media/ThumbnailUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 256
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_e

    .line 257
    const/4 v1, 0x1

    .line 258
    .local v1, roundedSize:I
    :goto_9
    if-ge v1, v0, :cond_14

    .line 259
    shl-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 262
    .end local v1           #roundedSize:I
    :cond_e
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 265
    .restart local v1       #roundedSize:I
    :cond_14
    return v1
.end method

.method public static createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "filePath"
    .parameter "kind"

    .prologue
    .line 91
    const/4 v11, 0x1

    if-ne p1, v11, :cond_4e

    const/4 v10, 0x1

    .line 92
    .local v10, wantMini:Z
    :goto_4
    if-eqz v10, :cond_50

    const/16 v9, 0x140

    .line 95
    .local v9, targetSize:I
    :goto_8
    if-eqz v10, :cond_53

    const/high16 v5, 0x3

    .line 98
    .local v5, maxPixels:I
    :goto_c
    new-instance v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;-><init>(Landroid/media/ThumbnailUtils$1;)V

    .line 99
    .local v8, sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    const/4 v0, 0x0

    .line 100
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    .line 101
    .local v3, fileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v3, :cond_24

    iget v11, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_24

    .line 102
    invoke-static {p0, v9, v5, v8}, Landroid/media/ThumbnailUtils;->createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V

    .line 103
    iget-object v0, v8, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 106
    :cond_24
    if-nez v0, :cond_70

    .line 109
    :try_start_26
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 110
    .local v4, fis:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 112
    .local v2, fd:Ljava/io/FileDescriptor;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v11, 0x1

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    const/4 v11, 0x1

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 115
    const/4 v11, 0x0

    invoke-static {v2, v11, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    iget-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v11, :cond_4c

    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4c

    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_56

    .line 118
    :cond_4c
    const/4 v11, 0x0

    .line 142
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_4d
    return-object v11

    .line 91
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #fileType:Landroid/media/MediaFile$MediaFileType;
    .end local v5           #maxPixels:I
    .end local v8           #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    .end local v9           #targetSize:I
    .end local v10           #wantMini:Z
    :cond_4e
    const/4 v10, 0x0

    goto :goto_4

    .line 92
    .restart local v10       #wantMini:Z
    :cond_50
    const/16 v9, 0x60

    goto :goto_8

    .line 95
    .restart local v9       #targetSize:I
    :cond_53
    const/16 v5, 0x4000

    goto :goto_c

    .line 120
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #fd:Ljava/io/FileDescriptor;
    .restart local v3       #fileType:Landroid/media/MediaFile$MediaFileType;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    .restart local v5       #maxPixels:I
    .restart local v7       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v8       #sizedThumbnailBitmap:Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;
    :cond_56
    invoke-static {v7, v9, v5}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v11

    iput v11, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 124
    const/4 v11, 0x0

    iput-boolean v11, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 125
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v11, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 126
    const/4 v11, 0x0

    invoke-static {v2, v11, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    if-eqz v4, :cond_70

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_70} :catch_7e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_70} :catch_87

    .line 136
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #fis:Ljava/io/FileInputStream;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_70
    :goto_70
    const/4 v11, 0x3

    if-ne p1, v11, :cond_7c

    .line 138
    const/16 v11, 0x60

    const/16 v12, 0x60

    const/4 v13, 0x2

    invoke-static {v0, v11, v12, v13}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7c
    move-object v11, v0

    .line 142
    goto :goto_4d

    .line 129
    :catch_7e
    move-exception v1

    .line 130
    .local v1, ex:Ljava/io/IOException;
    const-string v11, "ThumbnailUtils"

    const-string v12, ""

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 131
    .end local v1           #ex:Ljava/io/IOException;
    :catch_87
    move-exception v6

    .line 132
    .local v6, oom:Ljava/lang/OutOfMemoryError;
    const-string v11, "ThumbnailUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to decode file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". OutOfMemoryError."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70
.end method

.method private static createThumbnailFromEXIF(Ljava/lang/String;IILandroid/media/ThumbnailUtils$SizedThumbnailBitmap;)V
    .registers 16
    .parameter "filePath"
    .parameter "targetSize"
    .parameter "maxPixels"
    .parameter "sizedThumbBitmap"

    .prologue
    .line 474
    if-nez p0, :cond_3

    .line 522
    :cond_2
    :goto_2
    return-void

    .line 476
    :cond_3
    const/4 v1, 0x0

    .line 477
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v8, 0x0

    .line 479
    .local v8, thumbData:[B
    :try_start_5
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_63

    .line 480
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_10

    .line 481
    :try_start_c
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_74

    move-result-object v8

    :cond_10
    move-object v1, v2

    .line 487
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_11
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 488
    .local v5, fullOptions:Landroid/graphics/BitmapFactory$Options;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 489
    .local v3, exifOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    .line 490
    .local v4, exifThumbWidth:I
    const/4 v6, 0x0

    .line 493
    .local v6, fullThumbWidth:I
    if-eqz v8, :cond_33

    .line 494
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 495
    const/4 v10, 0x0

    array-length v11, v8

    invoke-static {v8, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 496
    invoke-static {v3, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 497
    iget v10, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v4, v10, v11

    .line 501
    :cond_33
    const/4 v10, 0x1

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 502
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 503
    invoke-static {v5, p1, p2}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v10

    iput v10, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    iget v10, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v11, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v10, v11

    .line 507
    if-eqz v8, :cond_6a

    if-lt v4, v6, :cond_6a

    .line 508
    iget v9, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 509
    .local v9, width:I
    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 510
    .local v7, height:I
    const/4 v10, 0x0

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 511
    const/4 v10, 0x0

    array-length v11, v8

    invoke-static {v8, v10, v11, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 513
    iget-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    .line 514
    iput-object v8, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailData:[B

    .line 515
    iput v9, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailWidth:I

    .line 516
    iput v7, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mThumbnailHeight:I

    goto :goto_2

    .line 483
    .end local v3           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #exifThumbWidth:I
    .end local v5           #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #fullThumbWidth:I
    .end local v7           #height:I
    .end local v9           #width:I
    :catch_63
    move-exception v0

    .line 484
    .local v0, ex:Ljava/io/IOException;
    :goto_64
    const-string v10, "ThumbnailUtils"

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 519
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v3       #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #exifThumbWidth:I
    .restart local v5       #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v6       #fullThumbWidth:I
    :cond_6a
    const/4 v10, 0x0

    iput-boolean v10, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 520
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p3, Landroid/media/ThumbnailUtils$SizedThumbnailBitmap;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 483
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v3           #exifOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #exifThumbWidth:I
    .end local v5           #fullOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #fullThumbWidth:I
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :catch_74
    move-exception v0

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_64
.end method

.method public static createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "filePath"
    .parameter "kind"

    .prologue
    const/16 v11, 0x60

    const/4 v10, 0x1

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 156
    .local v4, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_9
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 157
    const-wide/16 v8, -0x1

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_11} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_20

    move-result-object v0

    .line 164
    :try_start_12
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_5e

    .line 170
    :goto_15
    if-nez v0, :cond_2c

    const/4 v8, 0x0

    .line 189
    :goto_18
    return-object v8

    .line 158
    :catch_19
    move-exception v8

    .line 164
    :try_start_1a
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_15

    .line 165
    :catch_1e
    move-exception v8

    goto :goto_15

    .line 160
    :catch_20
    move-exception v8

    .line 164
    :try_start_21
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_15

    .line 165
    :catch_25
    move-exception v8

    goto :goto_15

    .line 163
    :catchall_27
    move-exception v8

    .line 164
    :try_start_28
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2b
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_2b} :catch_60

    .line 167
    :goto_2b
    throw v8

    .line 172
    :cond_2c
    if-ne p1, v10, :cond_55

    .line 174
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 175
    .local v7, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 176
    .local v2, height:I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 177
    .local v3, max:I
    const/16 v8, 0x200

    if-le v3, v8, :cond_53

    .line 178
    const/high16 v8, 0x4400

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 179
    .local v5, scale:F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 180
    .local v6, w:I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 181
    .local v1, h:I
    invoke-static {v0, v6, v1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v2           #height:I
    .end local v3           #max:I
    .end local v5           #scale:F
    .end local v6           #w:I
    .end local v7           #width:I
    :cond_53
    :goto_53
    move-object v8, v0

    .line 189
    goto :goto_18

    .line 183
    :cond_55
    const/4 v8, 0x3

    if-ne p1, v8, :cond_53

    .line 184
    const/4 v8, 0x2

    invoke-static {v0, v11, v11, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_53

    .line 165
    :catch_5e
    move-exception v8

    goto :goto_15

    :catch_60
    move-exception v9

    goto :goto_2b
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "source"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "source"
    .parameter "width"
    .parameter "height"
    .parameter "options"

    .prologue
    .line 214
    if-nez p0, :cond_4

    .line 215
    const/4 v2, 0x0

    .line 228
    :goto_3
    return-object v2

    .line 219
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 220
    int-to-float v3, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 224
    .local v1, scale:F
    :goto_16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v0, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 226
    or-int/lit8 v3, p3, 0x1

    invoke-static {v0, p0, p1, p2, v3}, Landroid/media/ThumbnailUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 228
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    goto :goto_3

    .line 222
    .end local v0           #matrix:Landroid/graphics/Matrix;
    .end local v1           #scale:F
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    :cond_25
    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .restart local v1       #scale:F
    goto :goto_16
.end method

.method private static makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"
    .parameter "uri"
    .parameter "cr"
    .parameter "pfd"
    .parameter "options"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p4, :cond_9

    :try_start_5
    invoke-static {p2, p3}, Landroid/media/ThumbnailUtils;->makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_5b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_8} :catch_4f

    move-result-object p4

    .line 308
    :cond_9
    if-nez p4, :cond_f

    .line 330
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 332
    :goto_e
    return-object v4

    .line 309
    :cond_f
    if-nez p5, :cond_17

    :try_start_11
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p5
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p5, v3

    .line 311
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p5
    :cond_17
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 312
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v5, 0x1

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 313
    const/4 v5, 0x1

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 314
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 315
    iget-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_31

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_31

    iget v5, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_5b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_2f} :catch_4f

    if-ne v5, v6, :cond_35

    .line 330
    :cond_31
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_e

    .line 319
    :cond_35
    :try_start_35
    invoke-static {p5, p0, p1}, Landroid/media/ThumbnailUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 321
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 323
    const/4 v5, 0x0

    iput-boolean v5, p5, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 324
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 325
    const/4 v5, 0x0

    invoke-static {v2, v5, p5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_5b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_49} :catch_4f

    move-result-object v0

    .line 330
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 332
    goto :goto_e

    .line 326
    .end local v2           #fd:Ljava/io/FileDescriptor;
    :catch_4f
    move-exception v1

    .line 327
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_50
    const-string v5, "ThumbnailUtils"

    const-string v6, "Got oom exception "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5b

    .line 330
    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_e

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_5b
    move-exception v4

    invoke-static {p4}, Landroid/media/ThumbnailUtils;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v4
.end method

.method private static makeInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter "uri"
    .parameter "cr"

    .prologue
    .line 347
    :try_start_0
    const-string/jumbo v1, "r"

    invoke-virtual {p1, p0, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v1

    .line 349
    :goto_7
    return-object v1

    .line 348
    :catch_8
    move-exception v0

    .line 349
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .registers 35
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "options"

    .prologue
    .line 361
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_91

    const/16 v27, 0x1

    .line 362
    .local v27, scaleUp:Z
    :goto_6
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_95

    const/16 v25, 0x1

    .line 364
    .local v25, recycle:Z
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v16, v3, p2

    .line 365
    .local v16, deltaX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v18, v3, p3

    .line 366
    .local v18, deltaY:I
    if-nez v27, :cond_99

    if-ltz v16, :cond_1e

    if-gez v18, :cond_99

    .line 373
    :cond_1e
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 375
    .local v11, b2:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 377
    .local v15, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    div-int/lit8 v4, v16, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 378
    .local v17, deltaXHalf:I
    const/4 v3, 0x0

    div-int/lit8 v4, v18, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 379
    .local v19, deltaYHalf:I
    new-instance v28, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v3, v3, v17

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, p3

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v19

    move-object/from16 v0, v28

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 384
    .local v28, src:Landroid/graphics/Rect;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int v3, p2, v3

    div-int/lit8 v21, v3, 0x2

    .line 385
    .local v21, dstX:I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, p3, v3

    div-int/lit8 v22, v3, 0x2

    .line 386
    .local v22, dstY:I
    new-instance v20, Landroid/graphics/Rect;

    sub-int v3, p2, v21

    sub-int v4, p3, v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 391
    .local v20, dst:Landroid/graphics/Rect;
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    if-eqz v25, :cond_8c

    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 395
    :cond_8c
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 449
    .end local v15           #c:Landroid/graphics/Canvas;
    .end local v17           #deltaXHalf:I
    .end local v19           #deltaYHalf:I
    .end local v20           #dst:Landroid/graphics/Rect;
    .end local v21           #dstX:I
    .end local v22           #dstY:I
    .end local v28           #src:Landroid/graphics/Rect;
    :cond_90
    :goto_90
    return-object v11

    .line 361
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v16           #deltaX:I
    .end local v18           #deltaY:I
    .end local v25           #recycle:Z
    .end local v27           #scaleUp:Z
    :cond_91
    const/16 v27, 0x0

    goto/16 :goto_6

    .line 362
    .restart local v27       #scaleUp:Z
    :cond_95
    const/16 v25, 0x0

    goto/16 :goto_c

    .line 398
    .restart local v16       #deltaX:I
    .restart local v18       #deltaY:I
    .restart local v25       #recycle:Z
    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v14, v3

    .line 399
    .local v14, bitmapWidthF:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v13, v3

    .line 401
    .local v13, bitmapHeightF:F
    div-float v12, v14, v13

    .line 402
    .local v12, bitmapAspect:F
    move/from16 v0, p2

    int-to-float v3, v0

    move/from16 v0, p3

    int-to-float v4, v0

    div-float v29, v3, v4

    .line 404
    .local v29, viewAspect:F
    cmpl-float v3, v12, v29

    if-lez v3, :cond_11c

    .line 405
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v26, v3, v13

    .line 406
    .local v26, scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_c3

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_119

    .line 407
    :cond_c3
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 421
    :goto_cc
    if-eqz p0, :cond_13b

    .line 423
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 429
    .local v10, b1:Landroid/graphics/Bitmap;
    :goto_e1
    if-eqz v25, :cond_ea

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_ea

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    :cond_ea
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v4, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 434
    .local v23, dx1:I
    const/4 v3, 0x0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 436
    .local v24, dy1:I
    div-int/lit8 v3, v23, 0x2

    div-int/lit8 v4, v24, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v10, v3, v4, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 443
    .restart local v11       #b2:Landroid/graphics/Bitmap;
    if-eq v11, v10, :cond_90

    .line 444
    if-nez v25, :cond_114

    move-object/from16 v0, p1

    if-eq v10, v0, :cond_90

    .line 445
    :cond_114
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_90

    .line 409
    .end local v10           #b1:Landroid/graphics/Bitmap;
    .end local v11           #b2:Landroid/graphics/Bitmap;
    .end local v23           #dx1:I
    .end local v24           #dy1:I
    :cond_119
    const/16 p0, 0x0

    goto :goto_cc

    .line 412
    .end local v26           #scale:F
    :cond_11c
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v26, v3, v14

    .line 413
    .restart local v26       #scale:F
    const v3, 0x3f666666

    cmpg-float v3, v26, v3

    if-ltz v3, :cond_12e

    const/high16 v3, 0x3f80

    cmpl-float v3, v26, v3

    if-lez v3, :cond_138

    .line 414
    :cond_12e
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_cc

    .line 416
    :cond_138
    const/16 p0, 0x0

    goto :goto_cc

    .line 426
    :cond_13b
    move-object/from16 v10, p1

    .restart local v10       #b1:Landroid/graphics/Bitmap;
    goto :goto_e1
.end method
