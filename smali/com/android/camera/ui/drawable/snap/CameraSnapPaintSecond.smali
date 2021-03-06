.class public Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraSnapPaintSecond.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mBaseRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mCurrentWidthPercent:F

    mul-float v10, v0, v1

    .line 30
    .local v10, "radius":F
    const/4 v6, 0x4

    .line 31
    .local v6, "angel":I
    const/16 v7, 0x5a

    .line 33
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_5

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    mul-int/lit8 v0, v9, 0x4

    int-to-float v8, v0

    .line 37
    .local v8, "currentAngel":F
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleX:F

    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleY:F

    invoke-virtual {p1, v8, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 39
    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->isRecording:Z

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->needZero:Z

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->ALPHA_OUTSTANDING:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleX:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleY:F

    sub-float v2, v0, v10

    iget v3, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleX:F

    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mMiddleY:F

    sub-float/2addr v0, v10

    const/high16 v4, 0x41700000    # 15.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 33
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 42
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->timeAngle:F

    cmpg-float v0, v8, v0

    if-gez v0, :cond_3

    .line 43
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->isClockwise:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->ALPHA_OUTSTANDING:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->ALPHA_HINT:I

    goto :goto_2

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->isClockwise:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->ALPHA_HINT:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->ALPHA_OUTSTANDING:I

    goto :goto_3

    .line 52
    .end local v8    # "currentAngel":F
    :cond_5
    return-void
.end method

.method protected initPaint(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera/ui/drawable/snap/CameraSnapPaintSecond;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    return-void
.end method
