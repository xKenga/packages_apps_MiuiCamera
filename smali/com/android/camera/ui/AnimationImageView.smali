.class public Lcom/android/camera/ui/AnimationImageView;
.super Lcom/android/camera/ui/RotateImageView;
.source "AnimationImageView.java"

# interfaces
.implements Lcom/android/camera/ui/AnimateView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# instance fields
.field private mIsEnable:Z

.field protected mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/AnimationImageView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/AnimationImageView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/AnimationImageView;->mIsEnable:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private initAnimation(Z)Landroid/view/animation/Animation;
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 71
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 76
    :goto_0
    return-object v0

    .line 73
    .local v0, "animation":Landroid/view/animation/Animation;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 74
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p0, v2}, Lcom/android/camera/ui/AnimationImageView$AnimationImageViewListener;-><init>(Lcom/android/camera/ui/AnimationImageView;Lcom/android/camera/ui/AnimationImageView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method


# virtual methods
.method public hide(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    .line 50
    invoke-direct {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/AnimationImageView;->clearAnimation()V

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->initAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AnimationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method
