.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 535
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 515
    or-int v1, p1, p2

    if-ltz v1, :cond_9

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_f

    .line 516
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 518
    :cond_f
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 519
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_23

    if-eqz p3, :cond_23

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_23

    .line 520
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :cond_23
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "pathName"

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 20
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, bm:Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 320
    .local v13, stream:Ljava/io/InputStream;
    if-eqz p0, :cond_cf

    .line 323
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    int-to-long v7, v15

    .line 326
    .local v7, length:J
    const-string v15, ".dcf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1d

    const-string v15, ".odf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e8

    :cond_1d
    const/4 v6, 0x1

    .line 328
    .local v6, isDRM:Z
    :goto_1e
    const/4 v9, 0x0

    .line 329
    .local v9, mimeType:Ljava/lang/String;
    if-eqz v6, :cond_12f

    .line 330
    const-string v9, "application/vnd.oma.drm.content"

    .line 331
    new-instance v3, Landroid/drm/DrmManagerClient;

    const/4 v15, 0x0

    invoke-direct {v3, v15}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 332
    .local v3, drmclient:Landroid/drm/DrmManagerClient;
    const/4 v13, 0x0

    .line 333
    const-string v15, "DECODEFILE***"

    const-string v16, "REACHED DECODEFILE!!!******"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 338
    .local v4, fileLength:J
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "File is  opened "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 339
    const/4 v15, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v15}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v11

    .line 340
    .local v11, rightStatus:I
    if-nez v11, :cond_127

    .line 341
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v15, 0xa

    invoke-direct {v2, v15, v9}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 342
    .local v2, drmInfoRequest:Landroid/drm/DrmInfoRequest;
    const-string v15, "drm_path"

    move-object/from16 v0, p0

    invoke-virtual {v2, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    const-string v15, "LENGTH"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    const-string/jumbo v16, "preview_option"

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/graphics/BitmapFactory$Options;->isPreview:Z

    if-eqz v15, :cond_eb

    const-string/jumbo v15, "true"

    :goto_75
    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v3, v2}, Landroid/drm/DrmManagerClient;->processDrmRequest(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v10

    .line 352
    .local v10, resultInfo:Landroid/drm/DrmInfo;
    const-string/jumbo v15, "status"

    invoke-virtual {v10, v15}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, status_req1:Ljava/lang/String;
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BitMapFactory::decodeFile : processRequest status is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 354
    const-string/jumbo v15, "success"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ff

    .line 355
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "BitMapFactory::decodeFile :: processdrmRequest Success"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    if-eqz v15, :cond_ee

    .line 358
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v10}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .end local v13           #stream:Ljava/io/InputStream;
    .local v14, stream:Ljava/io/InputStream;
    move-object v13, v14

    .line 372
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v12           #status_req1:Ljava/lang/String;
    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v13       #stream:Ljava/io/InputStream;
    :goto_c3
    if-eqz v3, :cond_cf

    .line 373
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "BitMapFactory::decodeFile ::  drmclient  deinitialised"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v3}, Landroid/drm/DrmManagerClient;->deInitialize()V

    .line 386
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v11           #rightStatus:I
    :cond_cf
    :goto_cf
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "buffer returned "

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    if-eqz v13, :cond_e2

    .line 389
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v13, v15, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catchall {:try_start_4 .. :try_end_e2} :catchall_120
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e2} :catch_f6

    .line 399
    :cond_e2
    if-eqz v13, :cond_e7

    .line 401
    :try_start_e4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_13f

    .line 407
    :cond_e7
    :goto_e7
    return-object v1

    .line 326
    .restart local v7       #length:J
    :cond_e8
    const/4 v6, 0x0

    goto/16 :goto_1e

    .line 347
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v11       #rightStatus:I
    :cond_eb
    :try_start_eb
    const-string v15, "false"

    goto :goto_75

    .line 360
    .restart local v10       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v12       #status_req1:Ljava/lang/String;
    :cond_ee
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "BitMapFactory::decodeFile ::custom api returned null"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_eb .. :try_end_f5} :catchall_120
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_f5} :catch_f6

    goto :goto_c3

    .line 394
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v11           #rightStatus:I
    .end local v12           #status_req1:Ljava/lang/String;
    :catch_f6
    move-exception v15

    .line 399
    if-eqz v13, :cond_e7

    .line 401
    :try_start_f9
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_e7

    .line 402
    :catch_fd
    move-exception v15

    goto :goto_e7

    .line 364
    .restart local v2       #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v7       #length:J
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v10       #resultInfo:Landroid/drm/DrmInfo;
    .restart local v11       #rightStatus:I
    .restart local v12       #status_req1:Ljava/lang/String;
    :cond_ff
    :try_start_ff
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BitMapFactory::decodeFile :: FAIL reason is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "INFO"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_ff .. :try_end_11f} :catchall_120
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_11f} :catch_f6

    goto :goto_c3

    .line 399
    .end local v2           #drmInfoRequest:Landroid/drm/DrmInfoRequest;
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    .end local v10           #resultInfo:Landroid/drm/DrmInfo;
    .end local v11           #rightStatus:I
    .end local v12           #status_req1:Ljava/lang/String;
    :catchall_120
    move-exception v15

    if-eqz v13, :cond_126

    .line 401
    :try_start_123
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_126
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_126} :catch_141

    .line 404
    :cond_126
    :goto_126
    throw v15

    .line 367
    .restart local v3       #drmclient:Landroid/drm/DrmManagerClient;
    .restart local v4       #fileLength:J
    .restart local v6       #isDRM:Z
    .restart local v7       #length:J
    .restart local v9       #mimeType:Ljava/lang/String;
    .restart local v11       #rightStatus:I
    :cond_127
    :try_start_127
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Rights not present. Handle here and show pop up for no license present"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c3

    .line 381
    .end local v3           #drmclient:Landroid/drm/DrmManagerClient;
    .end local v4           #fileLength:J
    .end local v11           #rightStatus:I
    :cond_12f
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v16, "Not a DRM File, opening notmally"

    invoke-virtual/range {v15 .. v16}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13d
    .catchall {:try_start_127 .. :try_end_13d} :catchall_120
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_13d} :catch_f6

    .end local v13           #stream:Ljava/io/InputStream;
    .restart local v14       #stream:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #stream:Ljava/io/InputStream;
    .restart local v13       #stream:Ljava/io/InputStream;
    goto :goto_cf

    .line 402
    .end local v6           #isDRM:Z
    .end local v7           #length:J
    .end local v9           #mimeType:Ljava/lang/String;
    :catch_13f
    move-exception v15

    goto :goto_e7

    :catch_141
    move-exception v16

    goto :goto_126
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 688
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 661
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 662
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 663
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1a

    if-eqz p2, :cond_1a

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1a

    .line 664
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 666
    :cond_1a
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 674
    .end local v0           #bm:Landroid/graphics/Bitmap;
    :goto_1e
    return-object v2

    .line 668
    :cond_1f
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 670
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_24
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    move-result-object v2

    .line 673
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_1e

    .line 674
    :catch_2c
    move-exception v3

    goto :goto_1e

    .line 672
    :catchall_2e
    move-exception v2

    .line 673
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_33

    .line 674
    :goto_32
    throw v2

    :catch_33
    move-exception v3

    goto :goto_32
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "res"
    .parameter "id"

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 465
    .local v1, is:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 466
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 468
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_2e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_25

    move-result-object v0

    .line 476
    if-eqz v1, :cond_15

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_35

    .line 482
    .end local v2           #value:Landroid/util/TypedValue;
    :cond_15
    :goto_15
    if-nez v0, :cond_39

    if-eqz p2, :cond_39

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_39

    .line 483
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 469
    :catch_25
    move-exception v3

    .line 476
    if-eqz v1, :cond_15

    :try_start_28
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_15

    .line 477
    :catch_2c
    move-exception v3

    goto :goto_15

    .line 475
    :catchall_2e
    move-exception v3

    .line 476
    if-eqz v1, :cond_34

    :try_start_31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_37

    .line 479
    :cond_34
    :goto_34
    throw v3

    .line 477
    .restart local v2       #value:Landroid/util/TypedValue;
    :catch_35
    move-exception v3

    goto :goto_15

    .end local v2           #value:Landroid/util/TypedValue;
    :catch_37
    move-exception v4

    goto :goto_34

    .line 486
    :cond_39
    return-object v0
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 428
    if-nez p4, :cond_7

    .line 429
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 432
    .restart local p4
    :cond_7
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_15

    if-eqz p1, :cond_15

    .line 433
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 434
    .local v0, density:I
    if-nez v0, :cond_28

    .line 435
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 441
    .end local v0           #density:I
    :cond_15
    :goto_15
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_23

    if-eqz p0, :cond_23

    .line 442
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 445
    :cond_23
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 436
    .restart local v0       #density:I
    :cond_28
    const v1, 0xffff

    if-eq v0, v1, :cond_15

    .line 437
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 643
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v4, 0x4000

    .line 559
    if-nez p0, :cond_6

    .line 560
    const/4 v3, 0x0

    .line 593
    .end local p0
    :goto_5
    return-object v3

    .line 565
    .restart local p0
    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_12

    .line 566
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v1, is:Ljava/io/InputStream;
    move-object p0, v1

    .line 572
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_12
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 576
    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_35

    .line 577
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_25
    if-nez v0, :cond_43

    if-eqz p2, :cond_43

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_43

    .line 590
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 584
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_35
    const/4 v2, 0x0

    .line 585
    .local v2, tempStorage:[B
    if-eqz p2, :cond_3a

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 586
    :cond_3a
    if-nez v2, :cond_3e

    new-array v2, v4, [B

    .line 587
    :cond_3e
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_25

    .line 593
    .end local v2           #tempStorage:[B
    .end local p0
    :cond_43
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_5
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "bm"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/4 v6, 0x1

    const/high16 v9, 0x3f00

    .line 597
    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    .line 629
    :cond_7
    :goto_7
    return-object p0

    .line 601
    :cond_8
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 602
    .local v0, density:I
    if-eqz v0, :cond_7

    .line 606
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 607
    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 608
    .local v5, targetDensity:I
    if-eqz v5, :cond_7

    if-eq v0, v5, :cond_7

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v7, :cond_7

    .line 612
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    .line 613
    .local v2, np:[B
    if-eqz v2, :cond_55

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v7

    if-eqz v7, :cond_55

    move v1, v6

    .line 614
    .local v1, isNinePatch:Z
    :goto_26
    iget-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v7, :cond_2c

    if-eqz v1, :cond_7

    .line 615
    :cond_2c
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 617
    .local v4, scale:F
    move-object v3, p0

    .line 618
    .local v3, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 620
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 622
    if-eqz v1, :cond_51

    .line 623
    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    .line 624
    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 626
    :cond_51
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_7

    .line 613
    .end local v1           #isNinePatch:Z
    .end local v3           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v4           #scale:F
    :cond_55
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 706
    if-nez p0, :cond_4

    .line 709
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 711
    :cond_4
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    .line 712
    return-void
.end method
