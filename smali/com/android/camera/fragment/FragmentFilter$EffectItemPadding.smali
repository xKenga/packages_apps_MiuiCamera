.class public Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "FragmentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectItemPadding"
.end annotation


# instance fields
.field protected mEffectListLeft:I

.field protected mHorizontalPadding:I

.field protected mVerticalPadding:I

.field final synthetic this$0:Lcom/android/camera/fragment/FragmentFilter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentFilter;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/fragment/FragmentFilter;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->this$0:Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 363
    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 364
    const v1, 0x7f09005e

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mHorizontalPadding:I

    .line 365
    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 366
    const v1, 0x7f090060

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    .line 367
    invoke-virtual {p1}, Lcom/android/camera/fragment/FragmentFilter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 368
    const v1, 0x7f09005f

    .line 367
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mEffectListLeft:I

    .line 369
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v1, 0x0

    .line 373
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 375
    .local v0, "position":I
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mEffectListLeft:I

    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    .line 376
    iget v3, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mHorizontalPadding:I

    iget v4, p0, Lcom/android/camera/fragment/FragmentFilter$EffectItemPadding;->mVerticalPadding:I

    .line 375
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 377
    return-void
.end method
