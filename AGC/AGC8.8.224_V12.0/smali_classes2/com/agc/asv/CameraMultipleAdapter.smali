.class Lcom/agc/asv/CameraMultipleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;,
        Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;
    }
.end annotation


# static fields
.field private static final CAMERA_INDEX:Ljava/lang/String; = "camera_index"

.field private static final TYPE_ONE:I = 0x0

.field private static final TYPE_TWO:I = 0x1


# instance fields
.field private compact:Z

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;ZLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/agc/asv/CameraMultipleModel;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->compact:Z

    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result p1

    iput p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p1, p1, Lcom/agc/asv/CameraMultipleModel;->type:I

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraMultipleAdapter;->getItemViewType(I)I

    move-result v2

    if-nez p2, :cond_3

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/agc/Res$layout;->agc_item_style_image:I

    invoke-virtual {p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;

    invoke-direct {p3, p2}, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v5, v1

    move-object v1, p3

    move-object p3, v5

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/agc/Res$layout;->agc_item_style_text:I

    invoke-virtual {p2, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;

    invoke-direct {p3, p2}, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;-><init>(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/agc/asv/CameraMultipleAdapter;->compact:Z

    if-eqz v2, :cond_2

    iget-object v2, p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;->textView:Landroid/widget/TextView;

    const/high16 v3, 0x41300000    # 11.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    if-eq v2, v0, :cond_4

    :goto_0
    move-object p3, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p3, v1

    move-object v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p3, v2

    :goto_1
    iget-object v2, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/asv/CameraMultipleModel;

    iget v2, v2, Lcom/agc/asv/CameraMultipleModel;->index:I

    iget v3, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    if-ne v2, v3, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/agc/asv/CameraMultipleAdapter;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v0, :cond_7

    goto :goto_4

    :cond_7
    iget-object p3, v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget p1, p1, Lcom/agc/asv/CameraMultipleModel;->drawableRes:I

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, v1, Lcom/agc/asv/CameraMultipleAdapter$ViewHolerTwo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_4

    :cond_8
    const-string v0, "pref_upscaling_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getBoolValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    const-string v0, "<b>s</b>"

    goto :goto_3

    :cond_9
    const-string v0, "x"

    :goto_3
    iget-object v1, p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/agc/asv/CameraMultipleAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/asv/CameraMultipleModel;

    iget-object p1, p1, Lcom/agc/asv/CameraMultipleModel;->text:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p3, Lcom/agc/asv/CameraMultipleAdapter$ViewHolderOne;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_4
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setOnClickItem(I)Z
    .locals 4

    sget v0, Lcom/Globals;->sHdr_process:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-string p1, "d"

    const-string v0, "HDR Processing"

    invoke-static {p1, v0}, Lcom/agc/Toast;->show(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget v0, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iput p1, p0, Lcom/agc/asv/CameraMultipleAdapter;->selectedIndex:I

    :cond_2
    const-string p1, "pref_upscaling_key"

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/Utils/Pref;->getBoolValue(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p1, v1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return v0
.end method
