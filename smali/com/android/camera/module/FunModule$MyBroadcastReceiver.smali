.class Lcom/android/camera/module/FunModule$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FunModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/FunModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/FunModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/FunModule;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$MyBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/FunModule;
    .param p2, "-this1"    # Lcom/android/camera/module/FunModule$MyBroadcastReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/FunModule;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 438
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    :cond_0
    return-void

    .line 442
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/storage/Storage;->isRelatedStorage(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 443
    return-void

    .line 445
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 447
    const-string/jumbo v0, "<unknown>"

    .line 449
    :cond_3
    invoke-static {}, Lcom/android/camera/module/FunModule;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 452
    invoke-static {}, Lcom/android/camera/storage/Storage;->isCurrentStorageIsSecondary()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 453
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchToPhoneStorage()V

    .line 454
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/module/FunModule;->-wrap4(Lcom/android/camera/module/FunModule;Z)V

    .line 475
    :cond_4
    :goto_0
    return-void

    .line 450
    :cond_5
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 458
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 459
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    goto :goto_0

    .line 450
    :cond_6
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 463
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto :goto_0

    .line 450
    :cond_7
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 469
    iget-object v1, p0, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;->this$0:Lcom/android/camera/module/FunModule;

    iget-object v1, v1, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    goto :goto_0
.end method
