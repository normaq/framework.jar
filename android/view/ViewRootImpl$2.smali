.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 4028
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleKey(Landroid/view/KeyEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 4030
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 4031
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V

    .line 4032
    return-void
.end method

.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 4035
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #calls: Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    invoke-static {v0, p2}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V

    .line 4036
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    #calls: Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V
    invoke-static {v0, p1, v1}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V

    .line 4037
    return-void
.end method
