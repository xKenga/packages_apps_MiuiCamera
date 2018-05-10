.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private currentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/camera/Camera;

.field private originalFragments:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/camera/fragment/BaseFragmentDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/BaseFragmentDelegate;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/camera/Camera;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 90
    new-instance v0, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {v0}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    .line 91
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    .line 92
    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 15
    .param p2, "baseLifecycleListener"    # Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;",
            "Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "replaceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/fragment/BaseFragmentOperation;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 264
    :cond_0
    new-instance v13, Ljava/lang/RuntimeException;

    const-string/jumbo v14, "need operation info"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 267
    :cond_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v13}, Lcom/android/camera/Camera;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 269
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 272
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "replaceInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/fragment/BaseFragmentOperation;

    .line 273
    .local v11, "replaceInfo":Lcom/android/camera/fragment/BaseFragmentOperation;
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v7

    .line 274
    .local v7, "lastFragmentInfo":I
    iget v9, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    .line 277
    .local v9, "pendingFragmentInfo":I
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {p0, v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v7

    .line 280
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v7}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 281
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v9, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    .line 282
    .local v8, "newFragment":Lcom/android/camera/fragment/BaseFragment;
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v8, v14}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 283
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v13, v14, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 285
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    .line 289
    .end local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 291
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    .line 292
    .local v10, "removeFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v10, :cond_2

    .line 293
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 294
    invoke-virtual {v3, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 297
    :cond_2
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto :goto_0

    .line 302
    .end local v10    # "removeFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_2
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v7}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 303
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    .line 304
    .local v6, "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v6, :cond_3

    .line 305
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 306
    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 311
    :cond_3
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v7, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 317
    .end local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    .line 318
    .restart local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v6, :cond_4

    .line 319
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 320
    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 322
    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    .line 323
    .restart local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v8, :cond_5

    .line 324
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 325
    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 331
    :goto_1
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v14

    invoke-virtual {v13, v14, v8}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 333
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 327
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v9, v7, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v8

    .line 328
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v8, v14}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 338
    .end local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    .end local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_4
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 339
    .local v4, "fragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_9

    .line 340
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 341
    .local v1, "fragmentInfo":I
    if-ne v1, v9, :cond_7

    .line 339
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 344
    :cond_7
    iget-object v13, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v13, v1}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    .line 345
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v10

    check-cast v10, Lcom/android/camera/fragment/BaseFragment;

    .line 347
    .restart local v10    # "removeFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v10, :cond_6

    .line 348
    if-eq v1, v7, :cond_8

    .line 349
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 353
    :goto_4
    invoke-virtual {v3, v10}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_3

    .line 351
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_4

    .line 357
    .end local v1    # "fragmentInfo":I
    .end local v10    # "removeFragment":Lcom/android/camera/fragment/BaseFragment;
    :cond_9
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    .line 358
    .restart local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-virtual {v8, v7}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 359
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 360
    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 362
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 366
    .end local v4    # "fragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "i":I
    .end local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_5
    if-eq v7, v9, :cond_a

    .line 367
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    .line 368
    .restart local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v6, :cond_a

    .line 369
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    .line 370
    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 374
    .end local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    :cond_a
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/camera/fragment/BaseFragment;

    .line 375
    .restart local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-virtual {v8, v7}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 376
    invoke-virtual {v8}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    .line 377
    invoke-virtual {v3, v8}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 379
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v9, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 383
    .end local v8    # "newFragment":Lcom/android/camera/fragment/BaseFragment;
    :pswitch_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/android/camera/fragment/BaseFragment;

    .line 384
    .restart local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    if-eqz v6, :cond_b

    .line 385
    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 387
    :cond_b
    iget v13, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v14, v11, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    invoke-direct {p0, v13, v7, v14}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III)V

    goto/16 :goto_0

    .line 394
    .end local v6    # "lastFragment":Lcom/android/camera/fragment/BaseFragment;
    .end local v7    # "lastFragmentInfo":I
    .end local v9    # "pendingFragmentInfo":I
    .end local v11    # "replaceInfo":Lcom/android/camera/fragment/BaseFragmentOperation;
    :cond_c
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 440
    return-void

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;
    .locals 2
    .param p1, "isInit"    # Z
    .param p2, "fragmentId"    # I
    .param p3, "lastFragmentInfo"    # I
    .param p4, "baseLifecycleListener"    # Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    sparse-switch p2, :sswitch_data_0

    .line 582
    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    .line 583
    invoke-virtual {v0, p4}, Lcom/android/camera/fragment/BaseFragment;->setLifecycleListener(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 584
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    .line 585
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    .line 586
    return-object v0

    .line 519
    .restart local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 522
    :sswitch_1
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomAction;-><init>()V

    .line 523
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 526
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_2
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    .line 527
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 530
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_3
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    .line 531
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 534
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_4
    new-instance v0, Lcom/android/camera/fragment/FragmentFilter;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    .line 535
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 538
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_5
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    .line 539
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 542
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_6
    new-instance v0, Lcom/android/camera/fragment/FragmentBeauty;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBeauty;-><init>()V

    .line 543
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 546
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_7
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;-><init>()V

    .line 547
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 550
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_8
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeauty;-><init>()V

    .line 551
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 554
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_9
    new-instance v0, Lcom/android/camera/fragment/sticker/FragmentSticker;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/sticker/FragmentSticker;-><init>()V

    .line 555
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 558
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_a
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    .line 559
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 562
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_b
    new-instance v0, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupBeautyLevel;-><init>()V

    .line 563
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 566
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_c
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomPopupTips;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomPopupTips;-><init>()V

    .line 567
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 570
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_d
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    .line 571
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 574
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_e
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    .line 575
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 578
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    :sswitch_f
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualStereo;

    .end local v0    # "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualStereo;-><init>()V

    .line 579
    .local v0, "baseFragment":Lcom/android/camera/fragment/BaseFragment;
    goto :goto_0

    .line 516
    nop

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0xf1 -> :sswitch_1
        0xf3 -> :sswitch_2
        0xf4 -> :sswitch_3
        0xf7 -> :sswitch_5
        0xf9 -> :sswitch_8
        0xfa -> :sswitch_4
        0xfb -> :sswitch_6
        0xfc -> :sswitch_7
        0xff -> :sswitch_9
        0xff0 -> :sswitch_a
        0xff1 -> :sswitch_c
        0xff2 -> :sswitch_b
        0xff3 -> :sswitch_d
        0xff4 -> :sswitch_e
        0xff5 -> :sswitch_f
    .end sparse-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5
    .param p1, "originalFragments"    # Landroid/util/SparseIntArray;

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 196
    .local v2, "size":I
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    .line 197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private updateCurrentFragments(III)V
    .locals 3
    .param p1, "containerViewId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "fragmentInfo"    # I
    .param p3, "type"    # I

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 447
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    packed-switch p3, :pswitch_data_0

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 449
    :pswitch_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 450
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 454
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 455
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 456
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 463
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 464
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 462
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 471
    .end local v0    # "i":I
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 475
    :pswitch_4
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 476
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :pswitch_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 481
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_4

    .line 482
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 486
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 490
    .end local v0    # "i":I
    :pswitch_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 491
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_5

    .line 492
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 490
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public delegateEvent(I)V
    .locals 9
    .param p1, "event"    # I

    .prologue
    const v8, 0x7f0a00c3

    const v7, 0x7f0a00e8

    const/16 v6, 0xf1

    const v5, 0x7f0a00e9

    const v4, 0x7f0a00ea

    .line 597
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v1, "replaceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/fragment/BaseFragmentOperation;>;"
    packed-switch p1, :pswitch_data_0

    .line 691
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 692
    return-void

    .line 604
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    .line 605
    .local v0, "currentActiveFragment":I
    const/16 v2, 0xfa

    if-eq v0, v2, :cond_1

    .line 606
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    :goto_1
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 608
    :cond_1
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 614
    .end local v0    # "currentActiveFragment":I
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    .line 615
    .restart local v0    # "currentActiveFragment":I
    const/16 v2, 0xfb

    if-eq v0, v2, :cond_2

    .line 616
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfb

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    :cond_2
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 624
    .end local v0    # "currentActiveFragment":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v0

    .line 625
    .restart local v0    # "currentActiveFragment":I
    const/16 v2, 0xff

    if-eq v0, v2, :cond_3

    .line 626
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 629
    :cond_3
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff1

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 640
    .end local v0    # "currentActiveFragment":I
    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfc

    if-eq v2, v3, :cond_4

    .line 641
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xfc

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 643
    :cond_4
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 648
    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xff2

    if-eq v2, v3, :cond_5

    .line 649
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff2

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 651
    :cond_5
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 656
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xff3

    if-eq v2, v3, :cond_7

    .line 657
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    const v2, 0x7f0a00e5

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    const v2, 0x7f0a00e6

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_6

    .line 661
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_6
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const v2, 0x7f0a00e7

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 666
    :cond_7
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const v2, 0x7f0a00e5

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e5

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    const v2, 0x7f0a00e6

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e6

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v2

    if-nez v2, :cond_8

    .line 670
    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_8
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    const v2, 0x7f0a00e7

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->show(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 680
    :pswitch_6
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 681
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    const/16 v3, 0xff1

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 600
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
    .locals 4
    .param p1, "prefixCompletable"    # Lio/reactivex/Completable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "newMode"    # I
    .param p3, "needViewAnimation"    # Z
    .param p4, "baseLifecycleListener"    # Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_0

    .line 219
    return-object v3

    .line 224
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "blockingLifeCycles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 242
    .local v1, "resultAction":Lio/reactivex/functions/Action;
    if-eqz p4, :cond_1

    .line 244
    new-instance v1, Lcom/android/camera/fragment/BaseFragmentDelegate$1;

    .end local v1    # "resultAction":Lio/reactivex/functions/Action;
    invoke-direct {v1, p0, p4}, Lcom/android/camera/fragment/BaseFragmentDelegate$1;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2, p1, v1, p2, p3}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;IZ)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    return-object v2
.end method

.method public getActiveFragment(I)I
    .locals 3
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 696
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->currentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 697
    .local v1, "fragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    const/16 v2, 0xf0

    return v2

    .line 700
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 701
    .local v0, "fragmentInfo":I
    return v0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object v0
.end method

.method public getOriginalFragment(I)I
    .locals 3
    .param p1, "layoutId"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const/16 v2, 0xf0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 706
    .local v0, "fragmentInfo":I
    return v0
.end method

.method public init(Landroid/support/v4/app/FragmentManager;ILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 11
    .param p1, "supportFragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "initMode"    # I
    .param p3, "baseLifecycleListener"    # Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    .line 122
    const/4 v8, 0x1

    const/16 v9, 0xf4

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v6

    .line 126
    .local v6, "fragmentTopConfig":Lcom/android/camera/fragment/BaseFragment;
    const/4 v8, 0x1

    const/16 v9, 0xf7

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v4

    .line 128
    .local v4, "fragmentManually":Lcom/android/camera/fragment/BaseFragment;
    const/4 v8, 0x1

    const/16 v9, 0xff1

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    .line 130
    .local v2, "fragmentBottomPopupTips":Lcom/android/camera/fragment/BaseFragment;
    const/4 v8, 0x1

    const/16 v9, 0xf1

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v1

    .line 132
    .local v1, "fragmentBottomAction":Lcom/android/camera/fragment/BaseFragment;
    const/4 v8, 0x1

    const/16 v9, 0xf3

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    .line 134
    .local v3, "fragmentMainContent":Lcom/android/camera/fragment/BaseFragment;
    const/4 v8, 0x1

    const/16 v9, 0xff0

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    .line 136
    .local v5, "fragmentPanorama":Lcom/android/camera/fragment/BaseFragment;
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v7

    .line 137
    .local v7, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e8

    invoke-virtual {v7, v9, v2, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 138
    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00ea

    invoke-virtual {v7, v9, v1, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 139
    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e5

    invoke-virtual {v7, v9, v6, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 141
    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e6

    invoke-virtual {v7, v9, v4, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 142
    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00c3

    invoke-virtual {v7, v9, v3, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 143
    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e4

    invoke-virtual {v7, v9, v5, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 147
    const/4 v0, 0x0

    .line 149
    .local v0, "dualFragment":Lcom/android/camera/fragment/BaseFragment;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedOpticalZoom()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 150
    const/4 v8, 0x1

    const/16 v9, 0xff4

    const/16 v10, 0xf0

    invoke-direct {p0, v8, v9, v10, p3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZIILcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    .line 155
    .end local v0    # "dualFragment":Lcom/android/camera/fragment/BaseFragment;
    :goto_0
    if-eqz v0, :cond_1

    .line 156
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e7

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 158
    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a00e7

    invoke-virtual {v7, v9, v0, v8}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 164
    :goto_1
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e8

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00ea

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e5

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v9, 0x7f0a00e9

    const/16 v10, 0xf0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e6

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00c3

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    const v10, 0x7f0a00e4

    invoke-virtual {v8, v10, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v2}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 178
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v6}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 180
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v4}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v4}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 181
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 182
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v1}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v1}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 183
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 185
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    invoke-direct {p0, v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    .line 189
    invoke-virtual {v7}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 191
    invoke-interface {p3}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    .line 192
    return-void

    .line 151
    .restart local v0    # "dualFragment":Lcom/android/camera/fragment/BaseFragment;
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedStereo()Z

    move-result v8

    goto/16 :goto_0

    .line 160
    .end local v0    # "dualFragment":Lcom/android/camera/fragment/BaseFragment;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->originalFragments:Landroid/util/SparseIntArray;

    const v9, 0x7f0a00e7

    const/16 v10, 0xf0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_1
.end method

.method public registerProtocol()V
    .locals 2

    .prologue
    .line 97
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 98
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->animationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    .line 105
    return-void
.end method
