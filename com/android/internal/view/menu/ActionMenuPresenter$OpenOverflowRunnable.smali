.class Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenOverflowRunnable"
.end annotation


# instance fields
.field private mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)V
    .registers 3
    .parameter
    .parameter "popup"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 782
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 786
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_d

    .line 788
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, v1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    .line 789
    :cond_d
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/view/menu/BaseMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    .line 790
    .local v0, menuView:Landroid/view/View;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 791
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->mPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    #setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;
    invoke-static {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$202(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Lcom/android/internal/view/menu/ActionMenuPresenter$OverflowPopup;

    .line 793
    :cond_2a
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;
    invoke-static {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->access$502(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 794
    return-void
.end method