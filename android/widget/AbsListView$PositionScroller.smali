.class Landroid/widget/AbsListView$PositionScroller;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .parameter

    .prologue
    .line 4555
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4556
    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$3800(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4557
    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 4693
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_23

    .line 4864
    :cond_22
    :goto_22
    return-void

    .line 4697
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView;->getHeight()I

    move-result v16

    .line 4698
    .local v16, listHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v6, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4700
    .local v6, firstPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_3b0

    goto :goto_22

    .line 4702
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x1

    .line 4703
    .local v13, lastViewIndex:I
    add-int v9, v6, v13

    .line 4705
    .local v9, lastPos:I
    if-ltz v13, :cond_22

    .line 4709
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_69

    .line 4711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    .line 4715
    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4716
    .local v10, lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4717
    .local v12, lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4718
    .local v15, lastViewTop:I
    sub-int v14, v16, v15

    .line 4719
    .local v14, lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    if-ge v9, v0, :cond_c5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4721
    .local v5, extraScroll:I
    :goto_95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    sub-int v28, v12, v14

    add-int v28, v28, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4724
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4725
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_22

    .line 4726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4719
    .end local v5           #extraScroll:I
    :cond_c5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_95

    .line 4732
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_d6
    const/16 v21, 0x1

    .line 4733
    .local v21, nextViewIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 4735
    .local v3, childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-eq v6, v0, :cond_22

    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v3, v0, :cond_22

    add-int v27, v6, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    .line 4739
    add-int/lit8 v18, v6, 0x1

    .line 4741
    .local v18, nextPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ne v0, v1, :cond_123

    .line 4743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4747
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 4748
    .local v19, nextView:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v20

    .line 4749
    .local v20, nextViewHeight:I
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v22

    .line 4750
    .local v22, nextViewTop:I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4751
    .restart local v5       #extraScroll:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-ge v0, v1, :cond_175

    .line 4752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    add-int v29, v20, v22

    sub-int v29, v29, v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4755
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4759
    :cond_175
    move/from16 v0, v22

    if-le v0, v5, :cond_22

    .line 4760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    sub-int v28, v22, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4767
    .end local v3           #childCount:I
    .end local v5           #extraScroll:I
    .end local v18           #nextPos:I
    .end local v19           #nextView:Landroid/view/View;
    .end local v20           #nextViewHeight:I
    .end local v21           #nextViewIndex:I
    .end local v22           #nextViewTop:I
    :pswitch_18c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v6, v0, :cond_1a5

    .line 4769
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4773
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4774
    .local v7, firstView:Landroid/view/View;
    if-eqz v7, :cond_22

    .line 4777
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4778
    .local v8, firstViewTop:I
    if-lez v6, :cond_1eb

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 4780
    .restart local v5       #extraScroll:I
    :goto_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    sub-int v28, v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4782
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4784
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v6, v0, :cond_22

    .line 4785
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4778
    .end local v5           #extraScroll:I
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1bd

    .line 4791
    .end local v7           #firstView:Landroid/view/View;
    .end local v8           #firstViewTop:I
    :pswitch_1fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v27

    add-int/lit8 v13, v27, -0x2

    .line 4792
    .restart local v13       #lastViewIndex:I
    if-ltz v13, :cond_22

    .line 4795
    add-int v9, v6, v13

    .line 4797
    .restart local v9       #lastPos:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v9, v0, :cond_225

    .line 4799
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4803
    :cond_225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4804
    .restart local v10       #lastView:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 4805
    .restart local v12       #lastViewHeight:I
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    .line 4806
    .restart local v15       #lastViewTop:I
    sub-int v14, v16, v15

    .line 4807
    .restart local v14       #lastViewPixelsShowing:I
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4808
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v9, v0, :cond_274

    .line 4809
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v28, v0

    sub-int v28, v14, v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4810
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4812
    :cond_274
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v27, v0

    sub-int v2, v16, v27

    .line 4813
    .local v2, bottom:I
    add-int v11, v15, v12

    .line 4814
    .local v11, lastViewBottom:I
    if-le v2, v11, :cond_22

    .line 4815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    sub-int v28, v2, v11

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4822
    .end local v2           #bottom:I
    .end local v9           #lastPos:I
    .end local v10           #lastView:Landroid/view/View;
    .end local v11           #lastViewBottom:I
    .end local v12           #lastViewHeight:I
    .end local v13           #lastViewIndex:I
    .end local v14           #lastViewPixelsShowing:I
    .end local v15           #lastViewTop:I
    :pswitch_298
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v0, v6, :cond_2b1

    .line 4824
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4828
    :cond_2b1
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 4831
    .restart local v3       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v23, v0

    .line 4832
    .local v23, position:I
    add-int v27, v6, v3

    add-int/lit8 v9, v27, -0x1

    .line 4834
    .restart local v9       #lastPos:I
    const/16 v26, 0x0

    .line 4835
    .local v26, viewTravelCount:I
    move/from16 v0, v23

    if-ge v0, v6, :cond_324

    .line 4836
    sub-int v27, v6, v23

    add-int/lit8 v26, v27, 0x1

    .line 4842
    :cond_2d3
    :goto_2d3
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v3

    move/from16 v28, v0

    div-float v24, v27, v28

    .line 4844
    .local v24, screenTravelCount:F
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 4845
    .local v17, modifier:F
    move/from16 v0, v23

    if-ge v0, v6, :cond_32b

    .line 4846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4837
    .end local v17           #modifier:F
    .end local v24           #screenTravelCount:F
    :cond_324
    move/from16 v0, v23

    if-le v0, v9, :cond_2d3

    .line 4838
    sub-int v26, v23, v9

    goto :goto_2d3

    .line 4848
    .restart local v17       #modifier:F
    .restart local v24       #screenTravelCount:F
    :cond_32b
    move/from16 v0, v23

    if-le v0, v9, :cond_363

    .line 4849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/AbsListView;->getHeight()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v17

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 4850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_22

    .line 4853
    :cond_363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    sub-int v28, v23, v6

    invoke-virtual/range {v27 .. v28}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getTop()I

    move-result v25

    .line 4854
    .local v25, targetTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v27, v0

    sub-int v4, v25, v27

    .line 4855
    .local v4, distance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    int-to-float v0, v4

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/AbsListView;->getHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto/16 :goto_22

    .line 4700
    :pswitch_data_3b0
    .packed-switch 0x1
        :pswitch_41
        :pswitch_18c
        :pswitch_d6
        :pswitch_1fc
        :pswitch_298
    .end packed-switch
.end method

.method start(I)V
    .registers 8
    .parameter "position"

    .prologue
    const/16 v5, 0x190

    const/4 v4, -0x1

    .line 4560
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4562
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v0, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4563
    .local v0, firstPos:I
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 4566
    .local v1, lastPos:I
    if-gt p1, v0, :cond_2e

    .line 4567
    sub-int v3, v0, p1

    add-int/lit8 v2, v3, 0x1

    .line 4568
    .local v2, viewTravelCount:I
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4577
    :goto_1c
    if-lez v2, :cond_38

    .line 4578
    div-int v3, v5, v2

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4582
    :goto_22
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4583
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4584
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4586
    iget-object v3, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4587
    .end local v2           #viewTravelCount:I
    :cond_2d
    return-void

    .line 4569
    :cond_2e
    if-lt p1, v1, :cond_2d

    .line 4570
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, 0x1

    .line 4571
    .restart local v2       #viewTravelCount:I
    const/4 v3, 0x1

    iput v3, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_1c

    .line 4580
    :cond_38
    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_22
.end method

.method start(II)V
    .registers 14
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    const/16 v10, 0x190

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 4590
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4592
    if-ne p2, v9, :cond_d

    .line 4593
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 4648
    :cond_c
    :goto_c
    return-void

    .line 4597
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v3, v7, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4598
    .local v3, firstPos:I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v4, v7, -0x1

    .line 4601
    .local v4, lastPos:I
    if-gt p1, v3, :cond_43

    .line 4602
    sub-int v1, v4, p2

    .line 4603
    .local v1, boundPosFromLast:I
    if-lt v1, v8, :cond_c

    .line 4608
    sub-int v7, v3, p1

    add-int/lit8 v5, v7, 0x1

    .line 4609
    .local v5, posTravel:I
    add-int/lit8 v2, v1, -0x1

    .line 4610
    .local v2, boundTravel:I
    if-ge v2, v5, :cond_3e

    .line 4611
    move v6, v2

    .line 4612
    .local v6, viewTravelCount:I
    const/4 v7, 0x4

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4638
    .end local v1           #boundPosFromLast:I
    :goto_2c
    if-lez v6, :cond_5a

    .line 4639
    div-int v7, v10, v6

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4643
    :goto_32
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4644
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4645
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4647
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 4614
    .end local v6           #viewTravelCount:I
    .restart local v1       #boundPosFromLast:I
    :cond_3e
    move v6, v5

    .line 4615
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4617
    .end local v1           #boundPosFromLast:I
    .end local v2           #boundTravel:I
    .end local v5           #posTravel:I
    .end local v6           #viewTravelCount:I
    :cond_43
    if-lt p1, v4, :cond_c

    .line 4618
    sub-int v0, p2, v3

    .line 4619
    .local v0, boundPosFromFirst:I
    if-lt v0, v8, :cond_c

    .line 4624
    sub-int v7, p1, v4

    add-int/lit8 v5, v7, 0x1

    .line 4625
    .restart local v5       #posTravel:I
    add-int/lit8 v2, v0, -0x1

    .line 4626
    .restart local v2       #boundTravel:I
    if-ge v2, v5, :cond_56

    .line 4627
    move v6, v2

    .line 4628
    .restart local v6       #viewTravelCount:I
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4630
    .end local v6           #viewTravelCount:I
    :cond_56
    move v6, v5

    .line 4631
    .restart local v6       #viewTravelCount:I
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_2c

    .line 4641
    .end local v0           #boundPosFromFirst:I
    :cond_5a
    iput v10, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_32
.end method

.method startWithOffset(II)V
    .registers 4
    .parameter "position"
    .parameter "offset"

    .prologue
    .line 4651
    const/16 v0, 0x190

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 4652
    return-void
.end method

.method startWithOffset(III)V
    .registers 13
    .parameter "position"
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v8, -0x1

    .line 4655
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 4657
    iput p1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 4658
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 4659
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 4660
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4661
    const/4 v6, 0x5

    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 4663
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v6, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 4664
    .local v1, firstPos:I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4665
    .local v0, childCount:I
    add-int v6, v1, v0

    add-int/lit8 v2, v6, -0x1

    .line 4668
    .local v2, lastPos:I
    if-ge p1, v1, :cond_38

    .line 4669
    sub-int v5, v1, p1

    .line 4680
    .local v5, viewTravelCount:I
    :goto_21
    int-to-float v6, v5

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 4681
    .local v3, screenTravelCount:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v3, v6

    if-gez v6, :cond_51

    int-to-float v6, p3

    mul-float/2addr v6, v3

    float-to-int v6, v6

    :goto_2e
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 4683
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 4685
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 4686
    .end local v3           #screenTravelCount:F
    .end local v5           #viewTravelCount:I
    :goto_37
    return-void

    .line 4670
    :cond_38
    if-le p1, v2, :cond_3d

    .line 4671
    sub-int v5, p1, v2

    .restart local v5       #viewTravelCount:I
    goto :goto_21

    .line 4674
    .end local v5           #viewTravelCount:I
    :cond_3d
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, p1, v1

    invoke-virtual {v6, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v4

    .line 4675
    .local v4, targetTop:I
    iget-object v6, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v7, v4, p2

    invoke-virtual {v6, v7, p3}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_37

    .line 4681
    .end local v4           #targetTop:I
    .restart local v3       #screenTravelCount:F
    .restart local v5       #viewTravelCount:I
    :cond_51
    int-to-float v6, p3

    div-float/2addr v6, v3

    float-to-int v6, v6

    goto :goto_2e
.end method

.method stop()V
    .registers 2

    .prologue
    .line 4689
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4690
    return-void
.end method
