.class public Lcom/android/camera/fragment/top/ExpandAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpandAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/fragment/CommonRecyclerViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mComponentData:Lcom/android/camera/data/data/ComponentData;

.field private mCurrentMode:I

.field private mCurrentValue:Ljava/lang/String;

.field private mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/ComponentData;Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;)V
    .locals 3
    .param p1, "componentData"    # Lcom/android/camera/data/data/ComponentData;
    .param p2, "expandListener"    # Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    .line 37
    iput-object p2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    .line 39
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 40
    .local v0, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    .line 41
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v0}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExpandAdapter;->onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/fragment/CommonRecyclerViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 53
    iget-object v3, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {v3}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 55
    .local v0, "componentDataItem":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v2, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    .line 56
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v3, p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    const v3, 0x7f0a0080

    invoke-virtual {p1, v3}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mDisplayNameRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v1, v5, v5, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 64
    const v3, 0x7f02001b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 67
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 79
    .local v0, "newValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 80
    iput-object v0, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentValue:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    iget v2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mCurrentMode:I

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/ExpandAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    iget-object v2, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mComponentData:Lcom/android/camera/data/data/ComponentData;

    invoke-interface {v1, v2, v0}, Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;->onExpandValueChange(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;)V

    .line 87
    iput-object v3, p0, Lcom/android/camera/fragment/top/ExpandAdapter;->mExpandListener:Lcom/android/camera/fragment/top/ExpandAdapter$ExpandListener;

    .line 90
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/fragment/top/ExpandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/fragment/CommonRecyclerViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 47
    const v2, 0x7f040024

    const/4 v3, 0x0

    .line 46
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/camera/fragment/CommonRecyclerViewHolder;

    invoke-direct {v1, v0}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
