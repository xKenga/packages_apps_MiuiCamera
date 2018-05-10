.class public Lcom/android/camera/ui/V6RelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "V6RelativeLayout.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method public findChildrenById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setOrientation(IZ)V
    .locals 4
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/V6RelativeLayout;->getChildCount()I

    move-result v1

    .line 80
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 82
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/camera/ui/Rotatable;

    if-eqz v3, :cond_0

    .line 83
    check-cast v0, Lcom/android/camera/ui/Rotatable;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method
