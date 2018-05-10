.class public Lcom/android/camera/effect/BeautyParameters;
.super Ljava/lang/Object;
.source "BeautyParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

.field private static final TAG:Ljava/lang/String;

.field private static final sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field private static sInstance:Lcom/android/camera/effect/BeautyParameters;


# instance fields
.field private mBeautyLevel:I

.field private mBeautyValueRange:[I

.field private mCameraLevelParameters:[[F

.field private mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

.field private mExtraTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFrontCamera:Z

.field private mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

.field private mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

.field private mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;


# direct methods
.method private static synthetic -getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->values()[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->BRIGHT_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEBLEMISH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->DEPOUCH_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->IRIS_SHINE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->LIP_BEAUTY_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_6
    :try_start_7
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RELIGHTING_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_7
    :try_start_8
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->RUDDY_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_8
    :try_start_9
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_9
    :try_start_a
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    :try_start_b
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_NOSE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_b
    :try_start_c
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_c
    :try_start_d
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_d
    sput-object v0, Lcom/android/camera/effect/BeautyParameters;->-com-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_d

    :catch_1
    move-exception v1

    goto :goto_c

    :catch_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    goto :goto_a

    :catch_4
    move-exception v1

    goto :goto_9

    :catch_5
    move-exception v1

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_7

    :catch_7
    move-exception v1

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v1

    goto :goto_4

    :catch_a
    move-exception v1

    goto :goto_3

    :catch_b
    move-exception v1

    goto/16 :goto_2

    :catch_c
    move-exception v1

    goto/16 :goto_1

    :catch_d
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/android/camera/effect/BeautyParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 23
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 26
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 21
    sput-object v0, Lcom/android/camera/effect/BeautyParameters;->sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x6

    new-array v0, v0, [[F

    .line 42
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 44
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 45
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 46
    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    .line 47
    new-array v1, v3, [F

    fill-array-data v1, :array_5

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 41
    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCameraLevelParameters:[[F

    .line 50
    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 51
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBeautifyValueRange()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    .line 53
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateParameters()V

    .line 54
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data

    .line 45
    :array_3
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    .line 46
    :array_4
    .array-data 4
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
        0x40e00000    # 7.0f
    .end array-data

    .line 47
    :array_5
    .array-data 4
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
        0x41000000    # 8.0f
    .end array-data
.end method

.method private static getFaceBeautyRatioKey(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .prologue
    .line 83
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->-getcom-miui-filtersdk-beauty-BeautyParameterTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 93
    const-string/jumbo v0, ""

    return-object v0

    .line 85
    :pswitch_0
    const-string/jumbo v0, "pref_beautify_skin_smooth_ratio_key"

    return-object v0

    .line 87
    :pswitch_1
    const-string/jumbo v0, "pref_beautify_skin_color_ratio_key"

    return-object v0

    .line 89
    :pswitch_2
    const-string/jumbo v0, "pref_beautify_enlarge_eye_ratio_key"

    return-object v0

    .line 91
    :pswitch_3
    const-string/jumbo v0, "pref_beautify_slim_face_ratio_key"

    return-object v0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/android/camera/effect/BeautyParameters;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/effect/BeautyParameters;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/camera/effect/BeautyParameters;

    invoke-direct {v0}, Lcom/android/camera/effect/BeautyParameters;-><init>()V

    sput-object v0, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->sInstance:Lcom/android/camera/effect/BeautyParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;
    .locals 13
    .param p1, "processor"    # Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    .param p2, "beautyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 284
    invoke-virtual {p1, p2}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getIntelligentLevelParams(I)Ljava/util/Map;

    move-result-object v5

    .line 285
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-virtual {p1}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getExtraSpan()F

    move-result v3

    .line 286
    .local v3, "extraSpan":F
    sget-object v9, Lcom/android/camera/effect/BeautyParameters;->sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v0, v9, v7

    .line 287
    .local v0, "beautyType":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    invoke-virtual {p1, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F

    move-result-object v1

    .line 288
    .local v1, "degreeRange":[F
    array-length v6, v1

    const/4 v11, 0x2

    if-lt v6, v11, :cond_0

    .line 289
    iget-object v6, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v3

    const/high16 v11, 0x42c80000    # 100.0f

    div-float v2, v6, v11

    .line 290
    .local v2, "extra":F
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    add-float v4, v6, v2

    .line 291
    .local v4, "newValue":F
    aget v6, v1, v8

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-static {v4, v6, v11}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v4

    .line 292
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .end local v2    # "extra":F
    .end local v4    # "newValue":F
    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 294
    :cond_0
    sget-object v6, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " does not support type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 298
    .end local v0    # "beautyType":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .end local v1    # "degreeRange":[F
    :cond_1
    return-object v5
.end method

.method private isMakeupStatusChanged()Z
    .locals 3

    .prologue
    .line 253
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->isMakeupEnable()Z

    move-result v1

    .line 254
    .local v1, "currMakeupStatus":Z
    invoke-virtual {p0}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v0

    .line 255
    .local v0, "currFaceBeautyOn":Z
    if-ne v1, v0, :cond_0

    .line 256
    const/4 v2, 0x0

    return v2

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    invoke-interface {v2, v0}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyStatusChanged(Z)V

    .line 262
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private onBeautyLevelChanged(I)V
    .locals 3
    .param p1, "beautyLevel"    # I

    .prologue
    .line 302
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    .line 303
    sget-object v0, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBeautyLevelChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    invoke-interface {v0}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyParameterChanged()V

    .line 307
    :cond_0
    return-void
.end method

.method private onBeautyParameterChanged(Lcom/miui/filtersdk/beauty/BeautyParameterType;I)V
    .locals 4
    .param p1, "beautyType"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .param p2, "progress"    # I

    .prologue
    .line 310
    invoke-static {p1}, Lcom/android/camera/effect/BeautyParameters;->getFaceBeautyRatioKey(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/camera/CameraSettings;->setFaceBeautyRatio(Ljava/lang/String;I)V

    .line 312
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBeautyParameterChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    invoke-interface {v1}, Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;->onBeautyParameterChanged()V

    .line 316
    :cond_0
    return-void
.end method

.method private setBeautyParameters()V
    .locals 3

    .prologue
    .line 266
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectController;->isStickerEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    iget v2, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 270
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    .line 279
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    iget v2, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 276
    .restart local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private updateExtraTable()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v6, 0x0

    .line 122
    sget-object v7, Lcom/android/camera/effect/BeautyParameters;->sAdjustableParamTypes:[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v4, v7, v5

    .line 123
    .local v4, "type":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    const/4 v2, 0x0

    .line 124
    .local v2, "progress":I
    invoke-static {v4}, Lcom/android/camera/effect/BeautyParameters;->getFaceBeautyRatioKey(Lcom/miui/filtersdk/beauty/BeautyParameterType;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v9, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 126
    invoke-static {v1, v12}, Lcom/android/camera/CameraSettings;->getFaceBeautyRatio(Ljava/lang/String;I)I

    move-result v2

    .line 127
    if-ne v2, v12, :cond_0

    .line 128
    iget-object v9, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    iget-object v10, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    aget v10, v10, v6

    sub-int v3, v9, v10

    .line 129
    .local v3, "range":I
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v9

    if-eqz v9, :cond_1

    if-eqz v3, :cond_1

    .line 130
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBeautifyDefaultValue(Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "defaultValue":I
    iget-object v9, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyValueRange:[I

    aget v9, v9, v6

    sub-int v9, v0, v9

    mul-int/lit8 v9, v9, 0x64

    div-int v2, v9, v3

    .line 132
    sget-object v9, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateExtraTable: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "->"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "defaultValue":I
    .end local v3    # "range":I
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 134
    .restart local v3    # "range":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 141
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "progress":I
    .end local v3    # "range":I
    .end local v4    # "type":Lcom/miui/filtersdk/beauty/BeautyParameterType;
    :cond_2
    return-void
.end method

.method private updateParameters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 64
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-gez v1, :cond_2

    .line 66
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 67
    .local v0, "invalidLevel":I
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautyLevel()I

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 68
    sget-object v1, Lcom/android/camera/effect/BeautyParameters;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 69
    const-string/jumbo v3, "reset invalid beauty level %d to %d"

    .line 68
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 69
    iget v5, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 68
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setFaceBeautyLevel(I)V

    .line 72
    .end local v0    # "invalidLevel":I
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateExtraTable()V

    .line 73
    return-void

    .line 65
    :cond_2
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-gez v1, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public getCurrentLevel()I
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 180
    .local v0, "currentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v1

    .line 181
    .local v1, "isClose":Z
    if-eqz v1, :cond_0

    .line 182
    const/4 v2, 0x0

    return v2

    .line 184
    :cond_0
    iget v2, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    return v2
.end method

.method public getCurrentProgress()I
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 197
    .local v1, "mCurrentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v0

    .line 198
    .local v0, "isClose":Z
    if-eqz v0, :cond_0

    .line 199
    const/4 v2, 0x0

    return v2

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getCurrentType()Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    return-object v0
.end method

.method public isFaceBeautyOn()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 227
    .local v0, "currentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v3

    .line 228
    .local v3, "isClose":Z
    if-eqz v3, :cond_0

    .line 229
    return v6

    .line 232
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 233
    const-string/jumbo v4, "pref_camera_face_beauty_advanced_key"

    .line 234
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFaceBeautySwitch()Ljava/lang/String;

    move-result-object v7

    .line 233
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    iget-object v4, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Integer;>;"
    sget-object v4, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_1

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 239
    return v5

    .line 243
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Integer;>;"
    :cond_2
    return v6

    .line 245
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_3
    iget v4, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-lez v4, :cond_4

    move v4, v5

    :goto_0
    return v4

    :cond_4
    move v4, v6

    goto :goto_0

    .line 248
    :cond_5
    iget v4, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    if-lez v4, :cond_6

    :goto_1
    return v5

    :cond_6
    move v5, v6

    goto :goto_1
.end method

.method public isFrontCamera()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    return v0
.end method

.method public resetBeautyLevel()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 323
    return-void
.end method

.method public setIsFrontCamera(Z)V
    .locals 1
    .param p1, "isFrontCamera"    # Z

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    if-eq v0, p1, :cond_0

    .line 145
    iput-boolean p1, p0, Lcom/android/camera/effect/BeautyParameters;->mIsFrontCamera:Z

    .line 146
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->updateParameters()V

    .line 148
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 170
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 171
    .local v0, "currentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 172
    iput p1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    .line 173
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->isMakeupStatusChanged()Z

    .line 174
    invoke-direct {p0, p1}, Lcom/android/camera/effect/BeautyParameters;->onBeautyLevelChanged(I)V

    .line 175
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->setBeautyParameters()V

    .line 176
    return-void
.end method

.method public setMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V
    .locals 2
    .param p1, "makeupProcessor"    # Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .line 101
    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 102
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 104
    return-void

    .line 98
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setOnFaceBeautyChangedListener(Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mOnFaceBeautyChangedListener:Lcom/android/camera/effect/BeautyParameters$OnFaceBeautyChangedListener;

    .line 218
    return-void
.end method

.method public setProgress(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    .line 205
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 206
    .local v0, "currentMode":I
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 207
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 208
    .local v1, "oldProgress":I
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mExtraTable:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->isMakeupStatusChanged()Z

    .line 210
    if-eq v1, p1, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-direct {p0, v2, p1}, Lcom/android/camera/effect/BeautyParameters;->onBeautyParameterChanged(Lcom/miui/filtersdk/beauty/BeautyParameterType;I)V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/effect/BeautyParameters;->setBeautyParameters()V

    .line 214
    return-void
.end method

.method public setStickerMakeupProcessor(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;)V
    .locals 2
    .param p1, "stickerProcessor"    # Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .prologue
    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    .line 158
    iget v1, p0, Lcom/android/camera/effect/BeautyParameters;->mBeautyLevel:I

    invoke-direct {p0, p1, v1}, Lcom/android/camera/effect/BeautyParameters;->getProcessorBeautyParams(Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;I)Ljava/util/Map;

    move-result-object v0

    .line 159
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iget-object v1, p0, Lcom/android/camera/effect/BeautyParameters;->mStickerMakeupProcessor:Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    invoke-virtual {v1, v0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->setBeautyParamsDegree(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 161
    return-void

    .line 155
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setType(Lcom/miui/filtersdk/beauty/BeautyParameterType;)V
    .locals 0
    .param p1, "type"    # Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/effect/BeautyParameters;->mCurrentType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    .line 189
    return-void
.end method
