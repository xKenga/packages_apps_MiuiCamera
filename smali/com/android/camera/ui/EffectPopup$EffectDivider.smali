.class public Lcom/android/camera/ui/EffectPopup$EffectDivider;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "EffectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EffectDivider"
.end annotation


# instance fields
.field protected mFrameWidth:I

.field protected mPadding:I

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPosition:I

.field protected mVerticalPadding:I

.field protected mWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/EffectPopup;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/EffectPopup;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/ui/EffectPopup;
    .param p2, "position"    # I

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->this$0:Lcom/android/camera/ui/EffectPopup;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 319
    invoke-virtual {p1}, Lcom/android/camera/ui/EffectPopup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 320
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPadding:I

    .line 321
    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mWidth:I

    .line 322
    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    .line 323
    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    .line 324
    iput p2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    .line 326
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    .line 327
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    const v2, 0x7f0d000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 330
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 4
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 354
    .local v0, "position":I
    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    if-ne v0, v1, :cond_0

    .line 356
    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    iget v2, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPadding:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v3, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 334
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 336
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    add-int v10, v0, v1

    .line 337
    .local v10, "top":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mVerticalPadding:I

    sub-int v6, v0, v1

    .line 339
    .local v6, "bottom":I
    iget v0, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPosition:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 340
    .local v7, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v7, :cond_0

    .line 341
    iget-object v11, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 342
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 343
    .local v8, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 344
    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 343
    add-int/2addr v0, v1

    .line 344
    iget v1, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mFrameWidth:I

    div-int/lit8 v1, v1, 0x2

    .line 343
    add-int v9, v0, v1

    .line 346
    .local v9, "position":I
    int-to-float v1, v9

    int-to-float v2, v10

    int-to-float v3, v9

    int-to-float v4, v6

    iget-object v5, p0, Lcom/android/camera/ui/EffectPopup$EffectDivider;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 348
    .end local v8    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v9    # "position":I
    .end local v11    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
