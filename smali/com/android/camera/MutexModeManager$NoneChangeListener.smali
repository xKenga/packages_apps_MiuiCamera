.class Lcom/android/camera/MutexModeManager$NoneChangeListener;
.super Ljava/lang/Object;
.source "MutexModeManager.java"

# interfaces
.implements Lcom/android/camera/MutexModeManager$ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/MutexModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoneChangeListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/MutexModeManager$NoneChangeListener;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/camera/MutexModeManager$NoneChangeListener;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/MutexModeManager$NoneChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMutexModeChanged(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 41
    return-void
.end method
