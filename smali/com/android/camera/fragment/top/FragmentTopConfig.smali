.class public Lcom/android/camera/fragment/top/FragmentTopConfig;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
.implements Lcom/android/camera/protocol/ModeProtocol$TopAlert;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# instance fields
.field private lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

.field private mBeforeMode:I

.field private mConfigViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabledFunctionMenu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayRectTopMargin:I

.field private mExpandView:Landroid/support/v7/widget/RecyclerView;

.field private mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

.field private mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

.field private mIsRTL:Z

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTopConfigMenu:Landroid/view/View;

.field private mTopExtraParent:Landroid/view/ViewGroup;

.field private mTotalWidth:I

.field private mViewPadding:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 99
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    .line 67
    return-void
.end method

.method private expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V
    .locals 18
    .param p1, "componentData"    # Lcom/android/camera/data/data/ComponentData;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "tag"    # I

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v15, 0x1

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 424
    return-void

    .line 429
    :cond_0
    new-instance v2, Lcom/android/camera/fragment/top/ExpandAdapter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/android/camera/fragment/top/ExpandAdapter;-><init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V

    .line 433
    .local v2, "adapter":Lcom/android/camera/fragment/top/ExpandAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 434
    const v15, 0x7f09002f

    .line 433
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    .line 433
    mul-int v6, v14, v15

    .line 435
    .local v6, "recyclerViewWidth":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    iput v6, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 436
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090043

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 445
    .local v5, "padding":I
    mul-int/lit8 v3, v5, 0x3

    .line 447
    .local v3, "offset":I
    const/4 v13, 0x0

    .line 448
    .local v13, "targetViewLeft":I
    const/4 v8, 0x0

    .line 449
    .local v8, "srcRecyclerViewLeft":I
    const/4 v11, 0x0

    .line 451
    .local v11, "targetRecyclerViewLeft":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v7

    .line 452
    .local v7, "srcPosition":I
    const/4 v10, 0x0

    .line 453
    .local v10, "targetPosition":I
    const/4 v9, 0x0

    .line 456
    .local v9, "state":I
    if-nez v7, :cond_4

    .line 457
    const/4 v10, 0x0

    .line 458
    const/4 v9, 0x0

    .line 470
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v14, :cond_1

    rsub-int/lit8 v9, v9, 0x4

    .end local v9    # "state":I
    :cond_1
    packed-switch v9, :pswitch_data_0

    .line 502
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    iput-object v15, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseLeft:I

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    iput v8, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mReverseRecyclerViewLeft:I

    .line 507
    const/4 v12, -0x1

    .line 508
    .local v12, "targetType":I
    const/16 v14, 0xc1

    move/from16 v0, p3

    if-ne v0, v14, :cond_8

    .line 509
    const/4 v12, 0x1

    .line 514
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    move/from16 v0, p3

    invoke-virtual {v14, v0, v15, v12}, Lcom/android/camera/fragment/top/LastAnimationComponent;->hideOtherViews(ILjava/util/List;I)V

    .line 516
    if-eq v7, v10, :cond_3

    .line 517
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/android/camera/fragment/top/LastAnimationComponent;->mAnchorView:Landroid/view/View;

    .line 518
    invoke-static/range {p2 .. p2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 519
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v15

    sub-int v15, v13, v15

    int-to-float v15, v15

    .line 518
    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 520
    const-wide/16 v16, 0x0

    .line 518
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 521
    const-wide/16 v16, 0x12c

    .line 518
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 522
    sget-object v15, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 518
    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 526
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 527
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int v4, v14, v6

    .line 528
    .local v4, "originalRecyclerViewLeft":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    sub-int v15, v8, v4

    int-to-float v15, v15

    invoke-static {v14, v15}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 529
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 530
    const/high16 v15, 0x3f800000    # 1.0f

    .line 529
    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 531
    sub-int v15, v11, v4

    int-to-float v15, v15

    .line 529
    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 532
    const-wide/16 v16, 0x12c

    .line 529
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    .line 533
    sget-object v15, Lcom/android/camera/fragment/top/LastAnimationComponent;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 529
    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v14

    invoke-virtual {v14}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 536
    return-void

    .line 459
    .end local v4    # "originalRecyclerViewLeft":I
    .end local v12    # "targetType":I
    .restart local v9    # "state":I
    :cond_4
    const/4 v14, 0x6

    if-ne v7, v14, :cond_5

    .line 460
    const/4 v10, 0x6

    .line 461
    const/4 v9, 0x4

    goto/16 :goto_0

    .line 462
    :cond_5
    const/4 v14, 0x4

    if-eq v7, v14, :cond_6

    const/4 v14, 0x5

    if-ne v7, v14, :cond_7

    .line 463
    :cond_6
    const/4 v10, 0x3

    .line 464
    const/4 v9, 0x2

    .line 462
    goto/16 :goto_0

    .line 466
    :cond_7
    const/4 v10, 0x0

    .line 467
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 472
    .end local v9    # "state":I
    :pswitch_0
    const/4 v13, 0x0

    .line 473
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    sub-int v8, v14, v3

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/lit8 v11, v14, 0x0

    .line 475
    goto/16 :goto_1

    .line 477
    :pswitch_1
    const/4 v13, 0x0

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    add-int v8, v14, v3

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/lit8 v11, v14, 0x0

    .line 480
    goto/16 :goto_1

    .line 482
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    sub-int v8, v14, v3

    .line 484
    sub-int v11, v13, v6

    .line 485
    goto/16 :goto_1

    .line 487
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    sub-int v8, v14, v3

    .line 489
    sub-int v11, v13, v6

    .line 490
    goto/16 :goto_1

    .line 492
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int v13, v14, v15

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    sub-int/2addr v14, v6

    add-int v8, v14, v3

    .line 494
    sub-int v11, v13, v6

    .line 495
    goto/16 :goto_1

    .line 510
    .restart local v12    # "targetType":I
    :cond_8
    const/16 v14, 0xc2

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    .line 511
    const/4 v12, 0x2

    goto/16 :goto_2

    .line 527
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "originalRecyclerViewLeft":I
    goto/16 :goto_3

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAlertTopMargin()I
    .locals 5

    .prologue
    const v4, 0x7f090043

    .line 1202
    const/4 v1, 0x0

    .line 1204
    .local v1, "topMargin":I
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-nez v2, :cond_0

    .line 1205
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1206
    .local v0, "screenWidth":I
    int-to-float v2, v0

    const/high16 v3, 0x3f400000    # 0.75f

    div-float/2addr v2, v3

    int-to-float v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1207
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1206
    add-int/2addr v2, v3

    .line 1208
    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    .line 1206
    sub-int v1, v2, v3

    .line 1219
    .end local v0    # "screenWidth":I
    :goto_0
    return v1

    .line 1210
    :cond_0
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    if-lez v2, :cond_1

    .line 1211
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    .line 1212
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1211
    add-int v1, v2, v3

    goto :goto_0

    .line 1214
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getFocusPeakImageResource()I
    .locals 3
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    const-string/jumbo v2, "pref_camera_peak_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 405
    .local v0, "switchOn":Z
    const-string/jumbo v1, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    if-eqz v0, :cond_0

    .line 407
    const v1, 0x7f020084

    return v1

    .line 409
    :cond_0
    const v1, 0x7f020087

    return v1

    .line 413
    :cond_1
    if-eqz v0, :cond_2

    .line 414
    const v1, 0x7f020086

    return v1

    .line 416
    :cond_2
    const v1, 0x7f020085

    return v1
.end method

.method private getInitialMargin(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 189
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 181
    :pswitch_1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x3

    return v0

    .line 183
    :pswitch_2
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 185
    :pswitch_3
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x4

    return v0

    .line 187
    :pswitch_4
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    return v0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1190
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    return-object v0

    .line 1193
    :cond_0
    return-object v1
.end method

.method private getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    .locals 2

    .prologue
    .line 1197
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1198
    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    return-object v0
.end method

.method private reConfigTipImage()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1267
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 1268
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v0

    .line 1269
    .local v0, "componentConfigFlash":Lcom/android/camera/data/data/config/ComponentConfigFlash;
    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 1270
    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1271
    .local v3, "flashValue":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1272
    invoke-virtual {p0, v6, v6, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    .line 1273
    return-void

    .line 1274
    :cond_0
    const-string/jumbo v5, "torch"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1275
    invoke-virtual {p0, v6, v7, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    .line 1276
    return-void

    .line 1280
    .end local v3    # "flashValue":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v1

    .line 1281
    .local v1, "componentConfigHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 1282
    iget v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1283
    .local v4, "hdrValue":Ljava/lang/String;
    const-string/jumbo v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1284
    const-string/jumbo v5, "normal"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1283
    if-eqz v5, :cond_3

    .line 1285
    :cond_2
    invoke-virtual {p0, v6, v6, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    .line 1286
    return-void

    .line 1287
    :cond_3
    const-string/jumbo v5, "live"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1288
    invoke-virtual {p0, v6, v7, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    .line 1289
    return-void

    .line 1292
    .end local v4    # "hdrValue":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private resetImages()V
    .locals 7

    .prologue
    .line 950
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    .line 951
    .local v4, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 953
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 955
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v1

    .line 956
    .local v1, "newType":I
    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    .line 957
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 953
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 959
    .end local v1    # "newType":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z
    .locals 21
    .param p1, "newType"    # I
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "newMode"    # I
    .param p4, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;
    .param p5, "position"    # I
    .param p6, "isSwitchingMode"    # Z

    .prologue
    .line 737
    const/4 v15, 0x0

    .line 738
    .local v15, "newImageResourceId":I
    const/4 v7, 0x0

    .line 739
    .local v7, "contentDescriptionStringId":I
    sparse-switch p1, :sswitch_data_0

    .line 830
    :cond_0
    :goto_0
    if-lez v15, :cond_2

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 832
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getInitialMargin(I)I

    move-result v13

    .line 833
    .local v13, "initialMargin":I
    if-lez v13, :cond_1

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 837
    .local v14, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 838
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v13, v18

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 843
    .end local v14    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    :goto_1
    if-nez p2, :cond_f

    .line 844
    const-string/jumbo v18, "FragmentTopConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "newMode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", newType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "initialMargin":I
    :cond_2
    :goto_2
    const/16 v18, 0x1

    return v18

    .line 741
    :sswitch_0
    const/16 v18, 0x0

    return v18

    .line 744
    :sswitch_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v5

    .line 745
    .local v5, "componentFlash":Lcom/android/camera/data/data/config/ComponentConfigFlash;
    invoke-virtual {v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 746
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v15

    .line 747
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v7

    .line 748
    if-nez p6, :cond_0

    .line 749
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v11

    .line 750
    .local v11, "flashValue":Ljava/lang/String;
    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 751
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    .line 752
    :cond_3
    const-string/jumbo v18, "torch"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 753
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    .line 755
    :cond_4
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertFlash(IZZ)V

    goto/16 :goto_0

    .line 761
    .end local v5    # "componentFlash":Lcom/android/camera/data/data/config/ComponentConfigFlash;
    .end local v11    # "flashValue":Ljava/lang/String;
    :sswitch_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    .line 762
    .local v6, "componentHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    invoke-virtual {v6}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 763
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedDrawableIgnoreClose(I)I

    move-result v15

    .line 764
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getValueSelectedStringIdIgnoreClose(I)I

    move-result v7

    .line 765
    if-nez p6, :cond_0

    .line 766
    move/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v12

    .line 767
    .local v12, "hdrValue":Ljava/lang/String;
    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 768
    const-string/jumbo v18, "normal"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 767
    if-eqz v18, :cond_6

    .line 769
    :cond_5
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    .line 770
    :cond_6
    const-string/jumbo v18, "live"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 771
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    .line 773
    :cond_7
    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertHDR(IZZ)V

    goto/16 :goto_0

    .line 780
    .end local v6    # "componentHdr":Lcom/android/camera/data/data/config/ComponentConfigHdr;
    .end local v12    # "hdrValue":Ljava/lang/String;
    :sswitch_3
    if-eqz p6, :cond_9

    .line 781
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v18

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, p3

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/backup/DataBackUp;->getBackupFilter(II)Ljava/lang/String;

    move-result-object v10

    .line 787
    .local v10, "filter":Ljava/lang/String;
    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 789
    .local v8, "currentFilterIndex":I
    sget v18, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    move/from16 v0, v18

    if-eq v8, v0, :cond_8

    .line 790
    if-gtz v8, :cond_a

    .line 791
    :cond_8
    const v15, 0x7f02009e

    .line 796
    :goto_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v18

    .line 797
    const/16 v19, 0xa2

    .line 796
    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v16

    check-cast v16, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 798
    .local v16, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    if-eqz v16, :cond_0

    .line 799
    invoke-interface/range {v16 .. v16}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 800
    const v7, 0x7f0f011d

    goto/16 :goto_0

    .line 783
    .end local v8    # "currentFilterIndex":I
    .end local v10    # "filter":Ljava/lang/String;
    .end local v16    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->getComponentValue(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "filter":Ljava/lang/String;
    goto :goto_3

    .line 793
    .restart local v8    # "currentFilterIndex":I
    :cond_a
    const v15, 0x7f0200a0

    goto :goto_4

    .line 802
    .restart local v16    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_b
    const v7, 0x7f0f011c

    goto/16 :goto_0

    .line 807
    .end local v8    # "currentFilterIndex":I
    .end local v10    # "filter":Ljava/lang/String;
    .end local v16    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :sswitch_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v4

    .line 808
    .local v4, "componentBokeh":Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v17

    .line 809
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const v15, 0x7f020112

    .line 810
    :goto_5
    const-string/jumbo v18, "on"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const v7, 0x7f0f011f

    goto/16 :goto_0

    .line 809
    :cond_c
    const v15, 0x7f020111

    goto :goto_5

    .line 810
    :cond_d
    const v7, 0x7f0f011e

    goto/16 :goto_0

    .line 813
    .end local v4    # "componentBokeh":Lcom/android/camera/data/data/config/ComponentConfigBokeh;
    .end local v17    # "value":Ljava/lang/String;
    :sswitch_5
    const v15, 0x7f020104

    .line 814
    const v7, 0x7f0f0120

    .line 815
    goto/16 :goto_0

    .line 817
    :sswitch_6
    const v15, 0x7f020093

    .line 818
    const v7, 0x7f0f0121

    .line 819
    goto/16 :goto_0

    .line 821
    :sswitch_7
    const v15, 0x7f020111

    .line 822
    const v7, 0x7f0f0122

    .line 823
    goto/16 :goto_0

    .line 825
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v15

    .line 826
    const v7, 0x7f0f0123

    .line 827
    goto/16 :goto_0

    .line 840
    .restart local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "initialMargin":I
    .restart local v14    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_e
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v18, v13, v18

    move/from16 v0, v18

    iput v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 846
    .end local v14    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_f
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 847
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 848
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 849
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_10

    .line 850
    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto/16 :goto_2

    .line 852
    :cond_10
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    goto/16 :goto_2

    .line 739
    nop

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_1
        0xc2 -> :sswitch_2
        0xc3 -> :sswitch_7
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_5
        0xc6 -> :sswitch_0
        0xc7 -> :sswitch_8
        0xc8 -> :sswitch_4
        0xe1 -> :sswitch_6
    .end sparse-switch
.end method

.method private showMenu()V
    .locals 6

    .prologue
    .line 625
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 626
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v1

    .line 627
    .local v1, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear()V

    .line 629
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 632
    :cond_0
    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-direct {v2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .line 633
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDegree:I

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->setDegree(I)V

    .line 635
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 636
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 638
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 639
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .line 640
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v4}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    .line 638
    const v5, 0x7f0a0078

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method private trackBokehChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraMode"    # I
    .param p2, "bokeh"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 374
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "BOKEH"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "bokeh_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 377
    return-void
.end method

.method private trackFlashChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraMode"    # I
    .param p2, "flash"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    return-void

    .line 353
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v1, "\u95ea\u5149\u706f"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "flash_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    return-void
.end method

.method private trackHdrChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "cameraMode"    # I
    .param p2, "hdr"    # Ljava/lang/String;

    .prologue
    .line 360
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-static {p1}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v1, "HDR"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "hdr_changed"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 367
    return-void
.end method


# virtual methods
.method public alertFlash(IZZ)V
    .locals 2
    .param p1, "visible"    # I
    .param p2, "torch"    # Z
    .param p3, "showSelector"    # Z

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1165
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1166
    :cond_0
    return-void

    .line 1169
    :cond_1
    if-nez p1, :cond_2

    .line 1170
    if-eqz p3, :cond_2

    .line 1171
    const/16 v1, 0xc1

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 1176
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertFlash(IIZ)V

    .line 1177
    return-void
.end method

.method public alertHDR(IZZ)V
    .locals 2
    .param p1, "visible"    # I
    .param p2, "live"    # Z
    .param p3, "showSelector"    # Z

    .prologue
    .line 1146
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1147
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1148
    :cond_0
    return-void

    .line 1151
    :cond_1
    if-nez p1, :cond_2

    .line 1152
    if-eqz p3, :cond_2

    .line 1153
    const/16 v1, 0xc2

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->performClick()Z

    .line 1159
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertHDR(IIZ)V

    .line 1160
    return-void
.end method

.method public alertUpdateValue(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 1181
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1182
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1183
    :cond_0
    return-void

    .line 1186
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getAlertTopMargin()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertUpdateValue(II)V

    .line 1187
    return-void
.end method

.method public varargs disableMenuItem([I)V
    .locals 5
    .param p1, "configItems"    # [I

    .prologue
    .line 1088
    if-eqz p1, :cond_0

    .line 1089
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 1090
    .local v0, "item":I
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1089
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1093
    .end local v0    # "item":I
    :cond_0
    return-void
.end method

.method public varargs enableMenuItem([I)V
    .locals 5
    .param p1, "configItems"    # [I

    .prologue
    const/4 v1, 0x0

    .line 1098
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 1099
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1105
    :cond_1
    return-void

    .line 1101
    :cond_2
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget v0, p1, v1

    .line 1102
    .local v0, "item":I
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 200
    const/16 v0, 0xf4

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f040020

    return v0
.end method

.method public getTopImage(I)Landroid/widget/ImageView;
    .locals 4
    .param p1, "config"    # I

    .prologue
    .line 381
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "imageView$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 382
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 383
    .local v2, "tag":I
    if-ne v2, p1, :cond_0

    .line 384
    return-object v0

    .line 388
    .end local v0    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "tag":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getTopImagePosition(I)I
    .locals 3
    .param p1, "config"    # I

    .prologue
    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 394
    .local v1, "tag":I
    if-ne v1, p1, :cond_0

    .line 395
    return v0

    .line 392
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    .end local v1    # "tag":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hideConfigMenu()V
    .locals 2

    .prologue
    .line 1083
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 1084
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    .line 104
    new-instance v8, Lcom/android/camera/fragment/top/LastAnimationComponent;

    invoke-direct {v8}, Lcom/android/camera/fragment/top/LastAnimationComponent;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    .line 106
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    .line 108
    const v8, 0x7f0a0078

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopExtraParent:Landroid/view/ViewGroup;

    .line 109
    const v8, 0x7f0a006f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    .line 111
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0070

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 112
    .local v0, "config00":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0071

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .local v1, "config01":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0072

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 114
    .local v2, "config02":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0073

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 115
    .local v3, "config03":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0074

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 116
    .local v4, "config04":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0075

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 117
    .local v5, "config05":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    const v9, 0x7f0a0076

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 119
    .local v6, "config06":Landroid/widget/ImageView;
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    .line 120
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const v8, 0x7f0a0077

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView;

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    .line 129
    new-instance v7, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 130
    .local v7, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 131
    iget-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mExpandView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    .line 134
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mViewPadding:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTotalWidth:I

    .line 159
    iget v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    .line 161
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-virtual {v6, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {v8}, Lcom/android/camera/fragment/top/FragmentTopAlert;-><init>()V

    iput-object v8, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 172
    iget-object v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    iget-object v10, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v10}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getFragmentTag()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0a0079

    .line 171
    invoke-static {v8, v11, v9, v10}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public insertConfigItem(I)V
    .locals 10
    .param p1, "newConfigItem"    # I

    .prologue
    const/16 v9, 0xc4

    .line 978
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v7, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 979
    return-void

    .line 982
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 984
    .local v6, "oldFilterView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v2, v7, v8

    .line 986
    .local v2, "filterSrcStart":I
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    .line 989
    invoke-virtual {p0, v9}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v5

    .line 990
    .local v5, "newFilterView":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 992
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 993
    .local v3, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v3}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    .line 995
    .local v1, "filterCurrentStart":I
    sub-int v0, v1, v2

    .line 996
    .local v0, "distance":I
    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_1

    neg-int v0, v0

    .line 999
    :cond_1
    new-instance v7, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v7, v6, v0}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    .line 1000
    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopConfig$1;

    invoke-direct {v8, p0, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    .line 999
    invoke-virtual {v7, v8}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 1015
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v4

    .line 1016
    .local v4, "newConfigView":Landroid/view/View;
    new-instance v7, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v7, v4}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    invoke-virtual {v7}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 1019
    return-void

    .line 984
    .end local v0    # "distance":I
    .end local v1    # "filterCurrentStart":I
    .end local v2    # "filterSrcStart":I
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "newConfigView":Landroid/view/View;
    .end local v5    # "newFilterView":Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v2

    .restart local v2    # "filterSrcStart":I
    goto :goto_0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 4
    .param p1, "arrivedType"    # I

    .prologue
    .line 1252
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 1255
    :try_start_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 1256
    const/16 v3, 0xa4

    .line 1255
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 1257
    .local v0, "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    if-eqz v0, :cond_0

    .line 1258
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->reCheckMutexConfigs()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    .end local v0    # "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    :cond_0
    :goto_0
    return-void

    .line 1260
    :catch_0
    move-exception v1

    .line 1261
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "FragmentTopConfig"

    const-string/jumbo v3, "Unexpected exceptions "

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyDataChanged(II)V
    .locals 2
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 1244
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1246
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisplayRectTopMargin:I

    .line 1247
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->provideAnimateElement(ILjava/util/List;)V

    .line 1248
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 9
    .param p1, "callingFrom"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 693
    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    if-eq p1, v8, :cond_0

    move v3, v4

    :goto_0
    const/4 v7, -0x1

    invoke-virtual {v6, v3, v7}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    return v4

    :cond_0
    move v3, v5

    .line 693
    goto :goto_0

    .line 697
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    .line 698
    .local v0, "fragmentTopConfigExtra":Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    if-eqz v0, :cond_4

    .line 699
    const/4 v1, 0x0

    .line 700
    .local v1, "needAnimation":Z
    packed-switch p1, :pswitch_data_0

    .line 707
    :goto_1
    if-eqz v1, :cond_3

    .line 708
    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V

    .line 709
    new-instance v3, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v3, v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 710
    const/16 v5, 0xc8

    .line 709
    invoke-virtual {v3, v5}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v3

    invoke-static {v3}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v3

    invoke-virtual {v3}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 716
    :goto_2
    if-eq p1, v8, :cond_2

    .line 717
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v2

    .line 718
    .local v2, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v2, :cond_2

    .line 719
    invoke-virtual {v2, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 720
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->reConfigTipImage()V

    .line 721
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->alertUpdateValue(I)V

    .line 725
    .end local v2    # "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    :cond_2
    return v4

    .line 703
    :pswitch_0
    const/4 v1, 0x1

    .line 704
    goto :goto_1

    .line 712
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/16 v6, 0xf5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    .line 713
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 727
    .end local v1    # "needAnimation":Z
    :cond_4
    return v5

    .line 700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xc4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isEnableClick()Z

    move-result v6

    if-nez v6, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ActivityBase;

    invoke-virtual {v6}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    .line 222
    .local v3, "module":Lcom/android/camera/module/Module;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 223
    :cond_1
    const-string/jumbo v6, "FragmentTopConfig"

    const-string/jumbo v7, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 228
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    .line 229
    const/16 v7, 0xa4

    .line 228
    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 230
    .local v1, "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    if-nez v1, :cond_3

    .line 231
    return-void

    .line 235
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v6

    const/16 v7, 0xa1

    invoke-virtual {v6, v7}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 236
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 237
    return-void

    .line 240
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 242
    .local v5, "tag":I
    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 243
    return-void

    .line 246
    :cond_5
    sparse-switch v5, :sswitch_data_0

    .line 293
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return-void

    .line 248
    .restart local p1    # "v":Landroid/view/View;
    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 249
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v6

    invoke-direct {p0, v6, p1, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    .line 253
    .end local v2    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    :sswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 254
    .restart local v2    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v6

    invoke-direct {p0, v6, p1, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig;->expandExtra(Lcom/android/camera/data/data/ComponentData;Landroid/view/View;I)V

    goto :goto_0

    .line 258
    .end local v2    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    :sswitch_2
    invoke-interface {v1, v10}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    .line 259
    new-array v6, v9, [I

    aput v10, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    goto :goto_0

    .line 263
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->showMenu()V

    goto :goto_0

    .line 267
    :sswitch_4
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showSetting()V

    goto :goto_0

    .line 271
    :sswitch_5
    const/16 v6, 0xc3

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    .line 275
    :sswitch_6
    const/16 v6, 0xc7

    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    .line 276
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getFocusPeakImageResource()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 279
    .restart local p1    # "v":Landroid/view/View;
    :sswitch_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 281
    .restart local v2    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->toggle(I)V

    .line 282
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v6, v7}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "newValue":Ljava/lang/String;
    iget v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v6, v4}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackBokehChanged(ILjava/lang/String;)V

    .line 284
    new-array v6, v9, [I

    const/16 v7, 0xc8

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 286
    iget v6, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v2, v6, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfBokehChanged(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 287
    new-array v6, v9, [I

    const/16 v7, 0xc2

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 290
    :cond_6
    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configBokeh(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_5
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_3
        0xc7 -> :sswitch_6
        0xc8 -> :sswitch_7
        0xe1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;)V
    .locals 8
    .param p1, "componentData"    # Lcom/android/camera/data/data/ComponentData;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xc1

    const/16 v6, 0xc2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 304
    .local v1, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 305
    const/16 v3, 0xa4

    .line 304
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 306
    .local v0, "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->lastAnimationComponent:Lcom/android/camera/fragment/top/LastAnimationComponent;

    const/4 v3, -0x1

    invoke-virtual {v2, v5, v3}, Lcom/android/camera/fragment/top/LastAnimationComponent;->reverse(ZI)Z

    .line 347
    return-void

    .line 308
    :sswitch_0
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackFlashChanged(ILjava/lang/String;)V

    .line 309
    new-array v2, v5, [I

    aput v7, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 310
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigHdrIfFlashChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 314
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configFlash(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :sswitch_1
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-direct {p0, v2, p2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->trackHdrChanged(ILjava/lang/String;)V

    .line 319
    new-array v2, v5, [I

    aput v6, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 320
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigFlashIfHdrChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 321
    new-array v2, v5, [I

    aput v7, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 323
    :cond_2
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    invoke-virtual {v1, v2, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->reConfigBokehIfHdrChanged(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    new-array v2, v5, [I

    const/16 v3, 0xc8

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopConfig;->updateConfigItem([I)V

    .line 326
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 327
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-eq v2, v3, :cond_4

    .line 328
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa3

    if-ne v2, v3, :cond_5

    .line 329
    :cond_4
    const-string/jumbo v2, "off"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 330
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 331
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    .line 341
    :cond_5
    :goto_1
    invoke-interface {v0, p2}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configHdr(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v2

    if-ne v2, v6, :cond_7

    .line 334
    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 336
    :cond_7
    invoke-interface {v0, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->updateComponentBeauty(Z)V

    goto :goto_1

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x7f0f0060 -> :sswitch_0
        0x7f0f016a -> :sswitch_1
    .end sparse-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 13
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
    .line 864
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    if-eq v0, p1, :cond_0

    .line 865
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    .line 867
    :cond_0
    iget v9, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    .line 868
    .local v9, "lastMode":I
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 870
    const/4 v10, 0x1

    .line 871
    .local v10, "needBack":Z
    sparse-switch v9, :sswitch_data_0

    .line 885
    :goto_0
    if-eqz v10, :cond_1

    .line 886
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    .line 889
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v12

    .line 890
    .local v12, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v12, :cond_2

    .line 891
    invoke-virtual {v12, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideAnimateElement(ILjava/util/List;)V

    .line 894
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/provider/DataProvider;->dataConfig()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v4

    check-cast v4, Lcom/android/camera/data/data/config/DataItemConfig;

    .line 895
    .local v4, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getSupportedTopConfigs(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 897
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 898
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mConfigViews:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 899
    .local v2, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v1

    .line 901
    .local v1, "newType":I
    if-eqz p2, :cond_3

    const/4 v6, 0x1

    :goto_2
    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    move-result v8

    .line 905
    .local v8, "inOrOut":Z
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 907
    .local v11, "tag":I
    if-ne v11, v1, :cond_4

    .line 897
    .end local v11    # "tag":I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 875
    .end local v1    # "newType":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v4    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    .end local v5    # "i":I
    .end local v8    # "inOrOut":Z
    .end local v12    # "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 879
    :sswitch_1
    const/4 v10, 0x0

    .line 880
    goto :goto_0

    .line 901
    .restart local v1    # "newType":I
    .restart local v2    # "imageView":Landroid/widget/ImageView;
    .restart local v4    # "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    .restart local v5    # "i":I
    .restart local v12    # "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 912
    .restart local v8    # "inOrOut":Z
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 915
    if-nez p2, :cond_6

    .line 916
    if-eqz v8, :cond_5

    .line 917
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 919
    :cond_5
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 922
    :cond_6
    if-eqz v8, :cond_7

    .line 929
    new-instance v7, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v7, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 931
    .local v7, "alphaInOnSubscribe":Lcom/android/camera/animation/type/AlphaInOnSubscribe;
    const/16 v0, 0x96

    .line 930
    invoke-virtual {v7, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->setStartDelayTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    .line 932
    const/16 v3, 0x96

    .line 930
    invoke-virtual {v0, v3}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    .line 934
    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 936
    .end local v7    # "alphaInOnSubscribe":Lcom/android/camera/animation/type/AlphaInOnSubscribe;
    :cond_7
    const/16 v0, 0xa5

    if-eq v9, v0, :cond_8

    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    const/16 v3, 0xa5

    if-ne v0, v3, :cond_9

    .line 937
    :cond_8
    invoke-static {v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 939
    :cond_9
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 947
    .end local v1    # "newType":I
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "inOrOut":Z
    :cond_a
    return-void

    .line 871
    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch

    .line 875
    :sswitch_data_1
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_1
    .end sparse-switch
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
    .line 1296
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1297
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopExtra()Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    move-result-object v0

    .line 1298
    .local v0, "fragmentTopConfigExtra":Lcom/android/camera/fragment/top/FragmentTopConfigExtra;
    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->provideRotateItem(Ljava/util/List;I)V

    .line 1301
    :cond_0
    return-void
.end method

.method public refreshExtraMenu()V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->reFresh()V

    .line 1079
    :cond_0
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 2
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 646
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 648
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 649
    const-string/jumbo v0, "FragmentTopConfig"

    const-string/jumbo v1, "register-->attachProtocol"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/16 v0, 0xac

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 661
    return-void
.end method

.method public removeConfigItem(I)V
    .locals 9
    .param p1, "departedConfigItem"    # I

    .prologue
    const/16 v8, 0xc4

    .line 1023
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v7, p1}, Lcom/android/camera/data/data/config/SupportedConfigs;->hasConfig(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1024
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 1030
    .local v0, "departedView":Landroid/view/View;
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v6

    .line 1032
    .local v6, "oldFilterView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1034
    .local v4, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    .line 1036
    .local v3, "filterSrcStart":I
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->resetImages()V

    .line 1039
    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v5

    .line 1040
    .local v5, "newFilterView":Landroid/view/View;
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1042
    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int v2, v7, v8

    .line 1044
    .local v2, "filterCurrentStart":I
    :goto_0
    sub-int v1, v2, v3

    .line 1045
    .local v1, "distance":I
    iget-boolean v7, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mIsRTL:Z

    if-eqz v7, :cond_1

    neg-int v1, v1

    .line 1048
    :cond_1
    new-instance v7, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v7, v6, v1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    .line 1049
    new-instance v8, Lcom/android/camera/fragment/top/FragmentTopConfig$2;

    invoke-direct {v8, p0, v6, v5}, Lcom/android/camera/fragment/top/FragmentTopConfig$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Landroid/view/View;Landroid/view/View;)V

    .line 1048
    invoke-virtual {v7, v8}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    .line 1065
    new-instance v7, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v7, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v7}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v7

    invoke-virtual {v7}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 1066
    return-void

    .line 1042
    .end local v1    # "distance":I
    .end local v2    # "filterCurrentStart":I
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .restart local v2    # "filterCurrentStart":I
    goto :goto_0
.end method

.method public removeExtraMenu()V
    .locals 1

    .prologue
    .line 1071
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->onBackEvent(I)Z

    .line 1072
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 207
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setClickEnable(Z)V

    .line 210
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mDisabledFunctionMenu:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 213
    :cond_1
    return-void
.end method

.method public setRecordingTimeState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 1110
    packed-switch p1, :pswitch_data_0

    .line 1125
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1126
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1127
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/camera/fragment/top/FragmentTopConfig$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/fragment/top/FragmentTopConfig$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopConfig;Lcom/android/camera/fragment/top/FragmentTopAlert;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1136
    :goto_1
    return-void

    .line 1113
    .end local v0    # "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    :pswitch_0
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    .line 1112
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 1114
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    .line 1112
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 1119
    :pswitch_1
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mTopConfigMenu:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    .line 1118
    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    .line 1120
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    .line 1118
    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 1134
    .restart local v0    # "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(I)V

    goto :goto_1

    .line 1110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 3
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 665
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 667
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 668
    const-string/jumbo v1, "FragmentTopConfig"

    const-string/jumbo v2, "unRegister-->detachProtocol"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/16 v1, 0xac

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 671
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 672
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopAlert:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mFragmentTopConfigExtra:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 679
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 689
    return-void
.end method

.method public varargs updateConfigItem([I)V
    .locals 9
    .param p1, "configItems"    # [I

    .prologue
    const/4 v6, 0x0

    .line 963
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mBeforeMode:I

    .line 964
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    .line 965
    .local v4, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_0

    aget v1, p1, v7

    .line 968
    .local v1, "configItem":I
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImage(I)Landroid/widget/ImageView;

    move-result-object v2

    .line 969
    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopConfig;->mCurrentMode:I

    .line 971
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopImagePosition(I)I

    move-result v5

    move-object v0, p0

    .line 966
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/fragment/top/FragmentTopConfig;->setTopImageResource(ILandroid/widget/ImageView;ILcom/android/camera/data/data/config/DataItemConfig;IZ)Z

    .line 965
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 974
    .end local v1    # "configItem":I
    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopConfig;->getTopAlert()Lcom/android/camera/fragment/top/FragmentTopAlert;

    move-result-object v0

    .line 1141
    .local v0, "topAlert":Lcom/android/camera/fragment/top/FragmentTopAlert;
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 1142
    return-void
.end method
