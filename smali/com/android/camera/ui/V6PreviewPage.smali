.class public Lcom/android/camera/ui/V6PreviewPage;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6PreviewPage$1;,
        Lcom/android/camera/ui/V6PreviewPage$AnimationType;,
        Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mAnimPopup:Landroid/animation/ValueAnimator;

.field private mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

.field public mAsdIndicatorView:Landroid/widget/ImageView;

.field private mCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private mExpandInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field public mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

.field private mModeExitButton:Landroid/view/View;

.field public mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

.field private mOrientationArea:Lcom/android/camera/ui/RotateLayout;

.field private mOrientationParent:Landroid/widget/RelativeLayout;

.field private mPopupGroupVisible:Z

.field private mPopupIndicator:Landroid/view/View;

.field public mPopupIndicatorLayout:Landroid/view/View;

.field public mPopupParent:Landroid/view/ViewGroup;

.field public mPopupParentLayout:Landroid/view/ViewGroup;

.field private mPopupVisible:Z

.field public mStereoButton:Lcom/android/camera/ui/StereoButton;

.field public mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

.field private mVisible:Z

.field public mWarningMessageLayout:Landroid/widget/LinearLayout;

.field public mWarningView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/V6PreviewPage;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/V6PreviewPage;Landroid/view/View;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/V6PreviewPage;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6PreviewPage;->getChildY(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createAnimation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/V6PreviewPage;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/V6PreviewPage;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 83
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mVisible:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupGroupVisible:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 59
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mCollapseInterpolator:Landroid/animation/TimeInterpolator;

    .line 60
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    .line 62
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$1;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 88
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage;->mActivity:Lcom/android/camera/ActivityBase;

    .line 89
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 379
    const-string/jumbo v1, "V6PreviewPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createAnimation: popupHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v1, :cond_0

    .line 381
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->createOrUpdateAnimatorListener()V

    .line 384
    :cond_0
    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 385
    .local v0, "popupTransYOut":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    new-array v2, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    .line 386
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 387
    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    return-void
.end method

.method private createOrUpdateAnimatorListener()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6PreviewPage;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->updateParameters()V

    goto :goto_0
.end method

.method private getChildY(Landroid/view/View;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 419
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 420
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 421
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    if-eq v0, p0, :cond_0

    move-object v1, v0

    .line 422
    check-cast v1, Landroid/view/View;

    .line 423
    .local v1, "viewParent":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    .line 424
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 427
    .end local v1    # "viewParent":Landroid/view/View;
    :cond_0
    return v2
.end method

.method private hasCollapsedPopup()Z
    .locals 2

    .prologue
    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "hasCollapsedPopup is not expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hidePopupView()V
    .locals 2

    .prologue
    .line 586
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "hidePopupView is not expected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setupOnLayoutChangeListener()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 356
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6ModeExitView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 360
    return-void
.end method

.method private updatePopupVisibility(ZZZ)V
    .locals 4
    .param p1, "isExitViewVisible"    # Z
    .param p2, "isPopupVisible"    # Z
    .param p3, "isIndicatorVisible"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->show()V

    .line 408
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    if-eqz p3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 410
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6ModeExitView;->hide()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 408
    goto :goto_1

    :cond_2
    move v1, v2

    .line 409
    goto :goto_2
.end method

.method private updateRotateLayout(ILandroid/view/View;)V
    .locals 6
    .param p1, "degree"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    const/16 v3, 0xa

    const/16 v2, 0x9

    const/4 v1, -0x1

    .line 553
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 554
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 555
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 556
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 557
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 558
    sparse-switch p1, :sswitch_data_0

    .line 572
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    return-void

    .line 560
    :sswitch_0
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 563
    :sswitch_1
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 566
    :sswitch_2
    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 569
    :sswitch_3
    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6PreviewPage;->simplifyPopup(ZZ)V

    .line 352
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onFinishInflate()V

    .line 94
    const v0, 0x7f0a00ba

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParentLayout:Landroid/view/ViewGroup;

    .line 95
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupParent:Landroid/view/ViewGroup;

    .line 96
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopPopupParent;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mTopPopupParent:Lcom/android/camera/ui/TopPopupParent;

    .line 97
    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6ModeExitView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 98
    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mModeExitButton:Landroid/view/View;

    .line 99
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningView:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mWarningMessageLayout:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f0a00bc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicatorLayout:Landroid/view/View;

    .line 102
    const v0, 0x7f0a00bd

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    .line 103
    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAsdIndicatorView:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationParent:Landroid/widget/RelativeLayout;

    .line 105
    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    .line 106
    const v0, 0x7f0a0091

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/OrientationIndicator;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mLyingOriFlag:Lcom/android/camera/ui/OrientationIndicator;

    .line 107
    const v0, 0x7f0a00c7

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6PreviewPage;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/StereoButton;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mStereoButton:Lcom/android/camera/ui/StereoButton;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupIndicator:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->setupOnLayoutChangeListener()V

    .line 111
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 548
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    .line 549
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mOrientationArea:Lcom/android/camera/ui/RotateLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6PreviewPage;->updateRotateLayout(ILandroid/view/View;)V

    .line 550
    return-void
.end method

.method public simplifyPopup(ZZ)V
    .locals 5
    .param p1, "simplify"    # Z
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    const-string/jumbo v0, "V6PreviewPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simplifyPopup: simplify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-boolean v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    return-void

    .line 221
    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hasCollapsedPopup()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iput-boolean v3, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 223
    if-eqz p2, :cond_2

    .line 224
    invoke-direct {p0}, Lcom/android/camera/ui/V6PreviewPage;->hidePopupView()V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    invoke-direct {p0, v3, v3, v4}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0

    .line 228
    :cond_3
    if-nez p1, :cond_1

    .line 229
    iput-boolean v4, p0, Lcom/android/camera/ui/V6PreviewPage;->mPopupVisible:Z

    .line 230
    if-eqz p2, :cond_5

    .line 231
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->getAnimationType()Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    move-result-object v0

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    if-eq v0, v1, :cond_1

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimatorListener:Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;

    sget-object v1, Lcom/android/camera/ui/V6PreviewPage$AnimationType;->EXPAND:Lcom/android/camera/ui/V6PreviewPage$AnimationType;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPage$CustomAnimatorListener;->setAnimationType(Lcom/android/camera/ui/V6PreviewPage$AnimationType;)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/camera/ui/V6PreviewPage;->mExpandInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage;->mAnimPopup:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 237
    :cond_5
    invoke-direct {p0, v4, v4, v3}, Lcom/android/camera/ui/V6PreviewPage;->updatePopupVisibility(ZZZ)V

    goto :goto_0
.end method
