.class Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;
.super Ljava/lang/Object;
.source "FragmentDualCameraAdjust.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 165
    .local v0, "ratio":I
    iget-object v1, p0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust$3;->this$0:Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->-wrap0(Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;IZ)V

    .line 166
    return-void
.end method
