.class Lcom/android/camera/ui/GLSurfaceTexture$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GLSurfaceTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method static synthetic -set0(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/GLSurfaceTexture$GLThread;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    return p1
.end method

.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/ui/GLSurfaceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceTextureWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/camera/ui/GLSurfaceTexture;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 953
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1485
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 954
    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 955
    iput v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 956
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 957
    iput v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 958
    iput-object p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    .line 959
    return-void
.end method

.method private guardedRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v19, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    .line 1001
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 1002
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 1004
    const/4 v8, 0x0

    .line 1005
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1006
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1007
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1008
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1009
    .local v10, "lostEglContext":Z
    const/4 v13, 0x0

    .line 1010
    .local v13, "sizeChanged":Z
    const/16 v18, 0x0

    .line 1011
    .local v18, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1012
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1013
    .local v2, "askedToReleaseEglContext":Z
    const/16 v17, 0x0

    .line 1014
    .local v17, "w":I
    const/4 v9, 0x0

    .line 1015
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1018
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1020
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v19, :cond_1

    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1288
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1289
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v20

    .line 1021
    return-void

    .line 1288
    :catchall_0
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1024
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_2

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    monitor-exit v20

    .line 1191
    if-eqz v7, :cond_14

    .line 1192
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1193
    const/4 v7, 0x0

    .local v7, "event":Ljava/lang/Runnable;
    goto :goto_0

    .line 1030
    .end local v7    # "event":Ljava/lang/Runnable;
    :cond_2
    const/4 v11, 0x0

    .line 1031
    .local v11, "pausing":Z
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1032
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1033
    .local v11, "pausing":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    .line 1034
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1041
    .end local v11    # "pausing":Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 1045
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1046
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1047
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    .line 1048
    const/4 v2, 0x1

    .line 1052
    :cond_4
    if-eqz v10, :cond_5

    .line 1053
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1055
    const/4 v10, 0x0

    .line 1059
    :cond_5
    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 1063
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1067
    :cond_6
    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1069
    .local v14, "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-nez v14, :cond_11

    .line 1070
    const/4 v12, 0x0

    .line 1071
    :goto_3
    if-eqz v12, :cond_7

    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1072
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V

    .line 1080
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_8
    if-eqz v11, :cond_9

    .line 1081
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    .line 1090
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_b

    .line 1094
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 1095
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1097
    :cond_a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    .line 1098
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1099
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1103
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 1107
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    .line 1108
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1111
    :cond_c
    if-eqz v6, :cond_d

    .line 1115
    const/16 v18, 0x0

    .line 1116
    const/4 v6, 0x0

    .line 1117
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1118
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1122
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 1126
    if-eqz v2, :cond_12

    .line 1127
    const/4 v2, 0x0

    .line 1142
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_f

    .line 1143
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 1144
    const/4 v4, 0x1

    .line 1145
    const/4 v5, 0x1

    .line 1146
    const/4 v13, 0x1

    .line 1149
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 1150
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 1151
    const/4 v13, 0x1

    .line 1152
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1153
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 1154
    const/16 v18, 0x1

    .line 1162
    const/4 v4, 0x1

    .line 1164
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 1166
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1167
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_2

    .line 1018
    :catchall_1
    move-exception v19

    :try_start_7
    monitor-exit v20

    throw v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1284
    :catchall_2
    move-exception v19

    .line 1288
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1289
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglSurfaceLocked()V

    .line 1290
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->stopEglContextLocked()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    monitor-exit v20

    .line 1284
    throw v19

    .line 1070
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_11
    :try_start_9
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get6(Lcom/android/camera/ui/GLSurfaceTexture;)Z

    move-result v12

    .local v12, "preserveEglContextOnPause":Z
    goto/16 :goto_3

    .line 1128
    .end local v12    # "preserveEglContextOnPause":Z
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_12
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->tryAcquireEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result v19

    if-eqz v19, :cond_e

    .line 1130
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->start()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1135
    const/16 v19, 0x1

    :try_start_b
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 1136
    const/4 v3, 0x1

    .line 1138
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    goto/16 :goto_4

    .line 1131
    :catch_0
    move-exception v16

    .line 1132
    .local v16, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 1133
    throw v16

    .line 1187
    .end local v16    # "t":Ljava/lang/RuntimeException;
    :cond_13
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1197
    :cond_14
    if-eqz v4, :cond_15

    .line 1201
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createSurface()Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 1202
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1203
    const/16 v19, 0x1

    :try_start_d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1204
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v20

    .line 1214
    const/4 v4, 0x0

    .line 1217
    :cond_15
    if-eqz v5, :cond_16

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1220
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1221
    const/4 v5, 0x0

    .line 1224
    .end local v8    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    :cond_16
    if-eqz v3, :cond_18

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1229
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_17

    .line 1230
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1232
    :cond_17
    const/4 v3, 0x0

    .line 1235
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_18
    if-eqz v13, :cond_1a

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1240
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_19

    .line 1241
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1243
    :cond_19
    const/4 v13, 0x0

    .line 1250
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mGLSurfaceTextureWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ui/GLSurfaceTexture;

    .line 1251
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    if-eqz v14, :cond_1b

    .line 1252
    invoke-static {v14}, Lcom/android/camera/ui/GLSurfaceTexture;->-get7(Lcom/android/camera/ui/GLSurfaceTexture;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1255
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->swap()I

    move-result v15

    .line 1256
    .local v15, "swapError":I
    sparse-switch v15, :sswitch_data_0

    .line 1270
    const-string/jumbo v19, "GLThread"

    const-string/jumbo v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v15}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1272
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1273
    const/16 v19, 0x1

    :try_start_f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1274
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    monitor-exit v20

    .line 1279
    :goto_5
    :sswitch_0
    if-eqz v18, :cond_0

    .line 1280
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1202
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .end local v15    # "swapError":I
    :catchall_3
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1207
    :cond_1c
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 1208
    const/16 v19, 0x1

    :try_start_11
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1209
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    .line 1210
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    monitor-exit v20

    goto/16 :goto_0

    .line 1207
    :catchall_4
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1263
    .restart local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .restart local v15    # "swapError":I
    :sswitch_1
    const/4 v10, 0x1

    .line 1264
    goto :goto_5

    .line 1272
    :catchall_5
    move-exception v19

    monitor-exit v20

    throw v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1288
    .end local v14    # "surface":Lcom/android/camera/ui/GLSurfaceTexture;
    .end local v15    # "swapError":I
    :catchall_6
    move-exception v19

    monitor-exit v20

    throw v19

    .line 1256
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1300
    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSurfaceIsBad:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1301
    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    if-lez v2, :cond_2

    .line 1302
    iget-boolean v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    if-ne v2, v0, :cond_1

    .line 1300
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1302
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1300
    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->finish()V

    .line 995
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    .line 996
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->releaseEglContextLocked(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 998
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    .line 984
    iget-object v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mEglHelper:Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$EglHelper;->destroySurface()V

    .line 986
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1296
    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->readyToDraw()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1316
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1317
    :try_start_0
    iget v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1316
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1366
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1370
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1371
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1372
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1377
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1379
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1366
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1383
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1386
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1390
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestPaused:Z

    .line 1391
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1392
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1393
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1394
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1399
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    .line 1401
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1386
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1405
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1408
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1409
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWidth:I

    .line 1410
    iput p2, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHeight:I

    .line 1411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mSizeChanged:Z

    .line 1412
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRequestRender:Z

    .line 1413
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    .line 1414
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1417
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mPaused:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderComplete:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1418
    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1417
    if-eqz v1, :cond_0

    .line 1423
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1408
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1429
    return-void
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1434
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1435
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldExit:Z

    .line 1436
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1437
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1439
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    .line 1441
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1434
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1445
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mShouldReleaseEglContext:Z

    .line 1449
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1450
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GLThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->setName(Ljava/lang/String;)V

    .line 969
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 975
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 973
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    goto :goto_0

    .line 972
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 973
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->threadExiting(Lcom/android/camera/ui/GLSurfaceTexture$GLThread;)V

    .line 972
    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1306
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1307
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1309
    :cond_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1310
    :try_start_0
    iput p1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mRenderMode:I

    .line 1311
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1313
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1329
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1333
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mHasSurface:Z

    .line 1334
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1335
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->notifyAll()V

    .line 1336
    :goto_0
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    .line 1337
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mFinishedCreatingEglSurface:Z

    xor-int/lit8 v1, v1, 0x1

    .line 1336
    if-eqz v1, :cond_0

    .line 1338
    iget-boolean v1, p0, Lcom/android/camera/ui/GLSurfaceTexture$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    .line 1336
    if-eqz v1, :cond_0

    .line 1340
    :try_start_1
    invoke-static {}, Lcom/android/camera/ui/GLSurfaceTexture;->-get9()Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/GLSurfaceTexture$GLThreadManager;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1329
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    monitor-exit v2

    .line 1346
    return-void
.end method
