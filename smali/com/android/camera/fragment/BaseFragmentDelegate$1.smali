.class Lcom/android/camera/fragment/BaseFragmentDelegate$1;
.super Ljava/lang/Object;
.source "BaseFragmentDelegate.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/BaseFragmentDelegate;->delegateMode(Lio/reactivex/Completable;IZLcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/Disposable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/BaseFragmentDelegate;

.field final synthetic val$baseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/fragment/BaseFragmentDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$1;->this$0:Lcom/android/camera/fragment/BaseFragmentDelegate;

    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$1;->val$baseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate$1;->val$baseLifecycleListener:Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;

    invoke-interface {v0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    .line 251
    return-void
.end method
