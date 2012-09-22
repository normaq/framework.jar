.class public final Landroid/webkit/CookieManager;
.super Ljava/lang/Object;
.source "CookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CookieManager$CookieComparator;,
        Landroid/webkit/CookieManager$Cookie;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BAD_COUNTRY_2LDS:[Ljava/lang/String; = null

.field private static final COMMA:C = ','

.field private static final COMPARATOR:Landroid/webkit/CookieManager$CookieComparator; = null

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final EQUAL:C = '='

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_ONLY:Ljava/lang/String; = "httponly"

#the value of this static final field might be set in the static constructor
.field private static final HTTP_ONLY_LENGTH:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final MAX_COOKIE_COUNT_PER_BASE_DOMAIN:I = 0x32

.field private static final MAX_COOKIE_LENGTH:I = 0x1000

.field private static final MAX_DOMAIN_COUNT:I = 0xc8

.field private static final MAX_RAM_COOKIES_COUNT:I = 0x3e8

.field private static final MAX_RAM_DOMAIN_COUNT:I = 0xf

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATH_DELIM:C = '/'

.field private static final PERIOD:C = '.'

.field private static final QUESTION_MARK:C = '?'

.field private static final QUOTATION:C = '\"'

.field private static final SECURE:Ljava/lang/String; = "secure"

#the value of this static final field might be set in the static constructor
.field private static final SECURE_LENGTH:I = 0x0

.field private static final SEMICOLON:C = ';'

.field private static final WHITE_SPACE:C = ' '

.field private static sRef:Landroid/webkit/CookieManager;


# instance fields
.field private mAcceptCookie:Z

.field private mCookieMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingCookieOperations:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-class v0, Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_81

    move v0, v1

    :goto_b
    sput-boolean v0, Landroid/webkit/CookieManager;->$assertionsDisabled:Z

    .line 83
    const-string/jumbo v0, "secure"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    .line 85
    const-string v0, "httponly"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    .line 116
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "ac"

    aput-object v3, v0, v2

    const-string v2, "co"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ed"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "edu"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "go"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gouv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lg"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ne"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "net"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "or"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "org"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    .line 121
    sget-object v0, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 214
    new-instance v0, Landroid/webkit/CookieManager$CookieComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager$CookieComparator;-><init>(Landroid/webkit/CookieManager$1;)V

    sput-object v0, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    return-void

    :cond_81
    move v0, v2

    .line 47
    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc8

    const/high16 v2, 0x3f40

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    .line 108
    iput-boolean v3, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    .line 250
    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 47
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveSessionCookie()V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/CookieManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/webkit/CookieManager;->signalCookieOperationsComplete()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/CookieManager;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Landroid/webkit/CookieManager;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    return-object p1
.end method

.method public static allowFileSchemeCookies()Z
    .registers 1

    .prologue
    .line 763
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 764
    invoke-static {}, Landroid/webkit/CookieManager;->nativeAcceptFileSchemeCookies()Z

    move-result v0

    .line 766
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private getBaseDomain(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "host"

    .prologue
    const/16 v3, 0x2e

    .line 963
    const/4 v2, 0x0

    .line 964
    .local v2, startIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 965
    .local v1, nextIndex:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 966
    .local v0, lastIndex:I
    :goto_b
    if-ge v1, v0, :cond_14

    .line 967
    add-int/lit8 v2, v1, 0x1

    .line 968
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_b

    .line 970
    :cond_14
    if-lez v2, :cond_1a

    .line 971
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 973
    .end local p1
    :cond_1a
    return-object p1
.end method

.method private getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v7, -0x1

    const/16 v4, 0x2e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 905
    invoke-virtual {p1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    invoke-virtual {p1}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7b

    .line 915
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    .line 916
    .local v1, ret:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 917
    invoke-virtual {p1}, Landroid/net/WebAddress;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 919
    aget-object v3, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 920
    .local v0, index:I
    if-ne v0, v7, :cond_4a

    .line 921
    invoke-virtual {p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 925
    const-string/jumbo v3, "localhost"

    aput-object v3, v1, v5

    .line 932
    :cond_3e
    :goto_3e
    aget-object v3, v1, v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_68

    move-object v1, v2

    .line 953
    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_49
    :goto_49
    return-object v1

    .line 927
    .restart local v0       #index:I
    .restart local v1       #ret:[Ljava/lang/String;
    :cond_4a
    aget-object v3, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v0, v3, :cond_3e

    .line 929
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    goto :goto_3e

    .line 946
    :cond_68
    aget-object v2, v1, v6

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 947
    if-eq v0, v7, :cond_49

    .line 948
    aget-object v2, v1, v6

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_49

    .end local v0           #index:I
    .end local v1           #ret:[Ljava/lang/String;
    :cond_7b
    move-object v1, v2

    .line 953
    goto :goto_49
.end method

.method public static declared-synchronized getInstance()Landroid/webkit/CookieManager;
    .registers 2

    .prologue
    .line 265
    const-class v1, Landroid/webkit/CookieManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    if-nez v0, :cond_e

    .line 266
    new-instance v0, Landroid/webkit/CookieManager;

    invoke-direct {v0}, Landroid/webkit/CookieManager;-><init>()V

    sput-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;

    .line 268
    :cond_e
    sget-object v0, Landroid/webkit/CookieManager;->sRef:Landroid/webkit/CookieManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 265
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeAcceptCookie()Z
.end method

.method private static native nativeAcceptFileSchemeCookies()Z
.end method

.method private static native nativeFlushCookieStore()V
.end method

.method private static native nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private static native nativeHasCookies(Z)Z
.end method

.method private static native nativeRemoveAllCookie()V
.end method

.method private static native nativeRemoveExpiredCookie()V
.end method

.method private static native nativeRemoveSessionCookie()V
.end method

.method private static native nativeSetAcceptCookie(Z)V
.end method

.method private static native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private static native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method private parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 30
    .parameter "host"
    .parameter "path"
    .parameter "cookieString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 993
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v15, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/4 v10, 0x0

    .line 996
    .local v10, index:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    .line 998
    .local v13, length:I
    :cond_a
    :goto_a
    const/4 v5, 0x0

    .line 1001
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    if-ltz v10, :cond_f

    if-lt v10, v13, :cond_10

    .line 1230
    :cond_f
    return-object v15

    .line 1006
    :cond_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 1007
    add-int/lit8 v10, v10, 0x1

    .line 1008
    goto :goto_a

    .line 1020
    :cond_21
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1021
    .local v17, semicolonIndex:I
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1022
    .local v7, equalIndex:I
    new-instance v5, Landroid/webkit/CookieManager$Cookie;

    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v5, v0, v1}, Landroid/webkit/CookieManager$Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_4a

    move/from16 v0, v17

    if-lt v0, v7, :cond_50

    :cond_4a
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_7e

    .line 1033
    :cond_50
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_5a

    .line 1034
    move/from16 v17, v13

    .line 1036
    :cond_5a
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 1037
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 1070
    :goto_6c
    move/from16 v10, v17

    .line 1073
    :cond_6e
    :goto_6e
    if-ltz v10, :cond_72

    if-lt v10, v13, :cond_111

    .line 1226
    :cond_72
    :goto_72
    if-eqz v5, :cond_a

    iget-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    .line 1227
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1039
    :cond_7e
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 1042
    add-int/lit8 v20, v13, -0x1

    move/from16 v0, v20

    if-ge v7, v0, :cond_b4

    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b4

    .line 1044
    const/16 v20, 0x22

    add-int/lit8 v21, v7, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 1045
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v10, v0, :cond_f

    .line 1052
    :cond_b4
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1053
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_c8

    .line 1054
    move/from16 v17, v13

    .line 1056
    :cond_c8
    sub-int v20, v17, v7

    const/16 v21, 0x1000

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_eb

    .line 1058
    add-int/lit8 v20, v7, 0x1

    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto :goto_6c

    .line 1060
    :cond_eb
    add-int/lit8 v20, v7, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-eq v0, v1, :cond_f7

    move/from16 v0, v17

    if-ge v0, v7, :cond_ff

    .line 1063
    :cond_f7
    const-string v20, ""

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_6c

    .line 1065
    :cond_ff
    add-int/lit8 v20, v7, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    goto/16 :goto_6c

    .line 1078
    :cond_111
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12d

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_131

    .line 1080
    :cond_12d
    add-int/lit8 v10, v10, 0x1

    .line 1081
    goto/16 :goto_6e

    .line 1085
    :cond_131
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_143

    .line 1086
    add-int/lit8 v10, v10, 0x1

    .line 1087
    goto/16 :goto_72

    .line 1092
    :cond_143
    sub-int v20, v13, v10

    sget v21, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_180

    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "secure"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_180

    .line 1095
    sget v20, Landroid/webkit/CookieManager;->SECURE_LENGTH:I

    add-int v10, v10, v20

    .line 1096
    const/16 v20, 0x1

    move/from16 v0, v20

    iput-boolean v0, v5, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 1097
    if-eq v10, v13, :cond_72

    .line 1098
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6e

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6e

    .line 1104
    :cond_180
    sub-int v20, v13, v10

    sget v21, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b6

    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v20, v20, v10

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "httponly"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1b6

    .line 1108
    sget v20, Landroid/webkit/CookieManager;->HTTP_ONLY_LENGTH:I

    add-int v10, v10, v20

    .line 1109
    if-eq v10, v13, :cond_72

    .line 1110
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3d

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6e

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6e

    .line 1114
    :cond_1b6
    const/16 v20, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1115
    if-lez v7, :cond_3fb

    .line 1116
    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1117
    .local v14, name:Ljava/lang/String;
    add-int/lit8 v19, v7, 0x1

    .line 1118
    .local v19, valueIndex:I
    :goto_1ce
    move/from16 v0, v19

    if-ge v0, v13, :cond_1e5

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e5

    .line 1119
    add-int/lit8 v19, v19, 0x1

    goto :goto_1ce

    .line 1122
    :cond_1e5
    const-string v20, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20b

    .line 1123
    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1128
    .local v3, comaIndex:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_20b

    sub-int v20, v3, v19

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_20b

    .line 1130
    add-int/lit8 v10, v3, 0x1

    .line 1133
    .end local v3           #comaIndex:I
    :cond_20b
    const/16 v20, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    .line 1134
    const/16 v20, 0x2c

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1135
    .local v4, commaIndex:I
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2a2

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_2a2

    .line 1136
    move v10, v13

    .line 1144
    :goto_22e
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1147
    .local v18, value:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_26e

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_26e

    .line 1148
    const/16 v20, 0x22

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 1149
    .local v6, endQuote:I
    if-lez v6, :cond_26e

    .line 1150
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1153
    .end local v6           #endQuote:I
    :cond_26e
    const-string v20, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2be

    .line 1155
    :try_start_278
    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_280
    .catch Ljava/lang/IllegalArgumentException; {:try_start_278 .. :try_end_280} :catch_282

    goto/16 :goto_6e

    .line 1156
    :catch_282
    move-exception v8

    .line 1157
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for expires: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 1137
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v18           #value:Ljava/lang/String;
    :cond_2a2
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_2ac

    .line 1138
    move v10, v4

    goto :goto_22e

    .line 1139
    :cond_2ac
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v4, v0, :cond_2b6

    .line 1140
    move/from16 v10, v17

    goto/16 :goto_22e

    .line 1142
    :cond_2b6
    move/from16 v0, v17

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_22e

    .line 1160
    .restart local v18       #value:Ljava/lang/String;
    :cond_2be
    const-string/jumbo v20, "max-age"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2fd

    .line 1162
    :try_start_2c9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    mul-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_2db
    .catch Ljava/lang/NumberFormatException; {:try_start_2c9 .. :try_end_2db} :catch_2dd

    goto/16 :goto_6e

    .line 1164
    :catch_2dd
    move-exception v8

    .line 1165
    .local v8, ex:Ljava/lang/NumberFormatException;
    const-string/jumbo v20, "webkit"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "illegal format for max-age: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6e

    .line 1168
    .end local v8           #ex:Ljava/lang/NumberFormatException;
    :cond_2fd
    const-string/jumbo v20, "path"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_314

    .line 1170
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_6e

    .line 1171
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1173
    :cond_314
    const-string v20, "domain"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6e

    .line 1174
    const/16 v20, 0x2e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1175
    .local v11, lastPeriod:I
    if-nez v11, :cond_332

    .line 1177
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1181
    :cond_332
    add-int/lit8 v20, v11, 0x1

    :try_start_334
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1183
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_6e

    .line 1185
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;
    :try_end_34f
    .catch Ljava/lang/NumberFormatException; {:try_start_334 .. :try_end_34f} :catch_351

    goto/16 :goto_6e

    .line 1188
    :catch_351
    move-exception v20

    .line 1191
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 1192
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_381

    .line 1194
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x2e

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1195
    add-int/lit8 v11, v11, 0x1

    .line 1197
    :cond_381
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3f3

    .line 1198
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v12

    .line 1199
    .local v12, len:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1200
    .local v9, hostLen:I
    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    if-le v9, v0, :cond_3bd

    sub-int v20, v9, v12

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x2e

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3bd

    .line 1203
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1207
    :cond_3bd
    add-int/lit8 v20, v11, 0x3

    move/from16 v0, v20

    if-ne v12, v0, :cond_3ed

    const/16 v20, 0x6

    move/from16 v0, v20

    if-lt v12, v0, :cond_3ed

    const/16 v20, 0x8

    move/from16 v0, v20

    if-gt v12, v0, :cond_3ed

    .line 1209
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 1210
    .local v16, s:Ljava/lang/String;
    sget-object v20, Landroid/webkit/CookieManager;->BAD_COUNTRY_2LDS:[Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v20

    if-ltz v20, :cond_3ed

    .line 1211
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1215
    .end local v16           #s:Ljava/lang/String;
    :cond_3ed
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1218
    .end local v9           #hostLen:I
    .end local v12           #len:I
    :cond_3f3
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v5, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    goto/16 :goto_6e

    .line 1223
    .end local v4           #commaIndex:I
    .end local v11           #lastPeriod:I
    .end local v14           #name:Ljava/lang/String;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #valueIndex:I
    :cond_3fb
    move v10, v13

    goto/16 :goto_6e
.end method

.method public static setAcceptFileSchemeCookies(Z)V
    .registers 2
    .parameter "accept"

    .prologue
    .line 780
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 781
    invoke-static {p0}, Landroid/webkit/CookieManager;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 783
    :cond_9
    return-void
.end method

.method private declared-synchronized signalCookieOperationsComplete()V
    .registers 3

    .prologue
    .line 621
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    .line 622
    sget-boolean v0, Landroid/webkit/CookieManager;->$assertionsDisabled:Z

    if-nez v0, :cond_19

    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_19

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_16

    .line 621
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    .line 623
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_16

    .line 624
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized signalCookieOperationsStart()V
    .registers 2

    .prologue
    .line 627
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 628
    monitor-exit p0

    return-void

    .line 627
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .registers 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 300
    invoke-static {}, Landroid/webkit/CookieManager;->nativeAcceptCookie()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result v0

    .line 303
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    iget-boolean v0, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    .line 299
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "doesn\'t implement Cloneable"

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized deleteACookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 6
    .parameter "cookie"

    .prologue
    .line 816
    monitor-enter p0

    :try_start_1
    iget-byte v2, p1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_24

    .line 817
    iget-object v2, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 819
    .local v1, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz v1, :cond_24

    .line 820
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 822
    iget-object v2, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 826
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_24
    monitor-exit p0

    return-void

    .line 816
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized deleteLRUDomain()Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x3e8

    const/16 v12, 0xf

    .line 846
    monitor-enter p0

    const/4 v2, 0x0

    .line 847
    .local v2, count:I
    const/4 v0, 0x0

    .line 848
    .local v0, byteCount:I
    :try_start_7
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v7

    .line 850
    .local v7, mapSize:I
    if-ge v7, v12, :cond_2d

    .line 851
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 852
    .local v1, cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 853
    .local v6, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2d

    if-ge v2, v13, :cond_2d

    .line 854
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 871
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/2addr v2, v11

    .line 873
    goto :goto_19

    .line 876
    .end local v1           #cookieLists:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_2d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v8, retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-ge v7, v12, :cond_36

    if-lt v2, v13, :cond_61

    .line 882
    :cond_36
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 883
    .local v4, domains:[Ljava/lang/Object;
    div-int/lit8 v11, v7, 0xa

    add-int/lit8 v9, v11, 0x1

    .local v9, toGo:I
    move v10, v9

    .line 884
    .end local v9           #toGo:I
    .local v10, toGo:I
    :goto_45
    add-int/lit8 v9, v10, -0x1

    .end local v10           #toGo:I
    .restart local v9       #toGo:I
    if-lez v10, :cond_61

    .line 885
    aget-object v11, v4, v9

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 890
    .local v3, domain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 891
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_63

    move v10, v9

    .line 892
    .end local v9           #toGo:I
    .restart local v10       #toGo:I
    goto :goto_45

    .line 894
    .end local v3           #domain:Ljava/lang/String;
    .end local v4           #domains:[Ljava/lang/Object;
    .end local v10           #toGo:I
    :cond_61
    monitor-exit p0

    return-object v8

    .line 846
    .end local v7           #mapSize:I
    .end local v8           #retlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catchall_63
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method flushCookieStore()V
    .registers 2

    .prologue
    .line 754
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 755
    invoke-static {}, Landroid/webkit/CookieManager;->nativeFlushCookieStore()V

    .line 757
    :cond_9
    return-void
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .registers 17
    .parameter "uri"

    .prologue
    .line 532
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v11

    if-eqz v11, :cond_12

    .line 533
    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/webkit/CookieManager;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_96

    move-result-object v11

    .line 600
    :goto_10
    monitor-exit p0

    return-object v11

    .line 536
    :cond_12
    :try_start_12
    iget-boolean v11, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    if-eqz v11, :cond_18

    if-nez p1, :cond_1a

    .line 537
    :cond_18
    const/4 v11, 0x0

    goto :goto_10

    .line 540
    :cond_1a
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, hostAndPath:[Ljava/lang/String;
    if-nez v4, :cond_22

    .line 542
    const/4 v11, 0x0

    goto :goto_10

    .line 545
    :cond_22
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-direct {p0, v11}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, baseDomain:Ljava/lang/String;
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 547
    .local v2, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v2, :cond_40

    .line 548
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 550
    iget-object v11, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v11, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :cond_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 554
    .local v6, now:J
    const-string v11, "https"

    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 555
    .local v9, secure:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 557
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    new-instance v3, Ljava/util/TreeSet;

    sget-object v11, Landroid/webkit/CookieManager;->COMPARATOR:Landroid/webkit/CookieManager$CookieComparator;

    invoke-direct {v3, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 558
    .local v3, cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_59
    :goto_59
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_99

    .line 559
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/CookieManager$Cookie;

    .line 560
    .local v1, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v1, v11}, Landroid/webkit/CookieManager$Cookie;->domainMatch(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_59

    const/4 v11, 0x1

    aget-object v11, v4, v11

    invoke-virtual {v1, v11}, Landroid/webkit/CookieManager$Cookie;->pathMatch(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_59

    iget-wide v11, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_85

    iget-wide v11, v1, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v11, v11, v6

    if-lez v11, :cond_59

    :cond_85
    iget-boolean v11, v1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    if-eqz v11, :cond_8b

    if-eqz v9, :cond_59

    :cond_8b
    iget-byte v11, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    const/4 v12, 0x2

    if-eq v11, v12, :cond_59

    .line 567
    iput-wide v6, v1, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 568
    invoke-interface {v3, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_95
    .catchall {:try_start_12 .. :try_end_95} :catchall_96

    goto :goto_59

    .line 532
    .end local v0           #baseDomain:Ljava/lang/String;
    .end local v1           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v2           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #hostAndPath:[Ljava/lang/String;
    .end local v5           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v6           #now:J
    .end local v9           #secure:Z
    :catchall_96
    move-exception v11

    monitor-exit p0

    throw v11

    .line 572
    .restart local v0       #baseDomain:Ljava/lang/String;
    .restart local v2       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v3       #cookieSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v4       #hostAndPath:[Ljava/lang/String;
    .restart local v5       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v6       #now:J
    .restart local v9       #secure:Z
    :cond_99
    :try_start_99
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x100

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 573
    .local v8, ret:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 574
    .local v10, setIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_a4
    :goto_a4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 575
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/CookieManager$Cookie;

    .line 576
    .restart local v1       #cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_c0

    .line 577
    const/16 v11, 0x3b

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    const/16 v11, 0x20

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 583
    :cond_c0
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    if-eqz v11, :cond_a4

    .line 585
    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    iget-object v11, v1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a4

    .line 590
    .end local v1           #cookie:Landroid/webkit/CookieManager$Cookie;
    :cond_d4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_e0

    .line 594
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_dd
    .catchall {:try_start_99 .. :try_end_dd} :catchall_96

    move-result-object v11

    goto/16 :goto_10

    .line 600
    :cond_e0
    const/4 v11, 0x0

    goto/16 :goto_10
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 479
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 480
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 493
    :goto_b
    return-object v2

    .line 485
    :cond_c
    :try_start_c
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/net/ParseException; {:try_start_c .. :try_end_11} :catch_16

    .line 493
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 486
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_16
    move-exception v0

    .line 490
    .local v0, ex:Landroid/net/ParseException;
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter "url"
    .parameter "privateBrowsing"

    .prologue
    .line 505
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_b

    .line 507
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    :goto_a
    return-object v2

    .line 512
    :cond_b
    :try_start_b
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/net/ParseException; {:try_start_b .. :try_end_10} :catch_19

    .line 520
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/webkit/CookieManager;->nativeGetCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 513
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_19
    move-exception v0

    .line 517
    .local v0, ex:Landroid/net/ParseException;
    const/4 v2, 0x0

    goto :goto_a
.end method

.method declared-synchronized getUpdatedCookiesSince(J)Ljava/util/ArrayList;
    .registers 11
    .parameter "last"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v2, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    iget-object v6, p0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 795
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 796
    .local v5, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 797
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 798
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 799
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_20
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 800
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 801
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v6, v0, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    cmp-long v6, v6, p1

    if-lez v6, :cond_20

    .line 802
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_20

    .line 793
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v5           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :catchall_36
    move-exception v6

    monitor-exit p0

    throw v6

    .line 806
    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v2       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v5       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_39
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized hasCookies()Z
    .registers 2

    .prologue
    .line 694
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 695
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/CookieManager;->hasCookies(Z)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_17

    move-result v0

    .line 698
    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    :try_start_e
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->hasCookies()Z
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    move-result v0

    goto :goto_c

    .line 694
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasCookies(Z)Z
    .registers 3
    .parameter "privateBrowsing"

    .prologue
    .line 707
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_d

    .line 708
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->hasCookies()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    .line 711
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/webkit/CookieManager;->nativeHasCookies(Z)Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    move-result v0

    goto :goto_b

    .line 707
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAllCookie()V
    .registers 3

    .prologue
    .line 673
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 674
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveAllCookie()V

    .line 688
    :goto_9
    return-void

    .line 678
    :cond_a
    new-instance v0, Landroid/webkit/CookieManager$3;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$3;-><init>(Landroid/webkit/CookieManager;)V

    .line 687
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method public removeExpiredCookie()V
    .registers 3

    .prologue
    .line 718
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 719
    invoke-static {}, Landroid/webkit/CookieManager;->nativeRemoveExpiredCookie()V

    .line 746
    :goto_9
    return-void

    .line 723
    :cond_a
    new-instance v0, Landroid/webkit/CookieManager$4;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$4;-><init>(Landroid/webkit/CookieManager;)V

    .line 745
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_9
.end method

.method public removeSessionCookie()V
    .registers 4

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/webkit/CookieManager;->signalCookieOperationsStart()V

    .line 635
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 636
    new-instance v1, Landroid/webkit/CookieManager$1;

    invoke-direct {v1, p0}, Landroid/webkit/CookieManager$1;-><init>(Landroid/webkit/CookieManager;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 667
    :goto_14
    return-void

    .line 646
    :cond_15
    new-instance v0, Landroid/webkit/CookieManager$2;

    invoke-direct {v0, p0}, Landroid/webkit/CookieManager$2;-><init>(Landroid/webkit/CookieManager;)V

    .line 666
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_14
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .registers 4
    .parameter "accept"

    .prologue
    .line 277
    monitor-enter p0

    if-eqz p1, :cond_15

    .line 278
    :try_start_3
    const-string v1, "browser_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_23

    move-result-object v0

    .line 280
    .local v0, bp:Landroid/app/enterprise/IBrowserPolicy;
    const/4 v1, 0x2

    :try_start_e
    invoke-interface {v0, v1}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_26

    move-result v1

    if-nez v1, :cond_15

    .line 281
    const/4 p1, 0x0

    .line 286
    .end local v0           #bp:Landroid/app/enterprise/IBrowserPolicy;
    :cond_15
    :goto_15
    :try_start_15
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 287
    invoke-static {p1}, Landroid/webkit/CookieManager;->nativeSetAcceptCookie(Z)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 292
    :goto_1e
    monitor-exit p0

    return-void

    .line 291
    :cond_20
    :try_start_20
    iput-boolean p1, p0, Landroid/webkit/CookieManager;->mAcceptCookie:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_23

    goto :goto_1e

    .line 277
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1

    .line 283
    .restart local v0       #bp:Landroid/app/enterprise/IBrowserPolicy;
    :catch_26
    move-exception v1

    goto :goto_15
.end method

.method public declared-synchronized setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V
    .registers 28
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 368
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/webkit/CookieManager;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b2

    .line 470
    :cond_16
    monitor-exit p0

    return-void

    .line 373
    :cond_18
    if-eqz p2, :cond_26

    :try_start_1a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1000

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_16

    .line 376
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/CookieManager;->mAcceptCookie:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    if-eqz p1, :cond_16

    .line 383
    invoke-direct/range {p0 .. p1}, Landroid/webkit/CookieManager;->getHostAndPath(Landroid/net/WebAddress;)[Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, hostAndPath:[Ljava/lang/String;
    if-eqz v12, :cond_16

    .line 392
    const/16 v21, 0x1

    aget-object v21, v12, v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_64

    .line 393
    const/16 v21, 0x1

    aget-object v21, v12, v21

    const/16 v22, 0x2f

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 394
    .local v14, index:I
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v12, v22

    const/16 v23, 0x0

    if-lez v14, :cond_18d

    .end local v14           #index:I
    :goto_5a
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v12, v21
    :try_end_64
    .catchall {:try_start_1a .. :try_end_64} :catchall_1b2

    .line 398
    :cond_64
    const/4 v9, 0x0

    .line 400
    .local v9, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    const/16 v21, 0x0

    :try_start_67
    aget-object v21, v12, v21

    const/16 v22, 0x1

    aget-object v22, v12, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/CookieManager;->parseCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_1b2
    .catch Ljava/lang/RuntimeException; {:try_start_67 .. :try_end_78} :catch_191

    move-result-object v9

    .line 405
    :goto_79
    if-eqz v9, :cond_16

    :try_start_7b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-eqz v21, :cond_16

    .line 409
    const/16 v21, 0x0

    aget-object v21, v12, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/webkit/CookieManager;->getBaseDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, baseDomain:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 411
    .local v8, cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-nez v8, :cond_b2

    .line 412
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/webkit/CookieSyncManager;->getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 418
    .local v17, now:J
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 419
    .local v19, size:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_bb
    move/from16 v0, v19

    if-ge v13, v0, :cond_16

    .line 420
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/CookieManager$Cookie;

    .line 422
    .local v5, cookie:Landroid/webkit/CookieManager$Cookie;
    const/4 v10, 0x0

    .line 423
    .local v10, done:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 424
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_ca
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_127

    .line 425
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/CookieManager$Cookie;

    .line 426
    .local v6, cookieEntry:Landroid/webkit/CookieManager$Cookie;
    invoke-virtual {v5, v6}, Landroid/webkit/CookieManager$Cookie;->exactMatch(Landroid/webkit/CookieManager$Cookie;)Z

    move-result v21

    if-eqz v21, :cond_ca

    .line 429
    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_ee

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_1b5

    .line 431
    :cond_ee
    iget-boolean v0, v6, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    if-eqz v21, :cond_100

    const-string v21, "https"

    invoke-virtual/range {p1 .. p1}, Landroid/net/WebAddress;->getScheme()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_126

    .line 432
    :cond_100
    iget-object v0, v5, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v6, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 433
    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 434
    iget-boolean v0, v5, Landroid/webkit/CookieManager$Cookie;->secure:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 435
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 436
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 437
    const/16 v21, 0x3

    move/from16 v0, v21

    iput-byte v0, v6, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 443
    :cond_126
    :goto_126
    const/4 v10, 0x1

    .line 450
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    :cond_127
    if-nez v10, :cond_1cc

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-ltz v21, :cond_13b

    iget-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->expires:J

    move-wide/from16 v21, v0

    cmp-long v21, v21, v17

    if-lez v21, :cond_1cc

    .line 451
    :cond_13b
    move-wide/from16 v0, v17

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 452
    move-wide/from16 v0, v17

    iput-wide v0, v5, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 453
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-byte v0, v5, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 454
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x32

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1c9

    .line 455
    new-instance v20, Landroid/webkit/CookieManager$Cookie;

    invoke-direct/range {v20 .. v20}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 456
    .local v20, toDelete:Landroid/webkit/CookieManager$Cookie;
    move-wide/from16 v0, v17

    move-object/from16 v2, v20

    iput-wide v0, v2, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    .line 457
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 458
    .local v16, iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_164
    :goto_164
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1c1

    .line 459
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/webkit/CookieManager$Cookie;

    .line 460
    .local v7, cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    iget-wide v0, v7, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/webkit/CookieManager$Cookie;->lastAcessTime:J

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_164

    iget-byte v0, v7, Landroid/webkit/CookieManager$Cookie;->mode:B

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_164

    .line 462
    move-object/from16 v20, v7

    goto :goto_164

    .line 394
    .end local v4           #baseDomain:Ljava/lang/String;
    .end local v5           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v7           #cookieEntry2:Landroid/webkit/CookieManager$Cookie;
    .end local v8           #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v10           #done:Z
    .end local v13           #i:I
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v17           #now:J
    .end local v19           #size:I
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    .restart local v14       #index:I
    :cond_18d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5a

    .line 401
    .end local v14           #index:I
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    :catch_191
    move-exception v11

    .line 402
    .local v11, ex:Ljava/lang/RuntimeException;
    const-string/jumbo v21, "webkit"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "parse cookie failed for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b0
    .catchall {:try_start_7b .. :try_end_1b0} :catchall_1b2

    goto/16 :goto_79

    .line 368
    .end local v9           #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .end local v12           #hostAndPath:[Ljava/lang/String;
    :catchall_1b2
    move-exception v21

    monitor-exit p0

    throw v21

    .line 440
    .restart local v4       #baseDomain:Ljava/lang/String;
    .restart local v5       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v6       #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v8       #cookieList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v9       #cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v10       #done:Z
    .restart local v12       #hostAndPath:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v15       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v17       #now:J
    .restart local v19       #size:I
    :cond_1b5
    :try_start_1b5
    move-wide/from16 v0, v17

    iput-wide v0, v6, Landroid/webkit/CookieManager$Cookie;->lastUpdateTime:J

    .line 441
    const/16 v21, 0x2

    move/from16 v0, v21

    iput-byte v0, v6, Landroid/webkit/CookieManager$Cookie;->mode:B

    goto/16 :goto_126

    .line 465
    .end local v6           #cookieEntry:Landroid/webkit/CookieManager$Cookie;
    .restart local v16       #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .restart local v20       #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_1c1
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-byte v0, v1, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 467
    .end local v16           #iter2:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v20           #toDelete:Landroid/webkit/CookieManager$Cookie;
    :cond_1c9
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1cc
    .catchall {:try_start_1b5 .. :try_end_1cc} :catchall_1b2

    .line 419
    :cond_1cc
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_bb
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "url"
    .parameter "value"

    .prologue
    .line 314
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 315
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 330
    :goto_a
    return-void

    .line 321
    :cond_b
    :try_start_b
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/net/ParseException; {:try_start_b .. :try_end_10} :catch_14

    .line 329
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {p0, v1, p2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    goto :goto_a

    .line 322
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_14
    move-exception v0

    .line 326
    .local v0, ex:Landroid/net/ParseException;
    goto :goto_a
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .parameter "url"
    .parameter "value"
    .parameter "privateBrowsing"

    .prologue
    .line 342
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-nez v2, :cond_a

    .line 343
    invoke-virtual {p0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :goto_9
    return-void

    .line 349
    :cond_a
    :try_start_a
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/net/ParseException; {:try_start_a .. :try_end_f} :catch_17

    .line 355
    .local v1, uri:Landroid/net/WebAddress;
    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Landroid/webkit/CookieManager;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_9

    .line 350
    .end local v1           #uri:Landroid/net/WebAddress;
    :catch_17
    move-exception v0

    .line 351
    .local v0, ex:Landroid/net/ParseException;
    const-string/jumbo v2, "webkit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method declared-synchronized syncedACookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 3
    .parameter "cookie"

    .prologue
    .line 835
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-byte v0, p1, Landroid/webkit/CookieManager$Cookie;->mode:B
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 836
    monitor-exit p0

    return-void

    .line 835
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForCookieOperationsToComplete()V
    .registers 2

    .prologue
    .line 611
    monitor-enter p0

    .line 612
    :goto_1
    :try_start_1
    iget v0, p0, Landroid/webkit/CookieManager;->pendingCookieOperations:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-lez v0, :cond_b

    .line 614
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_1

    .line 615
    :catch_9
    move-exception v0

    goto :goto_1

    .line 617
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 618
    return-void

    .line 617
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method
