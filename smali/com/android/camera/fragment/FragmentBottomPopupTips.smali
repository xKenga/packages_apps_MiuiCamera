.class public Lcom/android/camera/fragment/FragmentBottomPopupTips;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomPopupTips$1;,
        Lcom/android/camera/fragment/FragmentBottomPopupTips$TipImageType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentTipMessage:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mCurrentTipType:I

.field private mHandler:Landroid/os/Handler;

.field private mLastTipMessage:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field private mLastTipType:I

.field private mPortraitSuccessHint:Landroid/view/View;

.field private mQrCodeButton:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mTipImage:Landroid/widget/ImageView;

.field private mTipMessage:Landroid/widget/TextView;

.field private mZoomInOutAnimator:Landroid/animation/AnimatorSet;


# direct methods
.method static synthetic -get0(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/fragment/FragmentBottomPopupTips;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .prologue
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentBottomPopupTips;)Landroid/widget/TextView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/fragment/FragmentBottomPopupTips;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomPopupTips;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 85
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$1;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private adjustViewBackground(I)V
    .locals 3
    .param p1, "currentMode"    # I

    .prologue
    .line 596
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    .line 597
    .local v0, "uiStyle":I
    packed-switch v0, :pswitch_data_0

    .line 600
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 609
    :goto_0
    return-void

    .line 605
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hideTip(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 437
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private reIntTipViewMarginBottom(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v7, 0x7f0900da

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 325
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xb6

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 327
    .local v1, "dualController":Lcom/android/camera/protocol/ModeProtocol$DualController;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xb5

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 329
    .local v3, "manuallyAdjust":Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
    const/4 v4, 0x0

    .line 330
    .local v4, "newBottomMargin":I
    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    const/16 v6, 0xa5

    if-ne v5, v6, :cond_1

    .line 331
    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f400000    # 0.75f

    div-float/2addr v5, v6

    float-to-int v5, v5

    sget v6, Lcom/android/camera/Util;->sWindowWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 332
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    .line 331
    add-int v4, v5, v6

    .line 351
    :goto_0
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v4, :cond_0

    .line 352
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    :cond_0
    return-void

    .line 333
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v5

    if-lez v5, :cond_2

    .line 334
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->visibleHeight()I

    move-result v4

    goto :goto_0

    .line 335
    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 336
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    goto :goto_0

    .line 337
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isZoomVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->visibleHeight()I

    move-result v4

    goto :goto_0

    .line 341
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 343
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    if-eqz v0, :cond_5

    const v5, 0x7f0a00e9

    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v5

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_5

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    .line 346
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0
.end method

.method private trackQRCodeDetected()V
    .locals 2

    .prologue
    .line 223
    const-string/jumbo v0, "counter"

    const-string/jumbo v1, "qrcode_detected"

    invoke-static {v0, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private updateTipImage(IILjava/util/List;)V
    .locals 9
    .param p1, "newMode"    # I
    .param p2, "lastMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    const/16 v8, 0x96

    const/16 v7, 0xa5

    .line 461
    const/4 v3, -0x1

    .line 462
    .local v3, "newType":I
    sparse-switch p1, :sswitch_data_0

    .line 464
    const/4 v3, -0x1

    .line 489
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 490
    .local v2, "newImageResourceId":I
    const/4 v1, 0x0

    .line 491
    .local v1, "newContentDescriptionStrId":I
    const/4 v0, 0x1

    .line 492
    .local v0, "inOrOut":Z
    packed-switch v3, :pswitch_data_0

    .line 512
    :goto_1
    :pswitch_0
    if-lez v2, :cond_1

    .line 513
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 515
    :cond_1
    if-lez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 516
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 519
    :cond_2
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 520
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 521
    .local v4, "tag":I
    if-ne v4, v3, :cond_6

    .line 522
    return-void

    .line 474
    .end local v0    # "inOrOut":Z
    .end local v1    # "newContentDescriptionStrId":I
    .end local v2    # "newImageResourceId":I
    .end local v4    # "tag":I
    :sswitch_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    const/4 v3, 0x3

    goto :goto_0

    .line 479
    :sswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 480
    const/4 v3, 0x3

    goto :goto_0

    .line 481
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortraitZoom()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 482
    const/4 v3, 0x4

    goto :goto_0

    .line 484
    :cond_4
    const/4 v3, -0x1

    goto :goto_0

    .line 494
    .restart local v0    # "inOrOut":Z
    .restart local v1    # "newContentDescriptionStrId":I
    .restart local v2    # "newImageResourceId":I
    :pswitch_1
    const/4 v0, 0x0

    .line 495
    goto :goto_1

    .line 497
    :pswitch_2
    const v2, 0x7f020062

    .line 498
    goto :goto_1

    .line 500
    :pswitch_3
    const v2, 0x7f020060

    .line 501
    const v1, 0x7f0f012a

    .line 502
    goto :goto_1

    .line 504
    :pswitch_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 505
    const v2, 0x7f020114

    goto :goto_1

    .line 507
    :cond_5
    const v2, 0x7f020113

    goto :goto_1

    .line 526
    :cond_6
    if-eqz v0, :cond_7

    .line 527
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mDegree:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 530
    :cond_7
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 532
    if-nez p3, :cond_9

    .line 533
    if-eqz v0, :cond_8

    .line 534
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 561
    :goto_2
    return-void

    .line 536
    :cond_8
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    .line 539
    :cond_9
    if-eqz v0, :cond_c

    .line 540
    if-ne p2, v7, :cond_b

    .line 542
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 543
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    .line 545
    :cond_a
    new-instance v5, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v5, v6}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v8}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 551
    :cond_b
    new-instance v5, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v5, v6}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 554
    :cond_c
    if-eq p2, v7, :cond_d

    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    if-ne v5, v7, :cond_e

    .line 555
    :cond_d
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_2

    .line 557
    :cond_e
    new-instance v5, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v5, v6}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v5}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 462
    :sswitch_data_0
    .sparse-switch
        0xa3 -> :sswitch_0
        0xa5 -> :sswitch_0
        0xab -> :sswitch_1
    .end sparse-switch

    .line 492
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public containTips(I)Z
    .locals 2
    .param p1, "tokenResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 376
    :cond_0
    return v0
.end method

.method public directlyHideTips()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 359
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 360
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isPortraitHintVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 367
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->showTips(III)V

    .line 370
    :cond_1
    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 372
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0xff1

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f04000e

    return v0
.end method

.method public hideQrCodeTip()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 406
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public hideTipImage()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 235
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    .line 113
    const v1, 0x7f0a0043

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    .line 114
    const v1, 0x7f0a0045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0a0044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    .line 116
    const v1, 0x7f0a0046

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060004

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    .line 119
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/camera/aosp_porting/animation/QuadraticEaseOutInterpolator;

    invoke-direct {v2}, Lcom/android/camera/aosp_porting/animation/QuadraticEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 123
    .local v0, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 125
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    .line 128
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;)V

    .line 129
    return-void
.end method

.method public isPortraitHintVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 3
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 581
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 583
    packed-switch p1, :pswitch_data_0

    .line 591
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    .line 593
    return-void

    .line 585
    :pswitch_0
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->adjustViewBackground(I)V

    goto :goto_0

    .line 588
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    goto :goto_0

    .line 583
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackEvent(I)Z
    .locals 3
    .param p1, "callingFrom"    # I

    .prologue
    const/4 v2, 0x0

    .line 414
    packed-switch p1, :pswitch_data_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 423
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 424
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 425
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 433
    :pswitch_0
    return v2

    .line 416
    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 418
    :cond_1
    return v2

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->isEnableClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 162
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 167
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 220
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 173
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideQrCodeTip()V

    .line 174
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->trackQRCodeDetected()V

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/zxing/QRCodeManager;->show()V

    goto :goto_0

    .line 179
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 181
    .local v5, "type":I
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa0

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 182
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 184
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    .line 185
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    goto :goto_0

    .line 189
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTipImage()V

    .line 190
    invoke-interface {v0, v9}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 192
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    .line 193
    const/16 v7, 0xa2

    .line 192
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v4

    check-cast v4, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 194
    .local v4, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 195
    invoke-interface {v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    goto :goto_0

    .line 200
    .end local v4    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :pswitch_5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    .line 201
    const/16 v7, 0xc4

    .line 200
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;

    .line 202
    .local v3, "portraitZoomProtocol":Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;->portraitZoomSwitching()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 203
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    .line 204
    .local v2, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getPortraitZoom()I

    move-result v6

    if-ne v6, v8, :cond_3

    .line 205
    invoke-virtual {v2, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setPortraitZoom(I)V

    .line 206
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v7, 0x7f020113

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    :goto_1
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mZoomInOutAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    .line 212
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$PortraitZoomProtocol;->onPortraitZoomChanged()V

    goto/16 :goto_0

    .line 208
    :cond_3
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setPortraitZoom(I)V

    .line 209
    iget-object v6, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    const v7, 0x7f020114

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0043
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 182
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 3
    .param p1, "newMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    const/4 v2, 0x0

    .line 448
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    .line 449
    .local v0, "lastMode":I
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 451
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->onBackEvent(I)Z

    .line 454
    invoke-virtual {p0, v2, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipBottomMargin(IZ)V

    .line 456
    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->updateTipImage(IILjava/util/List;)V

    .line 458
    return-void
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "lastFragmentInfo"    # I

    .prologue
    .line 565
    const/16 v0, 0xf0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getFragmentInto()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 566
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 568
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xa1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipImage:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    return-void
.end method

.method public reInitTipImage()V
    .locals 2

    .prologue
    .line 239
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->provideAnimateElement(ILjava/util/List;)V

    .line 240
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 145
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register-->attachProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/16 v0, 0xaf

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 147
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 148
    return-void
.end method

.method public setPortraitHintVisible(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 382
    if-nez p1, :cond_1

    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 383
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->directlyHideTips()V

    .line 384
    if-nez p1, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mPortraitSuccessHint:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 388
    return-void

    .line 382
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showQrCodeTip()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 399
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 402
    :cond_0
    return-void
.end method

.method public showTips(III)V
    .locals 6
    .param p1, "tipType"    # I
    .param p2, "tipsResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "tipDuration"    # I

    .prologue
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 273
    :cond_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipType:I

    .line 274
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    iput v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mLastTipMessage:I

    .line 276
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipType:I

    .line 277
    iput p2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    .line 279
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mQrCodeButton:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->hideTip(Landroid/view/View;)Z

    .line 281
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->reIntTipViewMarginBottom(Landroid/view/View;)V

    .line 282
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 283
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 284
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentTipMessage:I

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mTipMessage:Landroid/widget/TextView;

    new-instance v2, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;

    invoke-direct {v2, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips$2;-><init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V

    .line 293
    const-wide/16 v4, 0xbb8

    .line 286
    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_1
    const/4 v0, 0x0

    .line 296
    .local v0, "duration":I
    packed-switch p3, :pswitch_data_1

    .line 310
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    if-lez v0, :cond_2

    .line 312
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    :cond_2
    return-void

    .line 268
    .end local v0    # "duration":I
    :pswitch_1
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mCurrentMode:I

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    .line 269
    return-void

    .line 298
    .restart local v0    # "duration":I
    :pswitch_2
    const/16 v0, 0x3e8

    .line 299
    goto :goto_0

    .line 301
    :pswitch_3
    const/16 v0, 0x1388

    .line 302
    goto :goto_0

    .line 304
    :pswitch_4
    const/16 v0, 0x3a98

    .line 305
    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 153
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegister-->detachProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v0, 0xaf

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 156
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 157
    return-void
.end method

.method public updateTipBottomMargin(IZ)V
    .locals 5
    .param p1, "margin"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 244
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    .line 245
    .local v0, "currentPaddingTop":I
    if-ge v0, p1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    int-to-float v2, p1

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    :cond_0
    if-eqz p2, :cond_2

    .line 249
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 250
    new-instance v1, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int v3, p1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_1
    new-instance v1, Lcom/android/camera/animation/type/TranslateYOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int v3, p1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;-><init>(Landroid/view/View;I)V

    new-instance v2, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;

    invoke-direct {v2}, Lcom/android/camera/aosp_porting/animation/BackEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips;->mRootView:Landroid/view/View;

    neg-int v2, p1

    invoke-static {v1, v2}, Lcom/android/camera/animation/type/TranslateYOnSubscribe;->directSetResult(Landroid/view/View;I)V

    goto :goto_0
.end method
