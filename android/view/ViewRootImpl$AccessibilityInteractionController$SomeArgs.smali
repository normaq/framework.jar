.class public Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SomeArgs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;",
        ">;"
    }
.end annotation


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field private mIsPooled:Z

.field private mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

.field final synthetic this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl$AccessibilityInteractionController;)V
    .registers 2
    .parameter

    .prologue
    .line 4923
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->this$1:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4923
    invoke-direct {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->clear()V

    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 4950
    iput-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg1:Ljava/lang/Object;

    .line 4951
    iput-object v1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->arg2:Ljava/lang/Object;

    .line 4952
    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi1:I

    .line 4953
    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi2:I

    .line 4954
    iput v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->argi3:I

    .line 4955
    return-void
.end method


# virtual methods
.method public getNextPoolable()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;
    .registers 2

    .prologue
    .line 4934
    iget-object v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 4923
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->getNextPoolable()Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .registers 2

    .prologue
    .line 4938
    iget-boolean v0, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    return v0
.end method

.method public setNextPoolable(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V
    .registers 2
    .parameter "args"

    .prologue
    .line 4942
    iput-object p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mNext:Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .line 4943
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 4923
    check-cast p1, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->setNextPoolable(Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;)V

    return-void
.end method

.method public setPooled(Z)V
    .registers 2
    .parameter "isPooled"

    .prologue
    .line 4946
    iput-boolean p1, p0, Landroid/view/ViewRootImpl$AccessibilityInteractionController$SomeArgs;->mIsPooled:Z

    .line 4947
    return-void
.end method
