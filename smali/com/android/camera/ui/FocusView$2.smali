.class Lcom/android/camera/ui/FocusView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    .line 1119
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 1
    return-void
.end method

.method private capture(Z)V
    .locals 4
    .param p1, "click"    # Z

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1124
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa6

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 1125
    .local v1, "main":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->removeTiltShiftMask()V

    .line 1128
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1129
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1130
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera/ui/FocusView;->-set1(Lcom/android/camera/ui/FocusView;Z)Z

    .line 1131
    if-eqz p1, :cond_0

    .line 1132
    const/16 v2, 0x5a

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 1136
    .end local v0    # "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    .end local v1    # "main":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    :cond_0
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1141
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1142
    return v3

    .line 1145
    :cond_0
    const/4 v1, 0x0

    .line 1146
    .local v1, "supportTapDownCapture":Z
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get7(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1157
    .end local v1    # "supportTapDownCapture":Z
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_1
    if-eqz v1, :cond_4

    .line 1159
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 1160
    sget v5, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    .line 1159
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/ui/FocusView;->-wrap0(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result v2

    .line 1157
    if-eqz v2, :cond_4

    .line 1161
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get7(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/16 v3, 0xa7

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    .line 1162
    .local v0, "captureLater":Z
    :goto_1
    xor-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView$2;->capture(Z)V

    .line 1169
    .end local v0    # "captureLater":Z
    :goto_2
    return v7

    .line 1153
    .restart local v1    # "supportTapDownCapture":Z
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v1

    .local v1, "supportTapDownCapture":Z
    goto :goto_0

    .local v1, "supportTapDownCapture":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1161
    .end local v1    # "supportTapDownCapture":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "captureLater":Z
    goto :goto_1

    .line 1164
    .end local v0    # "captureLater":Z
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2, v7}, Lcom/android/camera/ui/FocusView;->-set6(Lcom/android/camera/ui/FocusView;Z)Z

    .line 1165
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap4(Lcom/android/camera/ui/FocusView;)V

    .line 1166
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v2}, Lcom/android/camera/ui/FocusView;->-wrap8(Lcom/android/camera/ui/FocusView;)V

    goto :goto_2

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1195
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get14(Lcom/android/camera/ui/FocusView;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get10(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 1196
    :cond_0
    const/4 v5, 0x0

    return v5

    .line 1199
    :cond_1
    if-nez p2, :cond_2

    .line 1200
    const/4 v5, 0x0

    return v5

    .line 1203
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get16(Lcom/android/camera/ui/FocusView;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1204
    const/4 v5, 0x0

    return v5

    .line 1207
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get1(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/ui/V6GestureRecognizer;->getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v1

    .line 1208
    .local v1, "gestureOri":I
    const/16 v5, 0xc8

    if-ne v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_6

    .line 1209
    :cond_4
    const/16 v5, 0x64

    if-ne v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    div-int/lit8 v5, v5, 0x5a

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    .line 1210
    :cond_5
    const/4 v5, 0x0

    return v5

    .line 1213
    :cond_6
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get19(Lcom/android/camera/ui/FocusView;)I

    move-result v3

    .line 1214
    .local v3, "newScrollY":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get18(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1232
    :goto_0
    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sget v6, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    div-float v0, v5, v6

    .line 1233
    .local v0, "base":F
    int-to-float v5, v3

    div-float/2addr v5, v0

    float-to-int v2, v5

    .line 1234
    .local v2, "newDistanceY":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    sget v6, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    invoke-static {}, Lcom/android/camera/ui/FocusView;->-get0()I

    move-result v7

    sub-int/2addr v6, v7

    sget v7, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v7, v7, 0x2

    invoke-static {v2, v6, v7}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set2(Lcom/android/camera/ui/FocusView;I)I

    .line 1235
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get5(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    if-ne v2, v5, :cond_7

    .line 1236
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5, v3}, Lcom/android/camera/ui/FocusView;->-set8(Lcom/android/camera/ui/FocusView;I)I

    .line 1239
    :cond_7
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set0(Lcom/android/camera/ui/FocusView;Z)Z

    .line 1241
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-wrap1(Lcom/android/camera/ui/FocusView;)I

    move-result v4

    .line 1243
    .local v4, "targetItem":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 1244
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 1245
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    if-lt v5, v6, :cond_c

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 1246
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-wrap9(Lcom/android/camera/ui/FocusView;)V

    .line 1247
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    .line 1248
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set3(Lcom/android/camera/ui/FocusView;I)I

    .line 1257
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/android/camera/ui/FocusView;->-wrap7(Lcom/android/camera/ui/FocusView;IZ)V

    .line 1260
    :cond_9
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get3(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get5(Lcom/android/camera/ui/FocusView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v7}, Lcom/android/camera/ui/FocusView;->-get12(Lcom/android/camera/ui/FocusView;)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setEvChanged(FF)V

    .line 1261
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get4(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get5(Lcom/android/camera/ui/FocusView;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v7}, Lcom/android/camera/ui/FocusView;->-get12(Lcom/android/camera/ui/FocusView;)F

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvChanged(FF)V

    .line 1263
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 1264
    :cond_a
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set3(Lcom/android/camera/ui/FocusView;I)I

    .line 1265
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-wrap2(Lcom/android/camera/ui/FocusView;)V

    .line 1266
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 1269
    :cond_b
    const/4 v5, 0x1

    return v5

    .line 1216
    .end local v0    # "base":F
    .end local v2    # "newDistanceY":I
    .end local v4    # "targetItem":I
    :sswitch_0
    int-to-float v5, v3

    sub-float/2addr v5, p4

    float-to-int v3, v5

    .line 1217
    goto/16 :goto_0

    .line 1219
    :sswitch_1
    int-to-float v5, v3

    add-float/2addr v5, p3

    float-to-int v3, v5

    .line 1220
    goto/16 :goto_0

    .line 1222
    :sswitch_2
    int-to-float v5, v3

    add-float/2addr v5, p4

    float-to-int v3, v5

    .line 1223
    goto/16 :goto_0

    .line 1225
    :sswitch_3
    int-to-float v5, v3

    sub-float/2addr v5, p3

    float-to-int v3, v5

    .line 1226
    goto/16 :goto_0

    .line 1249
    .restart local v0    # "base":F
    .restart local v2    # "newDistanceY":I
    .restart local v4    # "targetItem":I
    :cond_c
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    if-le v4, v5, :cond_8

    .line 1250
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 1251
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v5}, Lcom/android/camera/ui/FocusView;->-wrap9(Lcom/android/camera/ui/FocusView;)V

    .line 1252
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->-get6(Lcom/android/camera/ui/FocusView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set7(Lcom/android/camera/ui/FocusView;I)I

    .line 1253
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView;->-set3(Lcom/android/camera/ui/FocusView;I)I

    goto/16 :goto_1

    .line 1214
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1174
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get15(Lcom/android/camera/ui/FocusView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    return v3

    .line 1178
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get7(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1179
    :cond_1
    return v3

    .line 1182
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    .line 1183
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get8(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->-get17(Lcom/android/camera/ui/FocusView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 1185
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$2;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->-get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    .line 1186
    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    .line 1185
    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/ui/FocusView;->-wrap0(Lcom/android/camera/ui/FocusView;FFF)Z

    move-result v1

    .line 1183
    if-eqz v1, :cond_4

    .line 1187
    invoke-direct {p0, v6}, Lcom/android/camera/ui/FocusView$2;->capture(Z)V

    .line 1189
    :cond_4
    return v6

    .line 1182
    :cond_5
    const/4 v0, 0x0

    .local v0, "supportTapDownCapture":Z
    goto :goto_0
.end method
