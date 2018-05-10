.class public Lcom/android/camera/ui/ModeSelectView;
.super Landroid/widget/LinearLayout;
.source "ModeSelectView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
    }
.end annotation


# instance fields
.field private lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

.field private onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->initView()V

    .line 51
    return-void
.end method

.method private scrollTo(ILjava/util/List;Z)V
    .locals 2
    .param p1, "distance"    # I
    .param p3, "isShowFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    .line 146
    :cond_0
    invoke-static {p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->directSetResult(Landroid/view/View;I)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_1
    new-instance v0, Lcom/android/camera/animation/type/TranslateXOnSubscribe;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;-><init>(Landroid/view/View;I)V

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/android/camera/animation/type/TranslateXOnSubscribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setSelection(ILjava/util/List;Z)V
    .locals 9
    .param p1, "index"    # I
    .param p3, "isShowFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    iget-object v6, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-eqz v6, :cond_0

    .line 109
    iget-object v6, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/ui/ColorActivateTextView;

    .line 113
    .local v4, "selectedTextView":Lcom/android/camera/ui/ColorActivateTextView;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    .line 114
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/camera/ui/ColorActivateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0f0124

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    const/16 v6, 0x80

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ColorActivateTextView;->sendAccessibilityEvent(I)V

    .line 119
    :cond_1
    iput-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v6, 0x2

    .line 126
    .local v3, "parentMiddle":I
    const/4 v2, 0x0

    .line 127
    .local v2, "leftWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v6

    add-int/2addr v2, v6

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v4}, Lcom/android/camera/Util;->getChildMeasureWidth(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v5, v2, v6

    .line 139
    .local v5, "viewSrcMiddle":I
    sub-int v0, v3, v5

    .line 140
    .local v0, "distance":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    neg-int v0, v0

    .line 141
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->scrollTo(ILjava/util/List;Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V
    .locals 9
    .param p1, "componentModuleList"    # Lcom/android/camera/data/data/global/ComponentModuleList;
    .param p2, "currentMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->removeAllViews()V

    .line 69
    invoke-virtual {p1}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v3

    .line 70
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 71
    .local v1, "item":Lcom/android/camera/data/data/ComponentDataItem;
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 74
    .local v4, "layoutInflater":Landroid/view/LayoutInflater;
    const v7, 0x7f040018

    .line 73
    invoke-virtual {v4, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ui/ColorActivateTextView;

    .line 75
    .local v6, "textView":Lcom/android/camera/ui/ColorActivateTextView;
    invoke-virtual {v6, p0}, Lcom/android/camera/ui/ColorActivateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v7, -0x66000001

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setNormalCor(I)V

    .line 78
    iget-object v7, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 84
    .local v5, "module":I
    const v7, -0xff5701

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setActivateColor(I)V

    .line 88
    iget v7, v1, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setText(I)V

    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ColorActivateTextView;->setTag(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/ModeSelectView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 94
    .end local v1    # "item":Lcom/android/camera/data/data/ComponentDataItem;
    .end local v4    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v5    # "module":I
    .end local v6    # "textView":Lcom/android/camera/ui/ColorActivateTextView;
    :cond_0
    const/16 v7, 0xa8

    if-eq p2, v7, :cond_1

    const/16 v7, 0xa9

    if-ne p2, v7, :cond_2

    .line 95
    :cond_1
    const/16 p2, 0xa2

    .line 98
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 99
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p2, :cond_4

    .line 100
    const/4 v7, 0x0

    invoke-direct {p0, v0, v7, v8}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    .line 104
    :cond_3
    return-void

    .line 98
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public initView()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public judgePosition(ILjava/util/List;Z)V
    .locals 5
    .param p1, "actualMode"    # I
    .param p3, "isShowFilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    iget-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    if-nez v4, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/ModeSelectView;->lastActivateTextView:Lcom/android/camera/ui/ColorActivateTextView;

    invoke-virtual {v4}, Lcom/android/camera/ui/ColorActivateTextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 177
    .local v0, "currentMode":I
    if-ne v0, p1, :cond_1

    .line 178
    return-void

    .line 181
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 183
    .local v2, "mode":I
    if-ne p1, v2, :cond_3

    .line 184
    invoke-direct {p0, v1, p2, p3}, Lcom/android/camera/ui/ModeSelectView;->setSelection(ILjava/util/List;Z)V

    .line 181
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ModeSelectView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/ColorActivateTextView;

    .line 187
    .local v3, "selectedTextView":Lcom/android/camera/ui/ColorActivateTextView;
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 188
    invoke-virtual {v3}, Lcom/android/camera/ui/ColorActivateTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ColorActivateTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 193
    .end local v2    # "mode":I
    .end local v3    # "selectedTextView":Lcom/android/camera/ui/ColorActivateTextView;
    :cond_4
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeSelectView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    .local v0, "newMode":I
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;->onModeClicked(I)V

    .line 167
    :cond_1
    return-void
.end method

.method public setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V
    .locals 0
    .param p1, "onModeClickedListener"    # Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/ModeSelectView;->onModeClickedListener:Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;

    .line 63
    return-void
.end method
