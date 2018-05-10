.class public Lcom/android/camera/ui/ModeView;
.super Landroid/widget/RelativeLayout;
.source "ModeView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/MessageDispatcher;


# instance fields
.field protected mCurrentMode:Ljava/lang/String;

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mFirstSelectedItem:I

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/V6IndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field private mItemWidth:I

.field protected mKeepExitButtonGone:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

.field protected mOrientation:I

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 46
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 46
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string/jumbo v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mCurrentMode:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    .line 46
    iput v1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mIsAnimating:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mRotatables:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/android/camera/ui/ModeView;->mKeepExitButtonGone:Z

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 77
    return-void
.end method

.method private resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V
    .locals 2
    .param p1, "but"    # Lcom/android/camera/ui/V6IndicatorButton;

    .prologue
    .line 147
    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    iget-object v1, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->resetSettings()V

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 381
    const-string/jumbo v0, "VIEW_"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ModeView dispatchMessage mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v2, " what="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string/jumbo v2, " sender="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    const-string/jumbo v2, " receiver="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string/jumbo v2, " extra1="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    const-string/jumbo v2, " extra2="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    const-string/jumbo v2, " getVisibility()="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getVisibility()I

    move-result v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    const-string/jumbo v2, " mEnabled="

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    iget-boolean v2, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 390
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-direct {p0, p5}, Lcom/android/camera/ui/ModeView;->resetOtherSettings(Lcom/android/camera/ui/V6IndicatorButton;)V

    .line 391
    const/4 v0, 0x1

    return v0

    .line 395
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 396
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    .line 395
    if-eqz v0, :cond_1

    move-object v0, p5

    .line 397
    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6IndicatorButton;->isItemSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    .line 403
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/ModeView;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    const v2, 0x7f0a00d8

    const/4 v3, 0x2

    move v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 404
    instance-of v0, p5, Lcom/android/camera/ui/V6IndicatorButton;

    if-eqz v0, :cond_2

    .line 405
    const-string/jumbo v0, "VIEW_"

    const-string/jumbo v1, "call indicatorbutton reloadPreference"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    check-cast p5, Lcom/android/camera/ui/V6IndicatorButton;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Lcom/android/camera/ui/V6IndicatorButton;->reloadPreference()V

    .line 408
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 400
    .restart local p5    # "extra2":Ljava/lang/Object;
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mFirstSelectedItem:I

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 338
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 354
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 334
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ModeView;->mItemWidth:I

    .line 83
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/android/camera/ui/ModeView;->mEnabled:Z

    .line 308
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6IndicatorButton;

    .line 309
    .local v0, "i":Lcom/android/camera/ui/V6AbstractIndicator;
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6AbstractIndicator;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractIndicator;->setEnabled(Z)V

    goto :goto_0

    .line 313
    .end local v0    # "i":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 314
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 87
    iput p1, p0, Lcom/android/camera/ui/ModeView;->mOrientation:I

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/camera/ui/ModeView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/V6AbstractIndicator;

    .line 91
    .local v1, "view":Lcom/android/camera/ui/V6AbstractIndicator;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/V6AbstractIndicator;->setOrientation(IZ)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "view":Lcom/android/camera/ui/V6AbstractIndicator;
    :cond_1
    return-void
.end method
