.class Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;
.super Ljava/lang/Object;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableOnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/FlowableEmitter",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "e":Lio/reactivex/FlowableEmitter;, "Lio/reactivex/FlowableEmitter<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$2;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->-set1(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;Lio/reactivex/FlowableEmitter;)Lio/reactivex/FlowableEmitter;

    .line 72
    return-void
.end method
