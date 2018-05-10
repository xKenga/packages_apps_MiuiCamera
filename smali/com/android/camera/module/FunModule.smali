.class public Lcom/android/camera/module/FunModule;
.super Lcom/android/camera/module/BaseModule;
.source "FunModule.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterProtocol;
.implements Lcom/android/camera/protocol/ModeProtocol$StickerProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/FunModule$1;,
        Lcom/android/camera/module/FunModule$2;,
        Lcom/android/camera/module/FunModule$3;,
        Lcom/android/camera/module/FunModule$MainHandler;,
        Lcom/android/camera/module/FunModule$MyBroadcastReceiver;,
        Lcom/android/camera/module/FunModule$SaveVideoTask;,
        Lcom/android/camera/module/FunModule$StereoSwitchThread;
    }
.end annotation


# static fields
.field private static HOLD_WHEN_SAVING_VIDEO:Z

.field private static final SMART_BUTTON_ENABLE_DELAY:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isSmartShutterButtonEnable:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

.field private mContinuousFocusSupported:Z

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mFaceDetectionStarted:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusManagerSimple;

.field private mFocusStartTime:J

.field protected final mHandler:Landroid/os/Handler;

.field private mInStartingFocusRecording:Z

.field private mIsFromStop:Z

.field private mIsTouchFocused:Z

.field private mIsVideoCaptureIntent:Z

.field private mLastBackPressedTime:J

.field private mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mMaxVideoDurationInMs:I

.field private final mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

.field private volatile mMediaRecorderRecording:Z

.field private mMeteringAreaSupported:Z

.field private mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

.field private mOnResumeTime:J

.field private mOrientationCompensationAtRecordStart:I

.field private mOriginalMusicVolume:I

.field private mPendingSaveTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/module/FunModule$SaveVideoTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviewing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiverLock:Ljava/lang/Object;

.field private mRecordingStartTime:J

.field private mRequestStartTime:J

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mSnapshotInProgress:Z

.field private mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

.field private mSwitchingCamera:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchFocusStartingTime:J

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFocusMode:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/FunModule;)Lcom/android/camera/ui/V6CameraGLSurfaceView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/FunModule;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget v0, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/FunModule;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget v0, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/FunModule;)Lcom/android/camera/FocusManagerSimple;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/FunModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/module/FunModule;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/module/FunModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/camera/module/FunModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/module/FunModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/module/FunModule;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/module/FunModule;->mTouchFocusStartingTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/FunModule;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/module/FunModule;->isSmartShutterButtonEnable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/FunModule;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/module/FunModule;->mIsTouchFocused:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$StereoSwitchThread;)Lcom/android/camera/module/FunModule$StereoSwitchThread;
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "-value"    # Lcom/android/camera/module/FunModule$StereoSwitchThread;

    .prologue
    iput-object p1, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/camera/module/FunModule;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/FunModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->isSelectingCapturedVideo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JZ)Ljava/lang/String;
    .locals 2
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/camera/module/FunModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->onPreviewStart()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/module/FunModule;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "sync"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/module/FunModule;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "postOne"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->resizeForPreviewAspectRatio()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->restoreMusicSound()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/module/FunModule;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/FunModule;->setVideoFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/module/FunModule;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/FunModule;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->switchCamera()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/android/camera/module/FunModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    .line 141
    invoke-static {}, Lcom/android/camera/Device;->useLongDelayToEnableVideoStop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x320

    :goto_0
    sput v0, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/module/FunModule;->HOLD_WHEN_SAVING_VIDEO:Z

    .line 108
    return-void

    .line 141
    :cond_0
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/camera/module/BaseModule;-><init>()V

    .line 150
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mSnapshotInProgress:Z

    .line 171
    iput-wide v4, p0, Lcom/android/camera/module/FunModule;->mLastBackPressedTime:J

    .line 174
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    .line 205
    new-instance v0, Lcom/android/camera/module/FunModule$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/module/FunModule$MainHandler;-><init>(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$MainHandler;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    .line 215
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    .line 217
    iput-wide v4, p0, Lcom/android/camera/module/FunModule;->mTouchFocusStartingTime:J

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->isSmartShutterButtonEnable:Z

    .line 223
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mFaceDetectionStarted:Z

    .line 421
    new-instance v0, Lcom/android/camera/module/FunModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/FunModule$1;-><init>(Lcom/android/camera/module/FunModule;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 432
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    .line 433
    iput-object v2, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 722
    new-instance v0, Lcom/android/camera/module/FunModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/FunModule$2;-><init>(Lcom/android/camera/module/FunModule;)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    .line 2560
    new-instance v0, Lcom/android/camera/module/FunModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/module/FunModule$3;-><init>(Lcom/android/camera/module/FunModule;)V

    .line 2559
    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    .line 108
    return-void
.end method

.method private animateHold()V
    .locals 2

    .prologue
    .line 1743
    sget-boolean v0, Lcom/android/camera/module/FunModule;->HOLD_WHEN_SAVING_VIDEO:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->animateHold(I)V

    .line 1746
    :cond_0
    return-void
.end method

.method private autoFocus(IIIIII)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "focusWidth"    # I
    .param p5, "focusHeight"    # I
    .param p6, "focusType"    # I

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 2296
    return-void

    .line 2298
    :cond_0
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoFocus focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2300
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    .line 2299
    if-eqz v0, :cond_6

    .line 2301
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2302
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->cancelAutoFocus()V

    .line 2304
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2305
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->focusPoint()V

    .line 2307
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 2308
    sget-object v0, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2309
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getFocusArea(IIII)Ljava/util/List;

    move-result-object v2

    .line 2308
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2312
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p6, v0, :cond_4

    .line 2313
    sget-object v0, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2314
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/android/camera/FocusManagerSimple;->getMeteringsArea(IIII)Ljava/util/List;

    move-result-object v2

    .line 2313
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2316
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    .line 2318
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewPosition(III)V

    .line 2319
    const/4 v0, 0x3

    if-ne p6, v0, :cond_5

    .line 2320
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    .line 2322
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2324
    :cond_6
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2266
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2267
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->cancelAutoFocus()V

    .line 2268
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2269
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 2270
    return-void

    .line 2273
    :cond_0
    sget-object v2, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 2279
    .local v1, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "auto"

    .line 2280
    .local v0, "focusMode":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2281
    sget-object v2, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2282
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateAutoFocusMoveCallback()V

    .line 2285
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-eqz v2, :cond_2

    .line 2286
    sget-object v2, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2288
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    if-eqz v2, :cond_3

    .line 2289
    sget-object v2, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/hardware/CameraHardwareProxy;->setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V

    .line 2291
    :cond_3
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2292
    return-void
.end method

.method private checkCallingState()Z
    .locals 3

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 2420
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    const v1, 0x7f0f0207

    .line 2421
    const v2, 0x7f0f0208

    .line 2420
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 2422
    const/4 v0, 0x0

    return v0

    .line 2424
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private cleanupEmptyFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1240
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1241
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1242
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    .line 1247
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2362
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2364
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2368
    :goto_0
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2370
    :cond_0
    return-void

    .line 2365
    :catch_0
    move-exception v0

    .line 2366
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 2355
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2356
    const-string/jumbo v0, ".mp4"

    return-object v0

    .line 2358
    :cond_0
    const-string/jumbo v0, ".3gp"

    return-object v0
.end method

.method public static convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p0, "outputFileFormat"    # I

    .prologue
    .line 2348
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 2349
    const-string/jumbo v0, "video/mp4"

    return-object v0

    .line 2351
    :cond_0
    const-string/jumbo v0, "video/3gpp"

    return-object v0
.end method

.method private convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 1251
    const/4 v0, 0x0

    return-object v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .param p1, "dateTaken"    # J

    .prologue
    .line 479
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 481
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0f00f0

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 482
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1405
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1407
    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1408
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-static {v0, v1, v1}, Lcom/android/camera/Util;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1410
    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1413
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1414
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1417
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteVideoFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1420
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fail to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1226
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1228
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1229
    const/4 v0, -0x1

    .line 1230
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1231
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1235
    :goto_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1236
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->finish()V

    .line 1237
    return-void

    .line 1233
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 14
    .param p1, "outputFileFormat"    # I

    .prologue
    const-wide/16 v12, 0x0

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1341
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/FunModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1343
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/camera/module/FunModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1344
    .local v2, "filename":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/camera/module/FunModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1345
    .local v4, "mime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1346
    .local v5, "path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1347
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1348
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1351
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "resolution"

    .line 1354
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1353
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1356
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-nez v8, :cond_0

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    .line 1357
    :cond_0
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1358
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1360
    :cond_1
    iput-object v7, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    .line 1361
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-void
.end method

.method private getDesiredPreviewSize()V
    .locals 10

    .prologue
    .line 777
    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v6, :cond_0

    .line 778
    return-void

    .line 780
    :cond_0
    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v6}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 782
    sget-object v6, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    .line 783
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 784
    .local v2, "preferred":Landroid/hardware/Camera$Size;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iget v7, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int v3, v6, v7

    .line 785
    .local v3, "product":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 787
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 788
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 789
    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    iget v7, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    if-le v6, v3, :cond_1

    .line 790
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 797
    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    iget v8, p0, Lcom/android/camera/module/FunModule;->mModuleIndex:I

    iget v9, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    .line 798
    iget v6, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const-wide v6, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 797
    :goto_1
    invoke-static {v8, v9, v5, v6, v7}, Lcom/android/camera/Util;->getOptimalPreviewSize(IILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 799
    .local v1, "optimalSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_3

    .line 800
    iget v6, v1, Landroid/hardware/Camera$Size;->width:I

    iput v6, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    .line 801
    iget v6, v1, Landroid/hardware/Camera$Size;->height:I

    iput v6, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    .line 803
    :cond_3
    sget-object v6, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previewSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return-void

    .line 798
    .end local v1    # "optimalSize":Landroid/hardware/Camera$Size;
    :cond_4
    const-wide v6, 0x3ff5555555555555L    # 1.3333333333333333

    goto :goto_1
.end method

.method private hideAlert()V
    .locals 3

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->hideReviewViews()V

    .line 1681
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 1684
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 1685
    const/16 v2, 0xa0

    .line 1684
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 1687
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    const/4 v1, 0x6

    .line 1686
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 1688
    return-void
.end method

.method private initializeCapabilities()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2035
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_1

    .line 2036
    const-string/jumbo v0, "auto"

    .line 2037
    sget-object v2, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v2

    .line 2036
    invoke-static {v0, v2}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 2035
    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    .line 2038
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    .line 2039
    const-string/jumbo v0, "continuous-video"

    .line 2040
    sget-object v1, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v1

    .line 2039
    invoke-static {v0, v1}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mContinuousFocusSupported:Z

    .line 2041
    return-void

    :cond_1
    move v0, v1

    .line 2035
    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 8

    .prologue
    .line 2021
    iget v3, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    iget v4, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    invoke-static {v3, v4}, Lcom/android/camera/Util;->getDisplayOrientation(II)I

    move-result v1

    .line 2022
    .local v1, "orientation":I
    new-instance v4, Lcom/android/camera/FocusManagerSimple;

    .line 2023
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v5

    .line 2024
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v6

    .line 2025
    iget v3, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v7

    if-ne v3, v7, :cond_0

    const/4 v3, 0x1

    .line 2022
    :goto_0
    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/camera/FocusManagerSimple;-><init>(IIZI)V

    iput-object v4, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 2027
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2028
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 2029
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2030
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 2031
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 2032
    return-void

    .line 2025
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "point":Landroid/graphics/Point;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 12

    .prologue
    .line 1256
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "initializeRecorder"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v7, :cond_0

    .line 1258
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "initializeRecorder: null camera"

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-void

    .line 1262
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->closeVideoFileDescriptor()V

    .line 1264
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1265
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 1267
    .local v4, "myExtras":Landroid/os/Bundle;
    iget-boolean v7, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    .line 1268
    const-string/jumbo v7, "output"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 1269
    .local v6, "saveUri":Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 1271
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "rw"

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1272
    iput-object v6, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1281
    .end local v6    # "saveUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v7, :cond_3

    .line 1282
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/camera/module/FunModule;->convertToFilePath(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v5

    .line 1288
    .local v5, "path":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    .line 1289
    new-instance v7, Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-direct {v7, v5}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 1290
    new-instance v7, Lcom/android/camera/module/encoder/MediaVideoEncoder;

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    iget v10, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    iget v11, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/camera/module/encoder/MediaVideoEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;II)V

    .line 1291
    new-instance v7, Lcom/android/camera/module/encoder/MediaAudioEncoder;

    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mMediaEncoderListener:Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v7, v8, v9}, Lcom/android/camera/module/encoder/MediaAudioEncoder;-><init>(Lcom/android/camera/module/encoder/MediaMuxerWrapper;Lcom/android/camera/module/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 1292
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v7}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1298
    :goto_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1300
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1301
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v7

    .line 1302
    const-string/jumbo v8, "pref_audio_focus_key"

    .line 1303
    const v9, 0x7f0f01dd

    invoke-virtual {p0, v9}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1301
    invoke-virtual {v7, v8, v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "audioFocus":Ljava/lang/String;
    :goto_3
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "set AudioParam camcorder_mode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "camcorder_mode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1312
    .end local v0    # "audioFocus":Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v7, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iget v8, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    invoke-virtual {v7, v8}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 1314
    iget v7, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    iput v7, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensationAtRecordStart:I

    .line 1315
    return-void

    .line 1273
    .end local v5    # "path":Ljava/lang/String;
    .restart local v6    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1275
    .local v2, "ex":Ljava/io/FileNotFoundException;
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1284
    .end local v2    # "ex":Ljava/io/FileNotFoundException;
    .end local v6    # "saveUri":Landroid/net/Uri;
    :cond_3
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/camera/module/FunModule;->generateVideoFilename(I)V

    .line 1285
    iget-object v5, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    .restart local v5    # "path":Ljava/lang/String;
    goto/16 :goto_1

    .line 1293
    :catch_1
    move-exception v1

    .line 1294
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1306
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const v7, 0x7f0f01e3

    invoke-virtual {p0, v7}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "audioFocus":Ljava/lang/String;
    goto :goto_3
.end method

.method private isSelectingCapturedVideo()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 559
    return v3

    .line 563
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 564
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    const v1, 0x7f0a00ea

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    .line 565
    const/16 v2, 0xff3

    .line 564
    if-eq v1, v2, :cond_1

    .line 566
    return v3

    .line 569
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1803
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1804
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1805
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1799
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 1808
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 1809
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 1810
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 1811
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 1812
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 1814
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1817
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 1818
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 1819
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1821
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1823
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1827
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 1828
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1830
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1831
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1834
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 1835
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1837
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1840
    if-eqz p2, :cond_5

    .line 1841
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1842
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 1843
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 1844
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1846
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1849
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStart()V
    .locals 5
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x1

    .line 1145
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateModuleChangeAfter()V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 1148
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1151
    invoke-virtual {p0, v1}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 1152
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonFocus(ZI)V

    .line 1154
    :cond_0
    return-void
.end method

.method private onSettingsBack()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 1133
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 1134
    .local v0, "cm":Lcom/android/camera/ChangeManager;
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1135
    invoke-virtual {v0, v3}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1136
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->restorePreferences()V

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1137
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->check(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    invoke-virtual {v0, v2}, Lcom/android/camera/ChangeManager;->clear(I)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method private onStopVideoRecording(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopVideoRecording()V

    .line 599
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 600
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    .line 602
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->cancelAutoFocus()V

    .line 604
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    .line 606
    :cond_0
    const-string/jumbo v1, "continuous-video"

    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->setVideoFocusMode(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private postPendingSaveTask(Z)V
    .locals 4
    .param p1, "postOne"    # Z

    .prologue
    .line 1446
    monitor-enter p0

    .line 1447
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1448
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/FunModule$SaveVideoTask;

    .line 1449
    .local v0, "task":Lcom/android/camera/module/FunModule$SaveVideoTask;
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postPendingSaveTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    iget-object v2, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/module/FunModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/storage/ImageSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1451
    if-eqz p1, :cond_0

    .end local v0    # "task":Lcom/android/camera/module/FunModule$SaveVideoTask;
    :cond_1
    monitor-exit p0

    .line 1456
    return-void

    .line 1446
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private prepareUIByPreviewSize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 807
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 808
    iput v3, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    .line 809
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x1

    .line 812
    .local v0, "uiStyle":I
    iget v1, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    if-eq v3, v1, :cond_1

    .line 813
    iput v3, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    .line 816
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 817
    iget v1, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    if-ne v1, v3, :cond_2

    const v1, 0x3fe38e39

    .line 816
    :goto_0
    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    .line 818
    return-void

    .line 817
    :cond_2
    const v1, 0x3faaaaab

    goto :goto_0
.end method

.method private releaseLastMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1318
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseLastMediaRecorder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->join()V

    .line 1321
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 1323
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 5

    .prologue
    const v4, 0x7f0f01dd

    const/4 v3, 0x0

    .line 1326
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseMediaRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mLastMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 1329
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->cleanupEmptyFile()V

    .line 1330
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    .line 1332
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1333
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restore AudioParam camcorder_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "camcorder_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1336
    :cond_1
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    .line 1337
    return-void
.end method

.method private releaseResources()V
    .locals 1

    .prologue
    .line 2429
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    .line 2430
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    .line 2431
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseLastMediaRecorder()V

    .line 2432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    .line 2433
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 821
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataContainer;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 822
    .local v1, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 825
    .local v0, "degrees":I
    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_0

    .line 826
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 827
    iget v3, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 826
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    .line 832
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 830
    iget v3, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 829
    invoke-interface {v2, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setPreviewAspectRatio(F)V

    goto :goto_0
.end method

.method private restoreMusicSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 2551
    iget v0, p0, Lcom/android/camera/module/FunModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2552
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2554
    :cond_0
    iput v1, p0, Lcom/android/camera/module/FunModule;->mOriginalMusicVolume:I

    .line 2555
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2556
    return-void
.end method

.method private restorePreferences()V
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->setZoomValue(I)V

    .line 2048
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    .line 2049
    return-void
.end method

.method private setVideoFocusMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2258
    iput-object p1, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2259
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2260
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateVideoFocusMode()V

    .line 2261
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2263
    :cond_0
    return-void
.end method

.method private setVideoSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 988
    iget v0, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 989
    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    .line 990
    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    .line 995
    :goto_0
    return-void

    .line 992
    :cond_0
    iput p2, p0, Lcom/android/camera/module/FunModule;->mVideoWidth:I

    .line 993
    iput p1, p0, Lcom/android/camera/module/FunModule;->mVideoHeight:I

    goto :goto_0
.end method

.method private showFirstUseHintIfNeeded()V
    .locals 5

    .prologue
    .line 2140
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 2142
    .local v0, "pref":Lcom/android/camera/data/data/global/DataItemGlobal;
    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x13

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2146
    :cond_0
    return-void
.end method

.method private silenceSounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 2531
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    .line 2535
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    .line 2536
    const/4 v1, 0x2

    .line 2535
    invoke-virtual {v0, v3, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2541
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/FunModule;->mOriginalMusicVolume:I

    .line 2542
    iget v0, p0, Lcom/android/camera/module/FunModule;->mOriginalMusicVolume:I

    if-eqz v0, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 2545
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2548
    :cond_1
    return-void
.end method

.method private startFaceDetection()V
    .locals 2

    .prologue
    .line 1034
    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1035
    return-void

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1038
    :cond_1
    return-void

    .line 1041
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_4

    .line 1042
    :cond_3
    return-void

    .line 1041
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mObjectTrackingStarted:Z

    if-nez v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_5

    .line 1046
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startFaceDetection()V

    .line 1048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFaceDetectionStarted:Z

    .line 1050
    :cond_5
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string/jumbo v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 543
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2, v1}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startVideoRecording()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1526
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    iput-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1529
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->silenceSounds()V

    .line 1530
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->prepareRecording()V

    .line 1531
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startRecordVideo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1532
    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 1533
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1534
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->restoreMusicSound()V

    .line 1536
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1537
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    .line 1538
    return v6

    .line 1540
    .end local v0    # "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/module/FunModule;->isSmartShutterButtonEnable:Z

    .line 1541
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/camera/module/FunModule;->SMART_BUTTON_ENABLE_DELAY:I

    int-to-long v2, v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1542
    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 1545
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startVideoRecording process done"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1551
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.camera.action.start_video_recording"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1552
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    .line 1553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mRecordingStartTime:J

    .line 1554
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1555
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "listen call state"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateRecordingTime()V

    .line 1558
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->keepScreenOn()V

    .line 1559
    invoke-virtual {p0, v5, v6}, Lcom/android/camera/module/FunModule;->trackGeneralInfo(IZ)V

    .line 1561
    return v5
.end method

.method private stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1053
    invoke-static {}, Lcom/android/camera/Device;->supportFaceDetectionInVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1054
    return-void

    .line 1057
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_2

    .line 1058
    :cond_1
    return-void

    .line 1060
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_3

    .line 1061
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopFaceDetection()V

    .line 1063
    iput-boolean v2, p0, Lcom/android/camera/module/FunModule;->mFaceDetectionStarted:Z

    .line 1065
    :cond_3
    return-void
.end method

.method private stopVideoRecording()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1565
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-nez v2, :cond_0

    .line 1566
    return-void

    .line 1568
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v2, :cond_1

    .line 1569
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->playCameraSound(I)V

    .line 1572
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.camera.action.stop_video_recording"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1573
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1574
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "listen none"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->animateHold()V

    .line 1580
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_2

    .line 1581
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 1584
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v2}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1588
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 1589
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updateLoading(Z)V

    .line 1591
    new-instance v1, Lcom/android/camera/module/FunModule$SaveVideoTask;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/camera/module/FunModule$SaveVideoTask;-><init>(Lcom/android/camera/module/FunModule;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1592
    .local v1, "task":Lcom/android/camera/module/FunModule$SaveVideoTask;
    monitor-enter p0

    .line 1593
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mPendingSaveTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1595
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    .line 1596
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1597
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->restoreMusicSound()V

    .line 1598
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->keepScreenOnAwhile()V

    .line 1599
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    .line 1600
    return-void

    .line 1592
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private switchCamera()V
    .locals 2

    .prologue
    .line 2099
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2100
    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchCamera(I)V

    .line 2103
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 2

    .prologue
    .line 2373
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2375
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 2380
    :cond_0
    :goto_0
    return-void

    .line 2377
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method private updateMotionFocusManager()V
    .locals 3

    .prologue
    .line 2006
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    .line 2007
    const-string/jumbo v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2006
    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setFocusSensorEnabled(Z)V

    .line 2008
    return-void
.end method

.method private updateParametersAfterRecording()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 701
    :cond_0
    return-void

    .line 703
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 705
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "videoStabilization=off"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 707
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 708
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 711
    :cond_2
    return-void
.end method

.method private updateRecordingTime()V
    .locals 6

    .prologue
    .line 1853
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1854
    return-void

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 1858
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1861
    :cond_1
    new-instance v0, Lcom/android/camera/module/FunModule$4;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/FunModule$4;-><init>(Lcom/android/camera/module/FunModule;JJ)V

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    .line 1877
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 1894
    return-void
.end method

.method private updateShaderEffect()V
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v0

    .line 286
    .local v0, "effect":I
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shaderEffect: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 288
    return-void
.end method

.method private updateStereoSettings(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 2516
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2517
    if-eqz p1, :cond_1

    .line 2518
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 2519
    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "off"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 2518
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2521
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    goto :goto_0
.end method

.method private updateVideoFocusMode()V
    .locals 4

    .prologue
    .line 1897
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 1898
    :cond_0
    return-void

    .line 1901
    :cond_1
    sget-object v1, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v0

    .line 1903
    .local v0, "supportedFocusMode":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1904
    const-string/jumbo v1, "continuous-video"

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1905
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    .line 1906
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v1}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1910
    :goto_0
    sget-object v1, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/hardware/CameraHardwareProxy;->setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 1911
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateMotionFocusManager()V

    .line 1912
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateAutoFocusMoveCallback()V

    .line 1914
    :cond_2
    return-void

    .line 1908
    :cond_3
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    goto :goto_0
.end method

.method private waitStereoSwitchThread()V
    .locals 3

    .prologue
    .line 2505
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

    if-eqz v1, :cond_0

    .line 2506
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/FunModule$StereoSwitchThread;->cancel()V

    .line 2507
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

    invoke-virtual {v1}, Lcom/android/camera/module/FunModule$StereoSwitchThread;->join()V

    .line 2508
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    :cond_0
    :goto_0
    return-void

    .line 2510
    :catch_0
    move-exception v0

    .line 2511
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected animateSwitchCamera()V
    .locals 4

    .prologue
    .line 2160
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2161
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2168
    :goto_0
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 2166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    goto :goto_0
.end method

.method public checkDisplayOrientation()V
    .locals 2

    .prologue
    .line 978
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->checkDisplayOrientation()V

    .line 979
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusManagerSimple;->setDisplayOrientation(I)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 983
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 985
    :cond_1
    return-void
.end method

.method public closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1079
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iput-boolean v3, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    .line 1081
    iput-boolean v3, p0, Lcom/android/camera/module/FunModule;->mSnapshotInProgress:Z

    .line 1082
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 1084
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1085
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->removeAllAsyncMessage()V

    .line 1086
    iput-object v2, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 1088
    :cond_0
    return-void
.end method

.method protected enterMutexMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2201
    invoke-virtual {p0, v3}, Lcom/android/camera/module/FunModule;->setZoomValue(I)V

    .line 2203
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 2204
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v4, v1, v2

    .line 2205
    const-string/jumbo v2, "pref_camera_coloreffect_key"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 2203
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/SettingsOverrider;->overrideSettings([Ljava/lang/String;)V

    .line 2207
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    .line 2208
    return-void
.end method

.method protected exitMutexMode()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    invoke-virtual {v0}, Lcom/android/camera/preferences/SettingsOverrider;->restoreSettings()Z

    .line 2212
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    .line 2213
    return-void
.end method

.method protected getCameraRotation()I
    .locals 2

    .prologue
    .line 610
    iget v0, p0, Lcom/android/camera/module/FunModule;->mOrientationCompensation:I

    iget v1, p0, Lcom/android/camera/module/FunModule;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 2415
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    return v0
.end method

.method public isCaptureIntent()Z
    .locals 1

    .prologue
    .line 2461
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public isDoingAction()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 2394
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMeteringAreaSupported:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 2389
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isVideoRecording()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsFromStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 1521
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1522
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1520
    :goto_0
    return v0

    .line 1521
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyError()V
    .locals 1

    .prologue
    .line 2436
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->notifyError()V

    .line 2438
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2439
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 2440
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2441
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    .line 2444
    :cond_0
    return-void
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x2

    .line 2328
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2329
    :cond_0
    return-void

    .line 2332
    :cond_1
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "autoFocusTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/FunModule;->mFocusStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2333
    const-string/jumbo v3, "ms focused="

    .line 2332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2333
    const-string/jumbo v3, " waitForRecording="

    .line 2332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2333
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v3}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v3

    .line 2332
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isFocusingSnapOnFinish()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    .line 2336
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->record()V

    .line 2338
    :cond_2
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 2339
    if-eqz p1, :cond_4

    move v0, v1

    .line 2338
    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    .line 2340
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isNeedMute()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsTouchFocused:Z

    if-eqz v0, :cond_3

    .line 2341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->playCameraSound(I)V

    .line 2343
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManagerSimple;->onAutoFocus(Z)V

    .line 2344
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 2345
    return-void

    .line 2339
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "moving"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v1, 0x2

    .line 2399
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAutoFocusMoving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2400
    if-eqz v0, :cond_0

    .line 2401
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    .line 2403
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 2404
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 2403
    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->showIndicator(II)V

    .line 2408
    :cond_0
    return-void

    .line 2405
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->isFocusSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2406
    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1100
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1101
    return v6

    .line 1104
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1105
    return v7

    .line 1108
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mStereoSwitchThread:Lcom/android/camera/module/FunModule$StereoSwitchThread;

    if-eqz v2, :cond_2

    .line 1109
    return v6

    .line 1113
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_4

    .line 1114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1115
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/camera/module/FunModule;->mLastBackPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1116
    iput-wide v0, p0, Lcom/android/camera/module/FunModule;->mLastBackPressedTime:J

    .line 1117
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0f0156

    invoke-virtual {p0, v3}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1122
    :goto_0
    return v7

    .line 1120
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 1125
    .end local v0    # "now":J
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1126
    return v7

    .line 1129
    :cond_5
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onBackPressed()Z

    move-result v2

    return v2
.end method

.method protected onCameraOpened()V
    .locals 0

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeFocusManager()V

    .line 512
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeCapabilities()V

    .line 515
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->prepareUIByPreviewSize()V

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 521
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoParametersPreference()V

    .line 524
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->resizeForPreviewAspectRatio()V

    .line 525
    return-void
.end method

.method public onCameraPickerClicked(I)Z
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2078
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2079
    :cond_0
    return v3

    .line 2078
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    if-nez v0, :cond_0

    .line 2082
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to copy texture."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    invoke-static {}, Lcom/android/camera/Device;->isMDPRender()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2086
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCopyTexture()V

    .line 2091
    :goto_0
    iput p1, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    .line 2093
    invoke-virtual {p0, v3}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 2094
    iput-boolean v2, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    .line 2095
    return v2

    .line 2088
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 2089
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCameraSwitched()V
    .locals 2

    .prologue
    .line 2120
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onCameraOpened()V

    .line 2121
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeCapabilities()V

    .line 2122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    .line 2123
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 2124
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoParametersPreference()V

    .line 2125
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 2126
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->onPreviewStart()V

    .line 2128
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->initializeFocusView(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 2131
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeZoom()V

    .line 2132
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeExposureCompensation()V

    .line 2133
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    .line 2135
    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    .line 2136
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2137
    return-void
.end method

.method public onCreate(II)V
    .locals 2
    .param p1, "moduleIndex"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 487
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onCreate(II)V

    .line 488
    invoke-static {}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences()V

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetRestoreFlag()V

    .line 492
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->changeConflictPreference()V

    .line 493
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isVideoCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    .line 495
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorStateManager;->setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    .line 498
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 502
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onCameraOpened()V

    .line 505
    const-string/jumbo v0, "continuous-video"

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    .line 507
    return-void
.end method

.method public onFilterChanged(II)V
    .locals 1
    .param p1, "category"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    .line 270
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->updateEffectViewVisible()V

    .line 271
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1159
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1160
    return v1

    .line 1163
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1196
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1166
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreBottom()V

    .line 1168
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1169
    return v1

    .line 1171
    :cond_2
    invoke-static {p2}, Lcom/android/camera/Util;->isFingerPrintKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1172
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFingerprintCaptureEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1173
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    .line 1178
    :cond_3
    :goto_0
    return v1

    .line 1176
    :cond_4
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    goto :goto_0

    .line 1186
    :sswitch_1
    const/16 v2, 0x18

    if-eq p1, v2, :cond_6

    .line 1187
    const/16 v2, 0x58

    if-ne p1, v2, :cond_5

    move v0, v1

    .line 1188
    :cond_5
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 1185
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/FunModule;->handleVolumeKeyEvent(ZZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    return v1

    :cond_6
    move v0, v1

    .line 1186
    goto :goto_1

    .line 1163
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1210
    sparse-switch p1, :sswitch_data_0

    .line 1222
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 1213
    :sswitch_0
    return v3

    .line 1217
    :sswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xab

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1218
    .local v0, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromKeyBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    return v3

    .line 1210
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 897
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onPause()V

    .line 902
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    return-void

    .line 906
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopFaceDetection()V

    .line 907
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->waitStereoSwitchThread()V

    .line 908
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_3

    .line 910
    invoke-direct {p0, v5}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 911
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->closeCamera()V

    .line 920
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    .line 928
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->closeVideoFileDescriptor()V

    .line 931
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 932
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 934
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    .line 937
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSensorStateManager()Lcom/android/camera/SensorStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 938
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 950
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isStereoModeOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 954
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    .line 955
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    .line 956
    return-void

    .line 913
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    .line 914
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 913
    goto :goto_1

    .line 916
    :cond_5
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public onPreviewLayoutChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 249
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreviewLayoutChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->onLayoutChange(Landroid/graphics/Rect;)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    .line 253
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getRenderWidth()I

    move-result v1

    .line 254
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getRenderHeight()I

    move-result v2

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setRenderSize(II)V

    .line 255
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 257
    :cond_0
    return-void
.end method

.method public onPreviewSizeChanged(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 261
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "onPreviewSizeChanged: %dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/FocusManagerSimple;->setPreviewSize(II)V

    .line 265
    :cond_0
    return-void
.end method

.method public onPreviewTextureCopied(Lcom/android/camera/CameraScreenNail$CopyReason;)V
    .locals 2
    .param p1, "reason"    # Lcom/android/camera/CameraScreenNail$CopyReason;

    .prologue
    .line 2152
    sget-object v0, Lcom/android/camera/CameraScreenNail$CopyReason;->CAMERA_SWITCH:Lcom/android/camera/CameraScreenNail$CopyReason;

    if-ne p1, v0, :cond_0

    .line 2153
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->animateSwitchCamera()V

    .line 2154
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2156
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 836
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onResume()V

    .line 837
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    return-void

    .line 840
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mOpenCameraFail:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisabled:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/permission/PermissionManager;->checkCameraLaunchPermissions()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 841
    :cond_1
    return-void

    .line 844
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->showFirstUseHintIfNeeded()V

    .line 845
    invoke-direct {p0, v4}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    .line 847
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    if-eqz v1, :cond_4

    .line 848
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 849
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 850
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mWaitForRelease:Z

    .line 854
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeZoom()V

    .line 855
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->initializeExposureCompensation()V

    .line 856
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->keepScreenOnAwhile()V

    .line 860
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 862
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 865
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v2

    .line 867
    :try_start_0
    new-instance v1, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/camera/module/FunModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/module/FunModule;Lcom/android/camera/module/FunModule$MyBroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 868
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 871
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_5

    .line 872
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailUpdater;->getLastThumbnail()V

    .line 875
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->onSettingsBack()V

    .line 877
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v1, :cond_6

    .line 878
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mOnResumeTime:J

    .line 879
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 882
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 883
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v5}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 884
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 885
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    .line 886
    return-void

    .line 866
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onReviewCancelClicked()V
    .locals 2
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 586
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->isSelectingCapturedVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->deleteCurrentVideo()V

    .line 588
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->hideAlert()V

    .line 593
    :goto_0
    return-void

    .line 590
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 591
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->doReturnToCaller(Z)V

    goto :goto_0
.end method

.method public onReviewDoneClicked()V
    .locals 1
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->doReturnToCaller(Z)V

    .line 581
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 3

    .prologue
    .line 2054
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2055
    return-void

    .line 2059
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 2060
    return-void

    .line 2063
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->readVideoPreferences()V

    .line 2065
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 2066
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    if-ne v1, v2, :cond_2

    .line 2067
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    if-eq v1, v2, :cond_3

    .line 2068
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->stopPreview()V

    .line 2069
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->resizeForPreviewAspectRatio()V

    .line 2070
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->startPreview()V

    .line 2074
    :goto_0
    return-void

    .line 2072
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setCameraParameters()V

    goto :goto_0
.end method

.method public onShutterButtonClick(I)V
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 637
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onShutterButtonClick switchingCamera="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 638
    const-string/jumbo v4, " isRecording="

    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 638
    iget-boolean v4, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 639
    const-string/jumbo v4, " inStartingFocusRecording="

    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 639
    iget-boolean v4, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->isSmartShutterButtonEnable:Z

    if-nez v2, :cond_0

    .line 641
    return-void

    .line 644
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    .line 645
    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-nez v2, :cond_2

    .line 646
    :cond_1
    return-void

    .line 649
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 650
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 651
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 654
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    .line 655
    .local v1, "stop":Z
    if-eqz v1, :cond_4

    .line 656
    invoke-direct {p0, v5}, Lcom/android/camera/module/FunModule;->onStopVideoRecording(Z)V

    .line 657
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateParametersAfterRecording()V

    .line 682
    :goto_0
    return-void

    .line 659
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->checkCallingState()Z

    move-result v2

    if-nez v2, :cond_5

    .line 660
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    .line 661
    return-void

    .line 663
    :cond_5
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 664
    invoke-static {}, Lcom/android/camera/storage/Storage;->isLowStorageAtLastPoint()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 665
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "storage issue, ignore the start request"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFailed()V

    .line 667
    return-void

    .line 669
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/camera/module/FunModule;->setTriggerMode(I)V

    .line 670
    invoke-virtual {p0, v5}, Lcom/android/camera/module/FunModule;->enableCameraControls(Z)V

    .line 672
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/FunModule;->playCameraSound(I)V

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mRequestStartTime:J

    .line 675
    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->canRecord()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 676
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->record()V

    goto :goto_0

    .line 678
    :cond_7
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "wait for autoFocus"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    goto :goto_0
.end method

.method public onShutterButtonFocus(ZI)V
    .locals 7
    .param p1, "pressed"    # Z
    .param p2, "from"    # I

    .prologue
    const/4 v3, 0x7

    .line 615
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onShutterButtonFocus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v2}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isVideoRecording()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 616
    if-eqz v0, :cond_1

    .line 617
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v0

    .line 616
    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->isInValidFocus()Z

    move-result v0

    .line 616
    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    .line 619
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    .line 621
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->getPreviewHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 622
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    .line 623
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    .line 620
    const/4 v1, 0x5

    .line 624
    const/4 v6, 0x4

    move-object v0, p0

    .line 620
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/FunModule;->autoFocus(IIIIII)V

    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mInStartingFocusRecording:Z

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const-string/jumbo v0, "continuous-video"

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mVideoFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->clearFocusView(I)V

    goto :goto_0
.end method

.method public onShutterButtonLongClick()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x0

    return v0
.end method

.method public onShutterButtonLongClickCancel()V
    .locals 2

    .prologue
    .line 719
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/FunModule;->onShutterButtonFocus(ZI)V

    .line 720
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 2218
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 2219
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/FunModule;->isInTapableRect(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2218
    if-nez v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->isModuleSwitching()Z

    move-result v0

    .line 2218
    if-eqz v0, :cond_1

    .line 2220
    :cond_0
    return-void

    .line 2224
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xab

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v7

    check-cast v7, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 2225
    .local v7, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v7, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromTapDown(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2226
    return-void

    .line 2236
    :cond_2
    const-string/jumbo v0, "auto"

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->setVideoFocusMode(Ljava/lang/String;)V

    .line 2238
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMainProtocol:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setFocusViewType(Z)V

    .line 2239
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsTouchFocused:Z

    .line 2240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/module/FunModule;->mTouchFocusStartingTime:J

    .line 2241
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2242
    .local v8, "point":Landroid/graphics/Point;
    invoke-virtual {p0, v8}, Lcom/android/camera/module/FunModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 2243
    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaWidth()I

    move-result v4

    .line 2244
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->getDefaultFocusAreaHeight()I

    move-result v5

    .line 2245
    const/4 v6, 0x3

    move-object v0, p0

    .line 2243
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/module/FunModule;->autoFocus(IIIIII)V

    .line 2246
    return-void
.end method

.method public onStickerChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "newSticker"    # Ljava/lang/String;

    .prologue
    .line 275
    sget-object v1, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStickerChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mCameraView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    .line 278
    .local v0, "glCanvas":Lcom/android/gallery3d/ui/GLCanvas;
    instance-of v1, v0, Lcom/android/gallery3d/ui/GLCanvasImpl;

    if-eqz v1, :cond_0

    .line 279
    check-cast v0, Lcom/android/gallery3d/ui/GLCanvasImpl;

    .end local v0    # "glCanvas":Lcom/android/gallery3d/ui/GLCanvas;
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSticker(Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 960
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->onStop()V

    .line 962
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 963
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mIsFromStop:Z

    .line 964
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onPause()V

    .line 965
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->pause()V

    .line 966
    iput-boolean v1, p0, Lcom/android/camera/module/FunModule;->mIsFromStop:Z

    .line 968
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/module/FunModule;->postPendingSaveTask(Z)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNeedResetGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isReleaseLaterForGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseResources()V

    .line 973
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public onThumbnailClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Lcom/android/camera/OnClickAttr;
    .end annotation

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    .line 551
    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->gotoGallery()V

    .line 555
    :cond_0
    return-void
.end method

.method protected openSettingActivity()V
    .locals 4

    .prologue
    .line 2186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2187
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const-class v2, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2188
    const-string/jumbo v1, "from_where"

    const/16 v2, 0xa1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2189
    const-string/jumbo v1, ":miui:starting_window_label"

    .line 2190
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2189
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2191
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->startFromKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2192
    const-string/jumbo v1, "StartActivityWhenLocked"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2194
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 2195
    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->setJumpFlag(I)V

    .line 2197
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->trackGotoSettings()V

    .line 2198
    return-void
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 1
    .param p1, "repeatCount"    # I
    .param p2, "pressed"    # Z

    .prologue
    .line 1201
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1202
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->restoreBottom()V

    .line 1203
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isIgnoreTouchEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1204
    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/camera/module/FunModule;->onShutterButtonClick(I)V

    .line 1206
    :cond_1
    return-void
.end method

.method public playVideo()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->startPlayVideoActivity()V

    .line 536
    return-void
.end method

.method protected prepareRecording()V
    .locals 0

    .prologue
    .line 2458
    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 3

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->resetMutexModeManually()V

    .line 2110
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopFaceDetection()V

    .line 2111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/module/FunModule;->updateStereoSettings(Z)V

    .line 2112
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start to switch camera."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iget v0, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    iput v0, p0, Lcom/android/camera/module/FunModule;->mCameraId:I

    .line 2114
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/FunModule;->mPendingSwitchCameraId:I

    .line 2115
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 2116
    return-void
.end method

.method protected readVideoPreferences()V
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 770
    return-void

    .line 772
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->getDesiredPreviewSize()V

    .line 773
    const/16 v0, 0x286e

    iput v0, p0, Lcom/android/camera/module/FunModule;->mMaxVideoDurationInMs:I

    .line 774
    return-void
.end method

.method public record()V
    .locals 4

    .prologue
    .line 690
    sget-object v2, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "record"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->startVideoRecording()Z

    move-result v1

    .line 692
    .local v1, "succeed":Z
    if-eqz v1, :cond_0

    .line 694
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa2

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 695
    .local v0, "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingStart()V

    .line 697
    .end local v0    # "actionProcessing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_0
    return-void
.end method

.method public registerProtocol()V
    .locals 5

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->registerProtocol()V

    .line 228
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 229
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 230
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 231
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xa4

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/impl/ImplFactory;->initAdditional(Lcom/android/camera/ActivityBase;[I)V

    .line 234
    return-void
.end method

.method protected removeHandlerMessages()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 892
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 893
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 2

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2412
    return-void
.end method

.method protected setCameraParameters()V
    .locals 3

    .prologue
    .line 2011
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->updateVideoParametersPreference()V

    .line 2012
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2014
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2015
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v0, :cond_1

    .line 2016
    :cond_0
    iget v0, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    iget-object v2, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/module/FunModule;->updateCameraScreenNailSize(IILcom/android/camera/FocusManagerAbstract;)V

    .line 2018
    :cond_1
    return-void
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 999
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPreview "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-nez v0, :cond_1

    .line 1001
    :cond_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1005
    iget-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 1006
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->stopPreview()V

    .line 1009
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->checkDisplayOrientation()V

    .line 1010
    iget v0, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/module/FunModule;->setVideoSize(II)V

    .line 1011
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget v1, p0, Lcom/android/camera/module/FunModule;->mCameraDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1012
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->setCameraParameters()V

    .line 1013
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1014
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->startPreviewAsync()V

    .line 1015
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->startFaceDetection()V

    .line 1016
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    .line 1018
    return-void
.end method

.method protected startRecordVideo()Z
    .locals 8

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->initializeRecorder()V

    .line 1496
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    if-nez v3, :cond_0

    .line 1497
    sget-object v3, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "fail to initialize muxer"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v3, 0x0

    return v3

    .line 1500
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/module/FunModule;->mRequestStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    sub-long v0, v6, v4

    .line 1501
    .local v0, "startOffset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-gez v3, :cond_1

    .line 1502
    const-wide/16 v0, 0x0

    .line 1504
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->startRecording(J)Z

    move-result v2

    .line 1505
    .local v2, "started":Z
    if-nez v2, :cond_2

    .line 1506
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mMuxer:Lcom/android/camera/module/encoder/MediaMuxerWrapper;

    invoke-virtual {v3}, Lcom/android/camera/module/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1507
    iget-object v3, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    .line 1508
    const v4, 0x7f0f0207

    .line 1509
    const v5, 0x7f0f0209

    .line 1507
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/ui/ScreenHint;->showConfirmMessage(II)V

    .line 1510
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->releaseMediaRecorder()V

    .line 1512
    :cond_2
    return v2
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 1022
    sget-object v0, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/FunModule;->mPreviewing:Z

    .line 1024
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->stopFaceDetection()V

    .line 1025
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->stopPreview()V

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mFocusManager:Lcom/android/camera/FocusManagerSimple;

    invoke-virtual {v0}, Lcom/android/camera/FocusManagerSimple;->resetFocused()V

    .line 1031
    :cond_1
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/android/camera/module/BaseModule;->unRegisterProtocol()V

    .line 239
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 240
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 241
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 242
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getImplFactory()Lcom/android/camera/module/impl/ImplFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    .line 245
    return-void
.end method

.method public updateFlashPreference()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedFlashOn()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/camera/module/FunModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isSupportedTorch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 414
    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->resetMutexModeManually()V

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->onSharedPreferenceChanged()V

    .line 419
    return-void
.end method

.method protected updateStatusBar(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1604
    invoke-super {p0, p1}, Lcom/android/camera/module/BaseModule;->updateStatusBar(I)V

    .line 1605
    return-void
.end method

.method protected updateVideoParametersPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1917
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "previewSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v10, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1922
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v8

    .line 1923
    const-string/jumbo v9, "pref_camera_video_flashmode_key"

    .line 1924
    const v10, 0x7f0f0067

    invoke-virtual {p0, v10}, Lcom/android/camera/module/FunModule;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1922
    invoke-virtual {v8, v9, v10}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1925
    .local v3, "flashMode":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v6

    .line 1926
    .local v6, "supportedFlash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, v6}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1927
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1930
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateVideoFocusMode()V

    .line 1935
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1936
    invoke-direct {p0}, Lcom/android/camera/module/FunModule;->updateShaderEffect()V

    .line 1946
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 1947
    .local v2, "config":Lcom/android/camera/data/data/config/DataItemConfig;
    const-string/jumbo v8, "pref_sticker_path_key"

    const-string/jumbo v9, ""

    invoke-virtual {v2, v8, v9}, Lcom/android/camera/data/data/config/DataItemConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1948
    .local v4, "stickerPath":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sticker: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    .line 1952
    const-string/jumbo v7, "auto"

    .line 1953
    .local v7, "whiteBalance":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1954
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v7}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1963
    :cond_3
    :goto_1
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1964
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->getZoomValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1967
    :cond_4
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1970
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1971
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isBackCamera()Z

    move-result v8

    .line 1970
    if-eqz v8, :cond_a

    .line 1971
    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v8

    .line 1970
    if-eqz v8, :cond_a

    .line 1972
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "videoStabilization: on"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v11}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1974
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    .line 1981
    :goto_2
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v8}, Lcom/android/camera/module/FunModule;->addMuteToParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1982
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v8, v11}, Lcom/android/camera/module/FunModule;->configOisParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 1983
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, v8}, Lcom/android/camera/module/FunModule;->resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V

    .line 1984
    invoke-virtual {p0}, Lcom/android/camera/module/FunModule;->isFrontCamera()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1985
    sget-object v8, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9}, Lcom/android/camera/hardware/CameraHardwareProxy;->disableBokeh(Landroid/hardware/Camera$Parameters;)V

    .line 1988
    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAntiBanding()Ljava/lang/String;

    move-result-object v0

    .line 1989
    .local v0, "antiBanding":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "antiBanding: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1991
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v0}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 1993
    :cond_6
    iget v8, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewWidth:I

    iget v9, p0, Lcom/android/camera/module/FunModule;->mDesiredPreviewHeight:I

    invoke-static {v8, v9}, Lcom/android/camera/CameraSettings;->getUIStyleByPreview(II)I

    move-result v5

    .line 1994
    .local v5, "style":I
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uiStyle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget v8, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    if-eq v8, v5, :cond_7

    .line 1996
    iput v5, p0, Lcom/android/camera/module/FunModule;->mUIStyle:I

    .line 1997
    iget-boolean v8, p0, Lcom/android/camera/module/FunModule;->mSwitchingCamera:Z

    if-eqz v8, :cond_7

    .line 1998
    iput-boolean v11, p0, Lcom/android/camera/module/FunModule;->mHasPendingSwitching:Z

    .line 2002
    :cond_7
    sget-object v8, Lcom/android/camera/module/FunModule;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    iget-object v9, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v9, v12}, Lcom/android/camera/hardware/CameraHardwareProxy;->setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V

    .line 2003
    return-void

    .line 1938
    .end local v0    # "antiBanding":Ljava/lang/String;
    .end local v2    # "config":Lcom/android/camera/data/data/config/DataItemConfig;
    .end local v4    # "stickerPath":Ljava/lang/String;
    .end local v5    # "style":I
    .end local v7    # "whiteBalance":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    .line 1939
    .local v1, "colorEffect":Ljava/lang/String;
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "colorEffect: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/android/camera/module/FunModule;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1941
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1956
    .end local v1    # "colorEffect":Ljava/lang/String;
    .restart local v2    # "config":Lcom/android/camera/data/data/config/DataItemConfig;
    .restart local v4    # "stickerPath":Ljava/lang/String;
    .restart local v7    # "whiteBalance":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v7

    .line 1957
    if-nez v7, :cond_3

    .line 1958
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v9, "auto"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1976
    :cond_a
    sget-object v8, Lcom/android/camera/module/FunModule;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "videoStabilization: off"

    invoke-static {v8, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v8, v12}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 1978
    iget-object v8, p0, Lcom/android/camera/module/FunModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v8}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/camera/CameraScreenNail;->setVideoStabilizationCropped(Z)V

    goto/16 :goto_2
.end method
