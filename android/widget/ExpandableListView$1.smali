.class Landroid/widget/ExpandableListView$1;
.super Ljava/lang/Object;
.source "ExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/ExpandableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Landroid/widget/ExpandableListView$1;->this$0:Landroid/widget/ExpandableListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, Landroid/widget/ExpandableListView$1;->this$0:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->requestLayout()V

    .line 558
    return-void
.end method
