.class public Lcom/android/camera/fragment/manually/ManuallyDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ManuallyDecoration.java"


# instance fields
.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mSpanCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "dividerWidth"    # I
    .param p2, "dividerColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 16
    iput v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    .line 20
    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    .line 23
    iget-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 8
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, "left":I
    const/4 v5, 0x0

    .line 35
    .local v5, "top":I
    const/4 v4, 0x0

    .line 36
    .local v4, "right":I
    const/4 v0, 0x0

    .line 37
    .local v0, "bottom":I
    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    mul-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    div-int v2, v6, v7

    .line 38
    .local v2, "eachWidth":I
    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    sub-int v1, v6, v2

    .line 40
    .local v1, "dl":I
    iget v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    rem-int v6, p2, v6

    mul-int v3, v6, v1

    .line 41
    sub-int v4, v2, v3

    .line 43
    iget v0, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    .line 45
    invoke-virtual {p1, v3, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 51
    .local v9, "childSize":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 52
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 53
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 67
    .local v11, "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 68
    .local v12, "left":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v13

    .line 69
    .local v13, "right":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v14, v1, v2

    .line 70
    .local v14, "top":I
    iget v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v7, v14, v1

    .line 71
    .local v7, "bottom":I
    iget-object v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 72
    int-to-float v2, v12

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    .line 76
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v7, v1, v2

    .line 77
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v12, v1, v2

    .line 78
    iget v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerWidth:I

    add-int v13, v12, v1

    .line 79
    iget-object v1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 80
    int-to-float v2, v12

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 83
    .end local v7    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "layoutParams":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v12    # "left":I
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_2
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .param p1, "spanCount"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/fragment/manually/ManuallyDecoration;->mSpanCount:I

    .line 29
    return-void
.end method
