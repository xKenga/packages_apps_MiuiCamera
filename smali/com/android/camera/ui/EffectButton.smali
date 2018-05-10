.class public Lcom/android/camera/ui/EffectButton;
.super Lcom/android/camera/ui/AnimationImageView;
.source "EffectButton.java"

# interfaces
.implements Lcom/android/camera/ui/MessageDispatcher;
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDispatching:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPopup:Lcom/android/camera/ui/EffectPopup;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;

.field private mSavedValue:Ljava/lang/String;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "EffectButton"

    sput-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 31
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 32
    return-void
.end method

.method private doTapButton()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 124
    const/4 v1, 0x3

    .line 123
    if-lt v0, v1, :cond_1

    .line 125
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->triggerPopup()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->toggle()V

    goto :goto_0
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferenceSize()I
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isPopupShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private notifyClickToDispatcher()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_1

    .line 312
    :cond_0
    return-void

    .line 314
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 315
    iput-object v1, p0, Lcom/android/camera/ui/EffectButton;->mSavedValue:Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mMessageDispatcher:Lcom/android/camera/ui/MessageDispatcher;

    .line 320
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 317
    const/4 v1, 0x6

    .line 318
    const v2, 0x7f0a00d8

    .line 319
    const/4 v3, 0x2

    move-object v5, p0

    .line 316
    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispatcher;->dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mDispatching:Z

    .line 323
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    .line 324
    return-void
.end method

.method private refreshIcon()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->findCurrentIndex()I

    move-result v0

    sget v1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne v0, v1, :cond_1

    .line 134
    const v0, 0x7f02009e

    .line 133
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectButton;->setImageResource(I)V

    .line 136
    return-void

    .line 135
    :cond_1
    const v0, 0x7f02009d

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 144
    .local v0, "index":I
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getPreferenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->reloadPreference()V

    .line 150
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    .line 151
    return-void
.end method

.method private triggerPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    .line 108
    const/4 v1, 0x3

    .line 107
    if-lt v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->showPopup()V

    .line 114
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;I)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    goto :goto_0
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "result":Z
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 292
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectPopup;->stopEffectRender()V

    .line 295
    const/4 v0, 0x1

    .line 296
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/PopupManager;->notifyDismissPopup()V

    .line 298
    :cond_0
    return v0
.end method

.method public dispatchMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "receiver"    # I
    .param p4, "extra1"    # Ljava/lang/Object;
    .param p5, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 304
    instance-of v0, p5, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p5, Ljava/lang/Boolean;

    .end local p5    # "extra2":Ljava/lang/Object;
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 305
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->notifyClickToDispatcher()V

    .line 307
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePopup()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->hasPopup()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 271
    :cond_0
    sget-object v0, Lcom/android/camera/ui/EffectButton;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to initialize popup, key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string/jumbo v2, " mPreference="

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string/jumbo v2, " mPopup="

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    iget-object v2, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    .line 271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 276
    return-void

    .line 283
    :cond_2
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 78
    .local v0, "action":I
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 80
    return v3

    .line 81
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->dismissPopup()Z

    .line 83
    return v3

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_5

    if-ne v0, v3, :cond_5

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->doTapButton()V

    .line 87
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->playSoundEffect(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 90
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v1

    if-nez v1, :cond_4

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EffectButton;->setPressed(Z)V

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 94
    return v3

    .line 96
    :cond_5
    return v3
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public refreshValue()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->isPopupShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->reloadPreference()V

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/EffectButton;->refreshIcon()V

    .line 187
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->refreshValue()V

    .line 176
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    const/4 p1, 0x0

    .line 248
    .end local p1    # "enabled":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 249
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setEnabled(Z)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/EffectPopup;->setEnabled(Z)V

    .line 254
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/android/camera/ui/EffectButton;->mVisible:Z

    if-nez v0, :cond_0

    const/16 p1, 0x8

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ui/AnimationImageView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method public showPopup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectButton;->initializePopup()V

    .line 258
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/EffectPopup;->setOrientation(IZ)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/EffectButton;->mPopup:Lcom/android/camera/ui/EffectPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectPopup;->startEffectRender()V

    .line 263
    :cond_0
    return-void
.end method
