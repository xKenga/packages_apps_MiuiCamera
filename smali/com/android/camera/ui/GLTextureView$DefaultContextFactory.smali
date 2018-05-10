.class Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "GLTextureView.java"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/android/camera/ui/GLTextureView;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/GLTextureView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/ui/GLTextureView;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/16 v0, 0x3098

    iput v0, p0, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/GLTextureView;Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/GLTextureView;
    .param p2, "-this1"    # Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;-><init>(Lcom/android/camera/ui/GLTextureView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "shareContext"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 540
    const/4 v2, 0x3

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v3

    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLTextureView;

    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->-get2(Lcom/android/camera/ui/GLTextureView;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 541
    const/16 v2, 0x3038

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 544
    .local v0, "attrib_list":[I
    if-nez p4, :cond_0

    sget-object p4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 545
    .end local p4    # "shareContext":Ljavax/microedition/khronos/egl/EGLContext;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/GLTextureView$DefaultContextFactory;->this$0:Lcom/android/camera/ui/GLTextureView;

    invoke-static {v2}, Lcom/android/camera/ui/GLTextureView;->-get2(Lcom/android/camera/ui/GLTextureView;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    .end local v0    # "attrib_list":[I
    :goto_0
    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .restart local v0    # "attrib_list":[I
    :cond_1
    move-object v0, v1

    .line 545
    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 550
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    const-string/jumbo v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string/jumbo v0, "eglDestroyContex"

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ui/GLTextureView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 557
    :cond_0
    return-void
.end method
