.class public Lcom/android/camera/ui/SettingPopupFactory;
.super Ljava/lang/Object;
.source "SettingPopupFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/V6AbstractSettingPopup;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const-string/jumbo v2, "layout_inflater"

    .line 13
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 16
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 18
    .local v0, "inflateRes":I
    const-string/jumbo v2, "pref_qc_camera_iso_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    const v0, 0x7f04002f

    .line 63
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/V6AbstractSettingPopup;

    return-object v2

    .line 20
    :cond_0
    const-string/jumbo v2, "pref_qc_camera_manual_exposure_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    const v0, 0x7f04002d

    goto :goto_0

    .line 22
    :cond_1
    const-string/jumbo v2, "pref_delay_capture_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    const v0, 0x7f040045

    goto :goto_0

    .line 24
    :cond_2
    const-string/jumbo v2, "pref_skin_beautify_skin_color_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 25
    const-string/jumbo v2, "pref_skin_beautify_slim_face_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 24
    if-nez v2, :cond_3

    .line 26
    const-string/jumbo v2, "pref_skin_beautify_skin_smooth_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 24
    if-nez v2, :cond_3

    .line 27
    const-string/jumbo v2, "pref_skin_beautify_enlarge_eye_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 28
    :cond_3
    const v0, 0x7f040048

    goto :goto_0

    .line 29
    :cond_4
    const-string/jumbo v2, "pref_camera_whitebalance_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 30
    const v0, 0x7f040028

    goto :goto_0

    .line 31
    :cond_5
    const-string/jumbo v2, "pref_focus_position_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 32
    const v0, 0x7f04002e

    goto :goto_0

    .line 33
    :cond_6
    const-string/jumbo v2, "pref_camera_manual_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 34
    const-string/jumbo v2, "pref_camera_face_beauty_advanced_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 33
    if-eqz v2, :cond_8

    .line 35
    :cond_7
    const v0, 0x7f04003a

    goto :goto_0

    .line 36
    :cond_8
    const-string/jumbo v2, "pref_qc_camera_exposuretime_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 37
    const v0, 0x7f04002d

    goto/16 :goto_0

    .line 38
    :cond_9
    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 39
    const v0, 0x7f040027

    goto/16 :goto_0

    .line 40
    :cond_a
    const-string/jumbo v2, "pref_camera_stereo_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41
    const v0, 0x7f040038

    goto/16 :goto_0

    .line 42
    :cond_b
    const-string/jumbo v2, "pref_audio_focus_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 43
    const-string/jumbo v2, "pref_delay_capture_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 42
    if-nez v2, :cond_c

    .line 44
    const-string/jumbo v2, "pref_camera_tilt_shift_mode"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 42
    if-nez v2, :cond_c

    .line 45
    const-string/jumbo v2, "pref_camera_face_beauty_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 42
    if-eqz v2, :cond_d

    .line 46
    :cond_c
    const v0, 0x7f04002a

    goto/16 :goto_0

    .line 47
    :cond_d
    const-string/jumbo v2, "pref_camera_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 48
    const-string/jumbo v2, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 47
    if-nez v2, :cond_e

    .line 49
    const-string/jumbo v2, "pref_camera_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 47
    if-nez v2, :cond_e

    .line 50
    const-string/jumbo v2, "pref_video_hdr_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 47
    if-nez v2, :cond_e

    .line 51
    const-string/jumbo v2, "pref_camera_face_beauty_switch_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 47
    if-eqz v2, :cond_f

    .line 52
    :cond_e
    const v0, 0x7f040025

    goto/16 :goto_0

    .line 53
    :cond_f
    const-string/jumbo v2, "pref_camera_shader_coloreffect_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 54
    const v0, 0x7f040007

    goto/16 :goto_0

    .line 55
    :cond_10
    const-string/jumbo v2, "pref_camera_face_beauty_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 56
    const v0, 0x7f040045

    goto/16 :goto_0

    .line 57
    :cond_11
    const-string/jumbo v2, "pref_camera_zoom_mode_key"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 58
    const v0, 0x7f04004d

    goto/16 :goto_0

    .line 60
    :cond_12
    const/4 v2, 0x0

    return-object v2
.end method
