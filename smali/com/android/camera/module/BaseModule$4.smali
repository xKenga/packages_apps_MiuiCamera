.class Lcom/android/camera/module/BaseModule$4;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/BaseModule;->initializeMutexMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/BaseModule;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$4;->this$0:Lcom/android/camera/module/BaseModule;

    .line 723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$4;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->exitMutexMode()V

    .line 727
    return-void
.end method
