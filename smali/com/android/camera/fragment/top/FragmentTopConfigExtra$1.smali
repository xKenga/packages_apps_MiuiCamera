.class Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;
.super Ljava/lang/Object;
.source "FragmentTopConfigExtra.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->animateOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/top/FragmentTopConfigExtra;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v0}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    invoke-virtual {v1}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentUtils;->removeFragmentByTag(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Z

    .line 196
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopConfigExtra$1;->this$0:Lcom/android/camera/fragment/top/FragmentTopConfigExtra;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopConfigExtra;->setClickEnable(Z)V

    .line 191
    return-void
.end method
