.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_CONTENTDISPOSITION_COL:Ljava/lang/String; = "contentdisposition"

.field private static final CACHE_CONTENTLENGTH_COL:Ljava/lang/String; = "contentlength"

.field private static final CACHE_CROSSDOMAIN_COL:Ljava/lang/String; = "crossdomain"

.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final CACHE_DATABASE_VERSION:I = 0x4

.field private static final CACHE_ENCODING_COL:Ljava/lang/String; = "encoding"

.field private static final CACHE_ETAG_COL:Ljava/lang/String; = "etag"

.field private static final CACHE_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final CACHE_EXPIRES_STRING_COL:Ljava/lang/String; = "expiresstring"

.field private static final CACHE_FILE_PATH_COL:Ljava/lang/String; = "filepath"

.field private static final CACHE_HTTP_STATUS_COL:Ljava/lang/String; = "httpstatus"

.field private static final CACHE_LAST_MODIFY_COL:Ljava/lang/String; = "lastmodify"

.field private static final CACHE_LOCATION_COL:Ljava/lang/String; = "location"

.field private static final CACHE_MIMETYPE_COL:Ljava/lang/String; = "mimetype"

.field private static final CACHE_URL_COL:Ljava/lang/String; = "url"

.field private static final COOKIES_DOMAIN_COL:Ljava/lang/String; = "domain"

.field private static final COOKIES_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final COOKIES_NAME_COL:Ljava/lang/String; = "name"

.field private static final COOKIES_PATH_COL:Ljava/lang/String; = "path"

.field private static final COOKIES_SECURE_COL:Ljava/lang/String; = "secure"

.field private static final COOKIES_VALUE_COL:Ljava/lang/String; = "value"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xb

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_COOKIES_ID:I = 0x0

.field private static final TABLE_FORMDATA_ID:I = 0x3

.field private static final TABLE_FORMURL_ID:I = 0x2

.field private static final TABLE_HTTPAUTH_ID:I = 0x4

.field private static final TABLE_PASSWORD_ID:I = 0x1

.field private static mCacheContentDispositionColIndex:I

.field private static mCacheContentLengthColIndex:I

.field private static mCacheCrossDomainColIndex:I

.field private static mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mCacheETagColIndex:I

.field private static mCacheEncodingColIndex:I

.field private static mCacheExpiresColIndex:I

.field private static mCacheExpiresStringColIndex:I

.field private static mCacheFilePathColIndex:I

.field private static mCacheHttpStatusColIndex:I

.field private static mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private static mCacheLastModifyColIndex:I

.field private static mCacheLocationColIndex:I

.field private static mCacheMimeTypeColIndex:I

.field private static mCacheTransactionRefcount:I

.field private static mCacheUrlColIndex:I

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Landroid/webkit/WebViewDatabase;

.field private static final mTableNames:[Ljava/lang/String;


# instance fields
.field private final mCookieLock:Ljava/lang/Object;

.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private mInitialized:Z

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    :goto_c
    sput-boolean v0, Landroid/webkit/WebViewDatabase;->$assertionsDisabled:Z

    .line 63
    sput-object v3, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 65
    sput-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    sput-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "cookies"

    aput-object v3, v0, v2

    const-string/jumbo v3, "password"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "formurl"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "formdata"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "httpauth"

    aput-object v4, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    .line 95
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_3a
    move v0, v2

    .line 38
    goto :goto_c
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z

    .line 187
    new-instance v0, Landroid/webkit/WebViewDatabase$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDatabase$1;-><init>(Landroid/webkit/WebViewDatabase;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase$1;->start()V

    .line 195
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebViewDatabase;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebViewDatabase;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static bootstrapCacheDatabase()V
    .registers 2

    .prologue
    .line 472
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    .line 473
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    :cond_12
    return-void
.end method

.method private checkInitialized()Z
    .registers 4

    .prologue
    .line 493
    monitor-enter p0

    .line 494
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v1, :cond_20

    .line 496
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 497
    :catch_9
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_a
    const-string/jumbo v1, "webviewdatabase"

    const-string v2, "Caught exception while checking initialization"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const-string/jumbo v1, "webviewdatabase"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 503
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 504
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .registers 3
    .parameter "context"

    .prologue
    .line 198
    const-class v1, Landroid/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    if-nez v0, :cond_e

    .line 199
    new-instance v0, Landroid/webkit/WebViewDatabase;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 201
    :cond_e
    sget-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 198
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private hasEntries(I)Z
    .registers 15
    .parameter "tableId"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 508
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 523
    :goto_8
    return v12

    .line 512
    :cond_9
    const/4 v8, 0x0

    .line 513
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 515
    .local v10, ret:Z
    :try_start_b
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 517
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1f} :catch_2c

    move-result v0

    if-ne v0, v11, :cond_2a

    move v10, v11

    .line 521
    :goto_23
    if-eqz v8, :cond_28

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_28
    :goto_28
    move v12, v10

    .line 523
    goto :goto_8

    :cond_2a
    move v10, v12

    .line 517
    goto :goto_23

    .line 518
    :catch_2c
    move-exception v9

    .line 519
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2d
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3b

    .line 521
    if-eqz v8, :cond_28

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_3b
    move-exception v0

    if-eqz v8, :cond_41

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0
.end method

.method private declared-synchronized init(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 205
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-eqz v0, :cond_7

    .line 219
    :goto_5
    monitor-exit p0

    return-void

    .line 209
    :cond_7
    :try_start_7
    invoke-direct {p0, p1}, Landroid/webkit/WebViewDatabase;->initDatabase(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 211
    const-string/jumbo v0, "webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 217
    :goto_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1d

    goto :goto_5

    .line 205
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 213
    :cond_20
    :try_start_20
    invoke-direct {p0, p1}, Landroid/webkit/WebViewDatabase;->initCacheDatabase(Landroid/content/Context;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    goto :goto_16
.end method

.method private initCacheDatabase(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 266
    sget-boolean v1, Landroid/webkit/WebViewDatabase;->$assertionsDisabled:Z

    if-nez v1, :cond_12

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 269
    :cond_12
    :try_start_12
    const-string/jumbo v1, "webviewCache.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_1d} :catch_2d

    .line 278
    :cond_1d
    :goto_1d
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 282
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_41

    .line 283
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 340
    :goto_2c
    return-void

    .line 271
    :catch_2d
    move-exception v0

    .line 273
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "webviewCache.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 274
    const-string/jumbo v1, "webviewCache.db"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1d

    .line 288
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_41
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_62

    .line 289
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 291
    :try_start_4f
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeCacheDatabase()V

    .line 292
    invoke-static {}, Landroid/webkit/WebViewDatabase;->bootstrapCacheDatabase()V

    .line 293
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_101

    .line 295
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 300
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 304
    :cond_62
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 311
    new-instance v1, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 314
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    .line 316
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "filepath"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    .line 318
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v2, "lastmodify"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    .line 320
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "etag"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    .line 322
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "expires"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    .line 324
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "expiresstring"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    .line 326
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v2, "mimetype"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    .line 328
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "encoding"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    .line 330
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "httpstatus"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    .line 332
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    .line 334
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "contentlength"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    .line 336
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "contentdisposition"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    .line 338
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "crossdomain"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    goto/16 :goto_2c

    .line 295
    :catchall_101
    move-exception v1

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private initDatabase(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 223
    :try_start_2
    const-string/jumbo v1, "webview.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_d} :catch_1d

    .line 232
    :cond_d
    :goto_d
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 236
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3a

    .line 237
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebViewDatabase;->mInitialized:Z

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 263
    :goto_1c
    return-void

    .line 224
    :catch_1d
    move-exception v0

    .line 225
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "webviewdatabase"

    const-string/jumbo v2, "openOrCreateDatabase() failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 228
    const-string/jumbo v1, "webview.db"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_d

    .line 243
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_3a
    :try_start_3a
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_3f} :catch_61

    .line 249
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_5b

    .line 250
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 252
    :try_start_4e
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabase()V

    .line 253
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_56
    .catchall {:try_start_4e .. :try_end_56} :catchall_6c

    .line 255
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 262
    :cond_5b
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    goto :goto_1c

    .line 244
    :catch_61
    move-exception v0

    .line 245
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v1, "webviewdatabase"

    const-string/jumbo v2, "mDatabase.getVersion()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 255
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_6c
    move-exception v1

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private static upgradeCacheDatabase()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    .line 461
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 462
    .local v0, oldVersion:I
    if-eqz v0, :cond_32

    .line 463
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_32
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 468
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 469
    return-void
.end method

.method private static upgradeDatabase()V
    .registers 2

    .prologue
    .line 343
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabaseToV10()V

    .line 344
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabaseFromV10ToV11()V

    .line 347
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 348
    return-void
.end method

.method private static upgradeDatabaseFromV10ToV11()V
    .registers 16

    .prologue
    const/4 v15, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 351
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v10

    .line 353
    .local v10, oldVersion:I
    const/16 v0, 0xb

    if-lt v10, v0, :cond_f

    .line 379
    :goto_e
    return-void

    .line 358
    :cond_f
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 361
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v13

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 364
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    :cond_38
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v15

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 370
    .local v8, c:Landroid/database/Cursor;
    :goto_47
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 371
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 372
    .local v12, urlId:Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, url:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 374
    .local v9, cv:Landroid/content/ContentValues;
    const-string/jumbo v0, "url"

    invoke-static {v11}, Landroid/webkit/WebTextView;->urlForAutoCompleteData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, v15

    const-string v2, "_id=?"

    new-array v3, v14, [Ljava/lang/String;

    aput-object v12, v3, v13

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_47

    .line 378
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #urlId:Ljava/lang/String;
    :cond_85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_e
.end method

.method private static upgradeDatabaseToV10()V
    .registers 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 382
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 384
    .local v0, oldVersion:I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_10

    .line 458
    :goto_f
    return-void

    .line 389
    :cond_10
    if-eqz v0, :cond_3d

    .line 390
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_3d
    const/16 v1, 0x9

    if-ne v1, v0, :cond_df

    .line 396
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 398
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 408
    :cond_df
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 413
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 415
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 417
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 421
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "domain"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "secure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 427
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (path)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urlid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT IGNORE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 444
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "realm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER PRIMARY KEY, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " TEXT,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UNIQUE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "host"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "username"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") ON CONFLICT REPLACE);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_f
.end method


# virtual methods
.method addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 7
    .parameter "url"
    .parameter "c"

    .prologue
    .line 794
    sget-boolean v0, Landroid/webkit/WebViewDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 796
    :cond_10
    if-eqz p1, :cond_18

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    .line 816
    :cond_18
    :goto_18
    return-void

    .line 800
    :cond_19
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 801
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 802
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 803
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 804
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 805
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 806
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 807
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 808
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 809
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    iget v2, p2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 810
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 811
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    iget-wide v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 812
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 814
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    iget-object v2, p2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 815
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto :goto_18
.end method

.method addCookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 9
    .parameter "cookie"

    .prologue
    .line 616
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 633
    :cond_12
    :goto_12
    return-void

    .line 621
    :cond_13
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v2

    .line 622
    :try_start_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v0, cookieVal:Landroid/content/ContentValues;
    const-string v1, "domain"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string/jumbo v1, "path"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string/jumbo v1, "name"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v1, "value"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4d

    .line 628
    const-string v1, "expires"

    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    :cond_4d
    const-string/jumbo v1, "secure"

    iget-boolean v3, p1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 631
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 632
    monitor-exit v2

    goto :goto_12

    .end local v0           #cookieVal:Landroid/content/ContentValues;
    :catchall_66
    move-exception v1

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_16 .. :try_end_68} :catchall_66

    throw v1
.end method

.method clearCache()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 822
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 827
    :goto_7
    return-void

    .line 826
    :cond_8
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_7
.end method

.method clearCookies()V
    .registers 6

    .prologue
    .line 650
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 657
    :goto_6
    return-void

    .line 654
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    monitor-exit v1

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method clearExpiredCookies(J)V
    .registers 11
    .parameter "now"

    .prologue
    .line 680
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_7

    .line 689
    :goto_6
    return-void

    .line 684
    :cond_7
    const-string v0, "expires <= ?"

    .line 685
    .local v0, expires:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v2

    .line 686
    :try_start_c
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 688
    monitor-exit v2

    goto :goto_6

    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_24

    throw v1
.end method

.method public clearFormData()V
    .registers 6

    .prologue
    .line 1251
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1259
    :goto_6
    return-void

    .line 1255
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1256
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1257
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1258
    monitor-exit v1

    goto :goto_6

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_24

    throw v0
.end method

.method public clearHttpAuthUsernamePassword()V
    .registers 6

    .prologue
    .line 1121
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1128
    :goto_6
    return-void

    .line 1125
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1126
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1127
    monitor-exit v1

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method clearSessionCookies()V
    .registers 7

    .prologue
    .line 663
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_7

    .line 672
    :goto_6
    return-void

    .line 667
    :cond_7
    const-string v0, "expires ISNULL"

    .line 668
    .local v0, sessionExpired:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v2

    .line 669
    :try_start_c
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires ISNULL"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 671
    monitor-exit v2

    goto :goto_6

    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public clearUsernamePassword()V
    .registers 6

    .prologue
    .line 1024
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1031
    :goto_6
    return-void

    .line 1028
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1029
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1030
    monitor-exit v1

    goto :goto_6

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw v0
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "domain"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 597
    if-eqz p1, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_9

    .line 608
    :cond_8
    :goto_8
    return-void

    .line 601
    :cond_9
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v2

    .line 602
    :try_start_c
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .line 605
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    monitor-exit v2

    goto :goto_8

    .end local v0           #where:Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v1
.end method

.method endCacheTransaction()Z
    .registers 4

    .prologue
    .line 712
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-nez v0, :cond_52

    .line 713
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 715
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_3f
    :try_start_3f
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 722
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_4a
    return v0

    .line 722
    :catchall_4b
    move-exception v0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 726
    :cond_52
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method getAllCacheFileNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 923
    const/4 v2, 0x0

    .line 924
    .local v2, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 926
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath FROM cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 929
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_40
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1c} :catch_31

    .line 931
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    const/4 v4, 0x0

    :try_start_1d
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_47
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_27} :catch_4a

    move-result v4

    if-nez v4, :cond_1c

    move-object v2, v3

    .line 937
    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 939
    :cond_30
    :goto_30
    return-object v2

    .line 934
    :catch_31
    move-exception v1

    .line 935
    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_32
    :try_start_32
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getAllCacheFileNames"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_40

    .line 937
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_40
    move-exception v4

    :goto_41
    if-eqz v0, :cond_46

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_46
    throw v4

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_47
    move-exception v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_41

    .line 934
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4a
    move-exception v1

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_32
.end method

.method getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 736
    sget-boolean v5, Landroid/webkit/WebViewDatabase;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v5

    if-eqz v5, :cond_11

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 738
    :cond_11
    if-eqz p1, :cond_19

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v5

    if-nez v5, :cond_1b

    :cond_19
    move-object v3, v4

    .line 769
    :cond_1a
    :goto_1a
    return-object v3

    .line 742
    :cond_1b
    const/4 v0, 0x0

    .line 743
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    .line 747
    .local v2, query:Ljava/lang/String;
    :try_start_1e
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain FROM cache WHERE url = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_95

    .line 749
    new-instance v3, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v3}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 750
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 751
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 752
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 753
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 754
    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 755
    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 756
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 757
    const/4 v5, 0x7

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 758
    const/16 v5, 0x8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 759
    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 760
    const/16 v5, 0xa

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 761
    const/16 v5, 0xb

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_1e .. :try_end_8f} :catchall_ac
    .catch Ljava/lang/IllegalStateException; {:try_start_1e .. :try_end_8f} :catch_9d

    .line 767
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1a

    .end local v3           #ret:Landroid/webkit/CacheManager$CacheResult;
    :cond_95
    if-eqz v0, :cond_9a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9a
    :goto_9a
    move-object v3, v4

    .line 769
    goto/16 :goto_1a

    .line 764
    :catch_9d
    move-exception v1

    .line 765
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_9e
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "getCache"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_ac

    .line 767
    if-eqz v0, :cond_9a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_9a

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_ac
    move-exception v4

    if-eqz v0, :cond_b2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b2
    throw v4
.end method

.method getCacheTotalSize()J
    .registers 9

    .prologue
    .line 849
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_7

    .line 850
    const-wide/16 v3, 0x0

    .line 865
    :cond_6
    :goto_6
    return-wide v3

    .line 852
    :cond_7
    const-wide/16 v3, 0x0

    .line 853
    .local v3, size:J
    const/4 v0, 0x0

    .line 854
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .line 856
    .local v2, query:Ljava/lang/String;
    :try_start_c
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 857
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 858
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_35
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_1f} :catch_26

    move-result-wide v3

    .line 863
    :cond_20
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 860
    :catch_26
    move-exception v1

    .line 861
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_27
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "getCacheTotalSize"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_35

    .line 863
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_35
    move-exception v5

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v5
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 23
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 537
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz p1, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_e

    .line 583
    :cond_d
    :goto_d
    return-object v14

    .line 542
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 543
    const/4 v1, 0x7

    :try_start_16
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "domain"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "path"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "name"

    aput-object v2, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "value"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    const-string v2, "expires"

    aput-object v2, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "secure"

    aput-object v2, v3, v1

    .line 548
    .local v3, columns:[Ljava/lang/String;
    const-string v18, "(domain GLOB \'*\' || ?)"
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_d0

    .line 550
    .local v18, selection:Ljava/lang/String;
    const/4 v10, 0x0

    .line 552
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_42
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "(domain GLOB \'*\' || ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 555
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 556
    const-string v1, "domain"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 557
    .local v11, domainCol:I
    const-string/jumbo v1, "path"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 558
    .local v16, pathCol:I
    const-string/jumbo v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 559
    .local v15, nameCol:I
    const-string/jumbo v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 560
    .local v19, valueCol:I
    const-string v1, "expires"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 561
    .local v13, expiresCol:I
    const-string/jumbo v1, "secure"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 563
    .local v17, secureCol:I
    :cond_86
    new-instance v9, Landroid/webkit/CookieManager$Cookie;

    invoke-direct {v9}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 564
    .local v9, cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 565
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 566
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 567
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 568
    invoke-interface {v10, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 569
    const-wide/16 v1, -0x1

    iput-wide v1, v9, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 573
    :goto_b1
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_e9

    const/4 v1, 0x1

    :goto_ba
    iput-boolean v1, v9, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 574
    const/4 v1, 0x1

    iput-byte v1, v9, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 575
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c5
    .catchall {:try_start_42 .. :try_end_c5} :catchall_eb
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_c5} :catch_da

    move-result v1

    if-nez v1, :cond_86

    .line 581
    .end local v9           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v11           #domainCol:I
    .end local v13           #expiresCol:I
    .end local v15           #nameCol:I
    .end local v16           #pathCol:I
    .end local v17           #secureCol:I
    .end local v19           #valueCol:I
    :cond_c8
    if-eqz v10, :cond_cd

    :try_start_ca
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_cd
    :goto_cd
    monitor-exit v20

    goto/16 :goto_d

    .line 584
    .end local v3           #columns:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v18           #selection:Ljava/lang/String;
    :catchall_d0
    move-exception v1

    monitor-exit v20
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_d0

    throw v1

    .line 571
    .restart local v3       #columns:[Ljava/lang/String;
    .restart local v9       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #domainCol:I
    .restart local v13       #expiresCol:I
    .restart local v15       #nameCol:I
    .restart local v16       #pathCol:I
    .restart local v17       #secureCol:I
    .restart local v18       #selection:Ljava/lang/String;
    .restart local v19       #valueCol:I
    :cond_d3
    :try_start_d3
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_d9
    .catchall {:try_start_d3 .. :try_end_d9} :catchall_eb
    .catch Ljava/lang/IllegalStateException; {:try_start_d3 .. :try_end_d9} :catch_da

    goto :goto_b1

    .line 578
    .end local v9           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v11           #domainCol:I
    .end local v13           #expiresCol:I
    .end local v15           #nameCol:I
    .end local v16           #pathCol:I
    .end local v17           #secureCol:I
    .end local v19           #valueCol:I
    :catch_da
    move-exception v12

    .line 579
    .local v12, e:Ljava/lang/IllegalStateException;
    :try_start_db
    const-string/jumbo v1, "webviewdatabase"

    const-string v2, "getCookiesForDomain"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_db .. :try_end_e3} :catchall_eb

    .line 581
    if-eqz v10, :cond_cd

    :try_start_e5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_cd

    .line 573
    .end local v12           #e:Ljava/lang/IllegalStateException;
    .restart local v9       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v11       #domainCol:I
    .restart local v13       #expiresCol:I
    .restart local v15       #nameCol:I
    .restart local v16       #pathCol:I
    .restart local v17       #secureCol:I
    .restart local v19       #valueCol:I
    :cond_e9
    const/4 v1, 0x0

    goto :goto_ba

    .line 581
    .end local v9           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v11           #domainCol:I
    .end local v13           #expiresCol:I
    .end local v15           #nameCol:I
    .end local v16           #pathCol:I
    .end local v17           #secureCol:I
    .end local v19           #valueCol:I
    :catchall_eb
    move-exception v1

    if-eqz v10, :cond_f1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_f1
    throw v1
    :try_end_f2
    .catchall {:try_start_e5 .. :try_end_f2} :catchall_d0
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 22
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1190
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v17, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1232
    :cond_f
    :goto_f
    return-object v17

    .line 1195
    :cond_10
    const-string v13, "(url == ?)"

    .line 1196
    .local v13, urlSelection:Ljava/lang/String;
    const-string v11, "(urlid == ?) AND (name == ?)"

    .line 1198
    .local v11, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1199
    const/4 v9, 0x0

    .line 1201
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_1c
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1204
    :cond_34
    :goto_34
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c6

    .line 1205
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_43
    .catchall {:try_start_1c .. :try_end_43} :catchall_b8
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_43} :catch_94

    move-result-wide v14

    .line 1206
    .local v14, urlid:J
    const/4 v10, 0x0

    .line 1208
    .local v10, dataCursor:Landroid/database/Cursor;
    :try_start_45
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "value"

    aput-object v5, v3, v4

    const-string v4, "(urlid == ?) AND (name == ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1214
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1215
    const-string/jumbo v1, "value"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1218
    .local v16, valueCol:I
    :cond_7d
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8b
    .catchall {:try_start_45 .. :try_end_8b} :catchall_bf
    .catch Ljava/lang/IllegalStateException; {:try_start_45 .. :try_end_8b} :catch_a8

    move-result v1

    if-nez v1, :cond_7d

    .line 1224
    .end local v16           #valueCol:I
    :cond_8e
    if-eqz v10, :cond_34

    :try_start_90
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_b8
    .catch Ljava/lang/IllegalStateException; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_34

    .line 1227
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v14           #urlid:J
    :catch_94
    move-exception v12

    .line 1228
    .local v12, e:Ljava/lang/IllegalStateException;
    :try_start_95
    const-string/jumbo v1, "webviewdatabase"

    const-string v2, "getFormData cursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_95 .. :try_end_9d} :catchall_b8

    .line 1230
    if-eqz v9, :cond_a2

    :try_start_9f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1232
    .end local v12           #e:Ljava/lang/IllegalStateException;
    :cond_a2
    :goto_a2
    monitor-exit v18

    goto/16 :goto_f

    .line 1233
    :catchall_a5
    move-exception v1

    monitor-exit v18
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_a5

    throw v1

    .line 1221
    .restart local v10       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #urlid:J
    :catch_a8
    move-exception v12

    .line 1222
    .restart local v12       #e:Ljava/lang/IllegalStateException;
    :try_start_a9
    const-string/jumbo v1, "webviewdatabase"

    const-string v2, "getFormData dataCursor"

    invoke-static {v1, v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_bf

    .line 1224
    if-eqz v10, :cond_34

    :try_start_b3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_b8
    .catch Ljava/lang/IllegalStateException; {:try_start_b3 .. :try_end_b6} :catch_94

    goto/16 :goto_34

    .line 1230
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v12           #e:Ljava/lang/IllegalStateException;
    .end local v14           #urlid:J
    :catchall_b8
    move-exception v1

    if-eqz v9, :cond_be

    :try_start_bb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_be
    throw v1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_a5

    .line 1224
    .restart local v10       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #urlid:J
    :catchall_bf
    move-exception v1

    if-eqz v10, :cond_c5

    :try_start_c2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c5
    throw v1
    :try_end_c6
    .catchall {:try_start_c2 .. :try_end_c6} :catchall_b8
    .catch Ljava/lang/IllegalStateException; {:try_start_c2 .. :try_end_c6} :catch_94

    .line 1230
    .end local v10           #dataCursor:Landroid/database/Cursor;
    .end local v14           #urlid:J
    :cond_c6
    if-eqz v9, :cond_a2

    :try_start_c8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_a5

    goto :goto_a2
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 1074
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1102
    :cond_e
    :goto_e
    return-object v10

    .line 1078
    :cond_f
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v1

    const-string/jumbo v0, "password"

    aput-object v0, v2, v3

    .line 1081
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 1083
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1084
    const/4 v10, 0x0

    .line 1085
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1087
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_22
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1090
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1091
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 1092
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1094
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_60
    .catchall {:try_start_22 .. :try_end_60} :catchall_79
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_60} :catch_6a

    .line 1100
    :cond_60
    if-eqz v8, :cond_65

    :try_start_62
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1102
    :cond_65
    :goto_65
    monitor-exit v12

    goto :goto_e

    .line 1103
    :catchall_67
    move-exception v0

    monitor-exit v12
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_67

    throw v0

    .line 1097
    :catch_6a
    move-exception v9

    .line 1098
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_79

    .line 1100
    if-eqz v8, :cond_65

    :try_start_75
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_65

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_79
    move-exception v0

    if-eqz v8, :cond_7f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_67
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter "schemePlusHost"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 978
    if-eqz p1, :cond_c

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1005
    :cond_c
    :goto_c
    return-object v10

    .line 982
    :cond_d
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v3

    const-string/jumbo v0, "password"

    aput-object v0, v2, v1

    .line 985
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 986
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 987
    const/4 v10, 0x0

    .line 988
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 990
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_20
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 993
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 994
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 995
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 997
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_5b
    .catchall {:try_start_20 .. :try_end_5b} :catchall_74
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_5b} :catch_65

    .line 1003
    :cond_5b
    if-eqz v8, :cond_60

    :try_start_5d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1005
    :cond_60
    :goto_60
    monitor-exit v12

    goto :goto_c

    .line 1006
    :catchall_62
    move-exception v0

    monitor-exit v12
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    throw v0

    .line 1000
    :catch_65
    move-exception v9

    .line 1001
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_66
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_74

    .line 1003
    if-eqz v8, :cond_60

    :try_start_70
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_74
    move-exception v0

    if-eqz v8, :cond_7a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_62
.end method

.method hasCache()Z
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 830
    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 845
    :goto_8
    return v12

    .line 834
    :cond_9
    const/4 v8, 0x0

    .line 835
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 837
    .local v10, ret:Z
    :try_start_b
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 839
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_39
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_1d} :catch_2a

    move-result v0

    if-ne v0, v11, :cond_28

    move v10, v11

    .line 843
    :goto_21
    if-eqz v8, :cond_26

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_26
    :goto_26
    move v12, v10

    .line 845
    goto :goto_8

    :cond_28
    move v10, v12

    .line 839
    goto :goto_21

    .line 840
    :catch_2a
    move-exception v9

    .line 841
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasCache"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_39

    .line 843
    if-eqz v8, :cond_26

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_26

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_39
    move-exception v0

    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method hasCookies()Z
    .registers 3

    .prologue
    .line 641
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 642
    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 643
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasFormData()Z
    .registers 3

    .prologue
    .line 1242
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1243
    const/4 v0, 0x2

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1244
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .registers 3

    .prologue
    .line 1112
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    const/4 v0, 0x4

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1114
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public hasUsernamePassword()Z
    .registers 3

    .prologue
    .line 1015
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1016
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1017
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method removeCache(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 778
    sget-boolean v0, Landroid/webkit/WebViewDatabase;->$assertionsDisabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 780
    :cond_10
    if-eqz p1, :cond_18

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    .line 785
    :cond_18
    :goto_18
    return-void

    .line 784
    :cond_19
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 23
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1142
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1180
    :cond_a
    :goto_a
    return-void

    .line 1146
    :cond_b
    const-string v15, "(url == ?)"

    .line 1147
    .local v15, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1148
    const-wide/16 v17, -0x1

    .line 1149
    .local v17, urlid:J
    const/4 v10, 0x0

    .line 1151
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_17
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "(url == ?)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1154
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1155
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_be
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_3e} :catch_ae

    move-result-wide v17

    .line 1165
    :goto_3f
    if-eqz v10, :cond_44

    :try_start_41
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1167
    :cond_44
    :goto_44
    const-wide/16 v1, 0x0

    cmp-long v1, v17, v1

    if-ltz v1, :cond_c5

    .line 1168
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 1169
    .local v16, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1170
    .local v13, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1171
    .local v14, map:Landroid/content/ContentValues;
    const-string/jumbo v1, "urlid"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1172
    :goto_61
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1173
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1174
    .local v12, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "name"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string/jumbo v2, "value"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v14, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_61

    .line 1179
    .end local v12           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14           #map:Landroid/content/ContentValues;
    .end local v16           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_91
    move-exception v1

    monitor-exit v19
    :try_end_93
    .catchall {:try_start_41 .. :try_end_93} :catchall_91

    throw v1

    .line 1157
    :cond_94
    :try_start_94
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1158
    .local v9, c:Landroid/content/ContentValues;
    const-string/jumbo v1, "url"

    move-object/from16 v0, p1

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ac
    .catchall {:try_start_94 .. :try_end_ac} :catchall_be
    .catch Ljava/lang/IllegalStateException; {:try_start_94 .. :try_end_ac} :catch_ae

    move-result-wide v17

    goto :goto_3f

    .line 1162
    .end local v9           #c:Landroid/content/ContentValues;
    :catch_ae
    move-exception v11

    .line 1163
    .local v11, e:Ljava/lang/IllegalStateException;
    :try_start_af
    const-string/jumbo v1, "webviewdatabase"

    const-string/jumbo v2, "setFormData"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_be

    .line 1165
    if-eqz v10, :cond_44

    :try_start_ba
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .end local v11           #e:Ljava/lang/IllegalStateException;
    :catchall_be
    move-exception v1

    if-eqz v10, :cond_c4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c4
    throw v1

    .line 1179
    :cond_c5
    monitor-exit v19
    :try_end_c6
    .catchall {:try_start_ba .. :try_end_c6} :catchall_91

    goto/16 :goto_a
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1049
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1062
    :cond_a
    :goto_a
    return-void

    .line 1053
    :cond_b
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1054
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1055
    .local v0, c:Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string/jumbo v1, "realm"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1061
    monitor-exit v2

    goto :goto_a

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_38
    move-exception v1

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_38

    throw v1
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 956
    if-eqz p1, :cond_8

    invoke-direct {p0}, Landroid/webkit/WebViewDatabase;->checkInitialized()Z

    move-result v1

    if-nez v1, :cond_9

    .line 968
    :cond_8
    :goto_8
    return-void

    .line 960
    :cond_9
    iget-object v2, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v2

    .line 961
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 962
    .local v0, c:Landroid/content/ContentValues;
    const-string v1, "host"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 967
    monitor-exit v2

    goto :goto_8

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_30
    move-exception v1

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v1
.end method

.method startCacheTransaction()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 697
    sget v1, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-ne v1, v0, :cond_47

    .line 698
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 700
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_41
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 707
    :goto_46
    return v0

    :cond_47
    const/4 v0, 0x0

    goto :goto_46
.end method

.method trimCache(J)Ljava/util/List;
    .registers 19
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x64

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 870
    .local v9, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 871
    .local v1, cursor:Landroid/database/Cursor;
    const-string v11, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    .line 873
    .local v11, query:Ljava/lang/String;
    :try_start_a
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 874
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_67

    .line 875
    const/16 v0, 0x64

    .line 876
    .local v0, batchSize:I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x654

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 877
    .local v10, pathStr:Ljava/lang/StringBuilder;
    const-string v13, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const/4 v4, 0x1

    .local v4, i:I
    :goto_28
    if-ge v4, v0, :cond_32

    .line 879
    const-string v13, ", ?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 881
    :cond_32
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_ad
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_37} :catch_96

    .line 882
    const/4 v12, 0x0

    .line 884
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_38
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 887
    const/4 v5, 0x1

    .local v5, index:I
    move v6, v5

    .line 889
    .end local v5           #index:I
    .local v6, index:I
    :goto_44
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 890
    .local v7, length:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_6d

    move v5, v6

    .line 902
    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_50
    :goto_50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_5c

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gtz v13, :cond_b4

    .line 903
    :cond_5c
    const/4 v13, 0x1

    if-le v5, v13, :cond_62

    .line 906
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_62
    .catchall {:try_start_38 .. :try_end_62} :catchall_a6
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_62} :catch_86

    .line 911
    :cond_62
    if-eqz v12, :cond_67

    :try_start_64
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_ad
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_67} :catch_96

    .line 917
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #length:J
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_67
    :goto_67
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 919
    :cond_6c
    :goto_6c
    return-object v9

    .line 893
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_6d
    sub-long p1, p1, v7

    .line 894
    const/4 v13, 0x1

    :try_start_70
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v12, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 896
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    if-ne v6, v0, :cond_50

    .line 898
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 899
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_84
    .catchall {:try_start_70 .. :try_end_84} :catchall_a6
    .catch Ljava/lang/IllegalStateException; {:try_start_70 .. :try_end_84} :catch_86

    .line 900
    const/4 v5, 0x1

    goto :goto_50

    .line 908
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #length:J
    :catch_86
    move-exception v2

    .line 909
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_87
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache SQLiteStatement"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_a6

    .line 911
    if-eqz v12, :cond_67

    :try_start_92
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_ad
    .catch Ljava/lang/IllegalStateException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_67

    .line 914
    .end local v0           #batchSize:I
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_96
    move-exception v2

    .line 915
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :try_start_97
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache Cursor"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_ad

    .line 917
    if-eqz v1, :cond_6c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6c

    .line 911
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_a6
    move-exception v13

    if-eqz v12, :cond_ac

    :try_start_a9
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_ac
    throw v13
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_ad
    .catch Ljava/lang/IllegalStateException; {:try_start_a9 .. :try_end_ad} :catch_96

    .line 917
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_ad
    move-exception v13

    if-eqz v1, :cond_b3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b3
    throw v13

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_b4
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_44
.end method
