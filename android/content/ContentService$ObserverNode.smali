.class public final Landroid/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# static fields
.field public static final DELETE_TYPE:I = 0x2

.field public static final INSERT_TYPE:I = 0x0

.field public static final UPDATE_TYPE:I = 0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 571
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 572
    iput-object p1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 573
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 524
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;II)V
    .registers 19
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 633
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v1

    if-ne p2, v1, :cond_1a

    .line 634
    iget-object v7, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode$ObserverEntry;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :goto_19
    return-void

    .line 640
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v10

    .line 641
    .local v10, segment:Ljava/lang/String;
    if-nez v10, :cond_3f

    .line 642
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") used for observer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_3f
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 645
    .local v8, N:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_46
    if-ge v9, v8, :cond_6a

    .line 646
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 647
    .local v0, node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 648
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;II)V

    goto :goto_19

    .line 645
    :cond_67
    add-int/lit8 v9, v9, 0x1

    goto :goto_46

    .line 655
    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_6a
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    invoke-direct {v0, v10}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 656
    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;II)V

    goto :goto_19
.end method

.method private collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .registers 11
    .parameter "leaf"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p4, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 693
    .local v0, N:I
    if-nez p2, :cond_21

    const/4 v3, 0x0

    .line 694
    .local v3, observerBinder:Landroid/os/IBinder;
    :goto_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_39

    .line 695
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 699
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v3, :cond_26

    if-nez p3, :cond_26

    .line 694
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 693
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .end local v2           #i:I
    .end local v3           #observerBinder:Landroid/os/IBinder;
    :cond_21
    invoke-interface {p2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_9

    .line 704
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    .restart local v2       #i:I
    .restart local v3       #observerBinder:Landroid/os/IBinder;
    :cond_26
    if-nez p1, :cond_2e

    if-nez p1, :cond_1e

    iget-boolean v4, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendents:Z

    if-eqz v4, :cond_1e

    .line 705
    :cond_2e
    new-instance v4, Landroid/content/ContentService$ObserverCall;

    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-direct {v4, p0, v5, p3}, Landroid/content/ContentService$ObserverCall;-><init>(Landroid/content/ContentService$ObserverNode;Landroid/database/IContentObserver;Z)V

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 708
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_39
    return-void
.end method

.method private countUriSegments(Landroid/net/Uri;)I
    .registers 3
    .parameter "uri"

    .prologue
    .line 619
    if-nez p1, :cond_4

    .line 620
    const/4 v0, 0x0

    .line 622
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 5
    .parameter "uri"
    .parameter "index"

    .prologue
    .line 607
    if-eqz p1, :cond_16

    .line 608
    if-nez p2, :cond_9

    .line 609
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 614
    :goto_8
    return-object v0

    .line 611
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_8

    .line 614
    :cond_16
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V
    .registers 15
    .parameter "uri"
    .parameter "observer"
    .parameter "notifyForDescendents"
    .parameter "observersLock"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 627
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;II)V

    .line 628
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V
    .registers 16
    .parameter "uri"
    .parameter "index"
    .parameter "observer"
    .parameter "selfNotify"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/database/IContentObserver;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentService$ObserverCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p5, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    const/4 v8, 0x0

    .line 713
    .local v8, segment:Ljava/lang/String;
    invoke-direct {p0, p1}, Landroid/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v9

    .line 714
    .local v9, segmentCount:I
    if-lt p2, v9, :cond_32

    .line 716
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 723
    :cond_b
    :goto_b
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 724
    .local v6, N:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_12
    if-ge v7, v6, :cond_31

    .line 725
    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    .line 726
    .local v0, node:Landroid/content/ContentService$ObserverNode;
    if-eqz v8, :cond_26

    iget-object v1, v0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 728
    :cond_26
    add-int/lit8 v2, p2, 0x1

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 729
    if-eqz v8, :cond_3d

    .line 734
    .end local v0           #node:Landroid/content/ContentService$ObserverNode;
    :cond_31
    return-void

    .line 717
    .end local v6           #N:I
    .end local v7           #i:I
    :cond_32
    if-ge p2, v9, :cond_b

    .line 718
    invoke-direct {p0, p1, p2}, Landroid/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v8

    .line 720
    const/4 v1, 0x0

    invoke-direct {p0, v1, p3, p4, p5}, Landroid/content/ContentService$ObserverNode;->collectMyObserversLocked(ZLandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    goto :goto_b

    .line 724
    .restart local v0       #node:Landroid/content/ContentService$ObserverNode;
    .restart local v6       #N:I
    .restart local v7       #i:I
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_12
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"
    .parameter "name"
    .parameter "prefix"
    .parameter "counts"
    .parameter "pidCounts"

    .prologue
    .line 577
    const/4 v4, 0x0

    .line 578
    .local v4, innerName:Ljava/lang/String;
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_51

    .line 579
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 580
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 584
    :goto_13
    const/4 v8, 0x0

    .local v8, i:I
    :goto_14
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_51

    .line 585
    const/4 v0, 0x1

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 586
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 584
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 582
    .end local v8           #i:I
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    .line 590
    :cond_51
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a4

    .line 591
    if-nez v4, :cond_65

    .line 592
    const-string v0, ""

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 593
    iget-object v4, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 598
    :cond_65
    :goto_65
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_66
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_a4

    .line 599
    const/4 v0, 0x0

    aget v1, p6, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v0

    .line 600
    iget-object v0, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentService$ObserverNode;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 598
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 595
    .end local v8           #i:I
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_65

    .line 604
    :cond_a4
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 9
    .parameter "observer"

    .prologue
    const/4 v6, 0x0

    .line 662
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 663
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v4, :cond_24

    .line 664
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v5, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v0

    .line 665
    .local v0, empty:Z
    if-eqz v0, :cond_21

    .line 666
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 667
    add-int/lit8 v2, v2, -0x1

    .line 668
    add-int/lit8 v4, v4, -0x1

    .line 663
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 672
    .end local v0           #empty:Z
    :cond_24
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 673
    .local v3, observerBinder:Landroid/os/IBinder;
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 674
    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v4, :cond_49

    .line 675
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 676
    .local v1, entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v1, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v3, :cond_5b

    .line 677
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 679
    invoke-interface {v3, v1, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 684
    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_49
    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, p0, Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5e

    .line 685
    const/4 v5, 0x1

    .line 687
    :goto_5a
    return v5

    .line 674
    .restart local v1       #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .end local v1           #entry:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_5e
    move v5, v6

    .line 687
    goto :goto_5a
.end method
