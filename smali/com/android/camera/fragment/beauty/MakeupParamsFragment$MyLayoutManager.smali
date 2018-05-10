.class public Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "MakeupParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/MakeupParamsFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/beauty/MakeupParamsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->this$0:Lcom/android/camera/fragment/beauty/MakeupParamsFragment;

    .line 135
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 4
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .prologue
    .line 141
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->measureChild(Landroid/view/View;II)V

    .line 144
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 145
    .local v1, "measuredWidth":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 146
    .local v0, "measuredHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/fragment/beauty/MakeupParamsFragment$MyLayoutManager;->setMeasuredDimension(II)V

    .line 148
    .end local v0    # "measuredHeight":I
    .end local v1    # "measuredWidth":I
    :cond_0
    return-void
.end method
