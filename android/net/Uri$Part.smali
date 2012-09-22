.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final EMPTY:Landroid/net/Uri$Part;

.field static final NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2066
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2069
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 2072
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2063
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 3
    .parameter "encoded"
    .parameter "decoded"

    .prologue
    .line 2135
    if-nez p0, :cond_5

    .line 2136
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2149
    :goto_4
    return-object v0

    .line 2138
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2139
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    goto :goto_4

    .line 2142
    :cond_e
    if-nez p1, :cond_13

    .line 2143
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    goto :goto_4

    .line 2145
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2146
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    goto :goto_4

    .line 2149
    :cond_1c
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method static fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .parameter "decoded"

    .prologue
    .line 2122
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .parameter "encoded"

    .prologue
    .line 2113
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .registers 1
    .parameter "part"

    .prologue
    .line 2104
    if-nez p0, :cond_4

    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .end local p0
    :cond_4
    return-object p0
.end method

.method static readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .registers 5
    .parameter "parcel"

    .prologue
    .line 2086
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2087
    .local v0, representation:I
    packed-switch v0, :pswitch_data_40

    .line 2095
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2089
    :pswitch_20
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    .line 2093
    :goto_2c
    return-object v1

    .line 2091
    :pswitch_2d
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    goto :goto_2c

    .line 2093
    :pswitch_36
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v1

    goto :goto_2c

    .line 2087
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_20
        :pswitch_2d
        :pswitch_36
    .end packed-switch
.end method


# virtual methods
.method getEncoded()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2081
    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_e

    const/4 v0, 0x1

    .line 2082
    .local v0, hasEncoded:Z
    :goto_9
    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    :goto_d
    return-object v1

    .line 2081
    .end local v0           #hasEncoded:Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 2082
    .restart local v0       #hasEncoded:Z
    :cond_10
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    goto :goto_d
.end method

.method isEmpty()Z
    .registers 2

    .prologue
    .line 2076
    const/4 v0, 0x0

    return v0
.end method
