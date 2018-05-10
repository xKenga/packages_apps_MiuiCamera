.class public Lcom/android/camera/animation/FragmentAnimationFactory;
.super Ljava/lang/Object;
.source "FragmentAnimationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs wrapperAnimation([I)Landroid/view/animation/Animation;
    .locals 13
    .param p0, "animationTypes"    # [I

    .prologue
    .line 16
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 18
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    array-length v12, p0

    move v11, v1

    :goto_0
    if-ge v11, v12, :cond_1

    aget v10, p0, v11

    .line 20
    .local v10, "animationType":I
    const/4 v0, 0x0

    .line 21
    .local v0, "animation":Landroid/view/animation/Animation;
    packed-switch v10, :pswitch_data_0

    .line 43
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 23
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 24
    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 27
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 23
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 46
    .local v0, "animation":Landroid/view/animation/Animation;
    :goto_1
    if-eqz v0, :cond_0

    .line 47
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    sget-object v1, Lcom/android/camera/animation/AnimationDelegate;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 18
    :cond_0
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    .line 30
    .local v0, "animation":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 31
    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 34
    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 30
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 35
    .local v0, "animation":Landroid/view/animation/Animation;
    goto :goto_1

    .line 37
    .local v0, "animation":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 38
    .local v0, "animation":Landroid/view/animation/Animation;
    goto :goto_1

    .line 40
    .local v0, "animation":Landroid/view/animation/Animation;
    :pswitch_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 41
    .local v0, "animation":Landroid/view/animation/Animation;
    goto :goto_1

    .line 55
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v10    # "animationType":I
    :cond_1
    return-object v9

    .line 21
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
