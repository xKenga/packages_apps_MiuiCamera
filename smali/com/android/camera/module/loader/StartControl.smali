.class public Lcom/android/camera/module/loader/StartControl;
.super Ljava/lang/Object;
.source "StartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/StartControl$ResetType;,
        Lcom/android/camera/module/loader/StartControl$StartDelay;
    }
.end annotation


# instance fields
.field public mLastMode:I

.field public mNeedBlurAnimation:Z

.field public mNeedReConfigureCamera:Z

.field public mNeedViewAnimation:Z

.field public mResetType:I

.field public mStartDelay:I

.field public mTargetMode:I


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "targetMode"    # I

    .prologue
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/loader/StartControl;->mStartDelay:I

    .line 75
    iput v1, p0, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    .line 79
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    .line 82
    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mTargetMode:I

    .line 83
    return-void
.end method

.method public static final create(I)Lcom/android/camera/module/loader/StartControl;
    .locals 1
    .param p0, "targetMode"    # I

    .prologue
    .line 96
    new-instance v0, Lcom/android/camera/module/loader/StartControl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/StartControl;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public setLastMode(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mLastMode:I

    .line 122
    return-object p0
.end method

.method public setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "needBlurAnimation"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedBlurAnimation:Z

    .line 117
    return-object p0
.end method

.method public setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "needReConfigureCamera"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedReConfigureCamera:Z

    .line 127
    return-object p0
.end method

.method public setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "needViewAnimation"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/camera/module/loader/StartControl;->mNeedViewAnimation:Z

    .line 112
    return-object p0
.end method

.method public setResetType(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "resetType"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mResetType:I

    .line 106
    return-object p0
.end method

.method public setStartDelay(I)Lcom/android/camera/module/loader/StartControl;
    .locals 0
    .param p1, "startDelay"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/camera/module/loader/StartControl;->mStartDelay:I

    .line 101
    return-object p0
.end method
