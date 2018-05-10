.class public Lcom/android/camera/fragment/top/ExtraAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExtraAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

.field private mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

.field private mDegree:I

.field private mImageNormalColor:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mSelectedColor:I

.field private mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

.field private mTextNormalColor:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/SupportedConfigs;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "supportedConfigs"    # Lcom/android/camera/data/data/config/SupportedConfigs;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 44
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 45
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    .line 46
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    .line 47
    const v0, -0x4c000001

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    .line 48
    const v0, -0x141415

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .line 49
    const v0, -0xe66d19

    iput v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 50
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 16
    .param p1, "holder"    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 70
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSupportedConfigs:Lcom/android/camera/data/data/config/SupportedConfigs;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Lcom/android/camera/data/data/config/SupportedConfigs;->getConfig(I)I

    move-result v5

    .line 72
    .local v5, "config":I
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const/4 v13, 0x0

    .line 76
    .local v13, "topResourceId":I
    const/4 v11, -0x1

    .line 78
    .local v11, "textResource":I
    const/4 v9, 0x0

    .line 80
    .local v9, "selected":Z
    packed-switch v5, :pswitch_data_0

    .line 193
    .end local v9    # "selected":Z
    :goto_0
    :pswitch_0
    const v14, 0x7f0a005c

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 194
    .local v12, "textView":Landroid/widget/TextView;
    const v14, 0x7f0a005b

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ui/ColorImageView;

    .line 195
    .local v7, "imageView":Lcom/android/camera/ui/ColorImageView;
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(I)V

    .line 197
    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 198
    .local v10, "textColor":I
    :goto_1
    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mSelectedColor:I

    .line 199
    .local v6, "imageColor":I
    :goto_2
    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    invoke-virtual {v7, v6}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 201
    invoke-virtual {v7, v13}, Lcom/android/camera/ui/ColorImageView;->setImageResource(I)V

    .line 202
    return-void

    .line 82
    .end local v6    # "imageColor":I
    .end local v7    # "imageView":Lcom/android/camera/ui/ColorImageView;
    .end local v10    # "textColor":I
    .end local v12    # "textView":Landroid/widget/TextView;
    .restart local v9    # "selected":Z
    :pswitch_1
    const v13, 0x7f02007d

    .line 83
    const v11, 0x7f0f0286

    .line 84
    goto :goto_0

    .line 87
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v14}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v4

    .line 88
    .local v4, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->isSwitchOn()Z

    move-result v9

    .line 89
    .local v9, "selected":Z
    const/16 v14, 0xa0

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueSelectedDrawable(I)I

    move-result v13

    .line 90
    const/16 v14, 0xa0

    invoke-virtual {v4, v14}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getValueDisplayString(I)I

    move-result v11

    goto :goto_0

    .line 94
    .end local v4    # "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .local v9, "selected":Z
    :pswitch_3
    const v13, 0x7f020095

    .line 95
    const v11, 0x7f0f0288

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_audio_capture"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto :goto_0

    .line 100
    .local v9, "selected":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    invoke-virtual {v14}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v3

    .line 101
    .local v3, "componentRunningTiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_tilt_shift_mode"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .line 102
    .local v9, "selected":Z
    if-eqz v9, :cond_0

    .line 103
    const/16 v14, 0xa0

    invoke-virtual {v3, v14}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueDisplayString(I)I

    move-result v11

    .line 104
    const/16 v14, 0xa0

    invoke-virtual {v3, v14}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getValueSelectedDrawable(I)I

    move-result v13

    goto/16 :goto_0

    .line 106
    :cond_0
    const v11, 0x7f0f028c

    .line 107
    const v13, 0x7f020097

    goto/16 :goto_0

    .line 112
    .end local v3    # "componentRunningTiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    .local v9, "selected":Z
    :pswitch_5
    const v13, 0x7f020096

    .line 113
    const v11, 0x7f0f0289

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_gradienter_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 118
    .local v9, "selected":Z
    :pswitch_6
    const v13, 0x7f02008e

    .line 119
    const v11, 0x7f0f028a

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_hand_night_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 124
    .local v9, "selected":Z
    :pswitch_7
    const v13, 0x7f02008f

    .line 125
    const v11, 0x7f0f028e

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_ubifocus_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 130
    .local v9, "selected":Z
    :pswitch_8
    const v13, 0x7f020089

    .line 131
    const v11, 0x7f0f028b

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_groupshot_mode_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 136
    .local v9, "selected":Z
    :pswitch_9
    const v13, 0x7f020092

    .line 137
    const v11, 0x7f0f028d

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_scenemode_setting_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 142
    .local v9, "selected":Z
    :pswitch_a
    const v13, 0x7f020094

    .line 143
    const v11, 0x7f0f01b9

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_video_speed_slow_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 148
    .local v9, "selected":Z
    :pswitch_b
    const v13, 0x7f02007e

    .line 149
    const v11, 0x7f0f01b8

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_video_speed_fast_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 154
    .local v9, "selected":Z
    :pswitch_c
    const v13, 0x7f020090

    .line 155
    const v11, 0x7f0f0219

    .line 156
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_magic_mirror_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 160
    .local v9, "selected":Z
    :pswitch_d
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v2

    .line 161
    .local v2, "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    const v13, 0x7f020091

    .line 162
    const v11, 0x7f0f0047

    .line 163
    goto/16 :goto_0

    .line 166
    .end local v2    # "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    :pswitch_e
    const v13, 0x7f020088

    .line 167
    const v11, 0x7f0f018b

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemRunning:Lcom/android/camera/data/data/runing/DataItemRunning;

    const-string/jumbo v15, "pref_camera_show_gender_age_key"

    invoke-virtual {v14, v15}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 172
    .local v9, "selected":Z
    :pswitch_f
    const v13, 0x7f02007c

    .line 173
    sget-boolean v14, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v14, :cond_1

    const v11, 0x7f0f0164

    .line 175
    :goto_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v9

    .local v9, "selected":Z
    goto/16 :goto_0

    .line 174
    .local v9, "selected":Z
    :cond_1
    const v11, 0x7f0f0163

    goto :goto_3

    .line 179
    :pswitch_10
    const/4 v9, 0x0

    .line 180
    const v13, 0x7f020078

    .line 181
    const v11, 0x7f0f01fc

    .line 182
    goto/16 :goto_0

    .line 185
    :pswitch_11
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v8

    .line 186
    .local v8, "mode":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDataItemConfig:Lcom/android/camera/data/data/config/DataItemConfig;

    invoke-virtual {v14}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v1

    .line 187
    .local v1, "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isSwitchOn(I)Z

    move-result v9

    .line 188
    .local v9, "selected":Z
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueSelectedDrawable(I)I

    move-result v13

    .line 189
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getValueDisplayString(I)I

    move-result v11

    goto/16 :goto_0

    .line 197
    .end local v1    # "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    .end local v8    # "mode":I
    .end local v9    # "selected":Z
    .restart local v7    # "imageView":Lcom/android/camera/ui/ColorImageView;
    .restart local v12    # "textView":Landroid/widget/TextView;
    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mTextNormalColor:I

    .restart local v10    # "textColor":I
    goto/16 :goto_1

    .line 198
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/fragment/top/ExtraAdapter;->mImageNormalColor:I

    .restart local v6    # "imageColor":I
    goto/16 :goto_2

    .line 80
    :pswitch_data_0
    .packed-switch 0xe1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_11
        :pswitch_f
        :pswitch_0
        :pswitch_10
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExtraAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040022

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    if-eqz v1, :cond_0

    .line 61
    iget v1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setRotation(Landroid/view/View;F)V

    .line 63
    :cond_0
    new-instance v1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setNewDegree(I)V
    .locals 0
    .param p1, "newDegree"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/camera/fragment/top/ExtraAdapter;->mDegree:I

    .line 54
    return-void
.end method
