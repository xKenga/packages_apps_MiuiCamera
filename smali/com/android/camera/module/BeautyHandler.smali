.class public Lcom/android/camera/module/BeautyHandler;
.super Ljava/lang/Object;
.source "BeautyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field private mCameraModule:Lcom/android/camera/module/CameraModule;

.field private mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/camera/module/BeautyHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/BeautyHandler;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 1
    .param p1, "baseModule"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 37
    iput-object p1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    .line 38
    return-void
.end method

.method private resumeMakeupRender()V
    .locals 3

    .prologue
    .line 106
    iget-object v2, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v2, :cond_1

    .line 108
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->needDestroyMakeup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/GLCanvas;->getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v1

    .line 112
    .local v1, "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    sget v2, Lcom/android/camera/effect/FilterInfo;->RENDER_ID_MAKEUP:I

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    .line 113
    .local v0, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v0, :cond_1

    .line 114
    instance-of v2, v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v2, :cond_1

    .line 115
    check-cast v0, Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    .end local v0    # "render":Lcom/android/camera/effect/renders/Render;
    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    .line 119
    .end local v1    # "renderGroup":Lcom/android/camera/effect/renders/RenderGroup;
    :cond_1
    return-void
.end method


# virtual methods
.method public onBeautyStatusChanged(Z)V
    .locals 3
    .param p1, "faceBeautyOn"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    .line 132
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 138
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 139
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 140
    iput-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    goto :goto_0
.end method

.method public onCameraSwitched(Z)V
    .locals 1
    .param p1, "isFrontCamera"    # Z

    .prologue
    .line 71
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/android/camera/module/BeautyHandler;->setPreviewCallback()V

    .line 73
    return-void
.end method

.method public onCreate(IILcom/android/camera/Camera;)V
    .locals 2
    .param p1, "moduleIndex"    # I
    .param p2, "cameraId"    # I
    .param p3, "mActivity"    # Lcom/android/camera/Camera;

    .prologue
    .line 41
    invoke-virtual {p3}, Lcom/android/camera/Camera;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getGLCanvas()Lcom/android/gallery3d/ui/GLCanvasImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 42
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    .line 43
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/effect/BeautyParameters;->setIsFrontCamera(Z)V

    .line 44
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/BeautyParameters;->setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V

    .line 62
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 87
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 88
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->setBuffer([BII)V

    .line 93
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 94
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/BeautyHandler;->resumeMakeupRender()V

    goto :goto_0
.end method

.method public onStop(Lcom/android/camera/CameraManager$CameraProxy;)V
    .locals 3
    .param p1, "mCameraDevice"    # Lcom/android/camera/CameraManager$CameraProxy;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setCurrentSticker(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 57
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 58
    return-void
.end method

.method public prepareSwitchCamera()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    .line 66
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDestroyMakeup(Z)V

    .line 67
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setBeautyFrameReady(Z)V

    .line 68
    return-void
.end method

.method public releaseMakeupRender()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/BeautificationWrapperRender;->destroy()V

    .line 101
    iput-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mMakeupRender:Lcom/android/camera/effect/renders/BeautificationWrapperRender;

    .line 103
    :cond_0
    return-void
.end method

.method public setPreviewCallback()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->enableMakeup(Z)V

    .line 78
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v0}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->needPreviewCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/camera/module/BeautyHandler;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BeautyHandler;->mCameraModule:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 82
    :cond_0
    return-void
.end method
