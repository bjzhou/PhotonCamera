.class public Lcom/agc/widget/cure/StringListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private onStringItemClick:Lcom/agc/widget/cure/OnStringItemClick;

.field private selectedPosition:I

.field private final values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput v0, p0, Lcom/agc/widget/cure/StringListAdapter;->selectedPosition:I

    iput-object p1, p0, Lcom/agc/widget/cure/StringListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/widget/cure/StringListAdapter;->values:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/agc/widget/cure/StringListAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/agc/widget/cure/StringListAdapter;->values:Ljava/util/ArrayList;

    iput p3, p0, Lcom/agc/widget/cure/StringListAdapter;->selectedPosition:I

    return-void
.end method

.method public static synthetic access$000(Lcom/agc/widget/cure/StringListAdapter;)Lcom/agc/widget/cure/OnStringItemClick;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/StringListAdapter;->onStringItemClick:Lcom/agc/widget/cure/OnStringItemClick;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/agc/widget/cure/StringListAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/agc/widget/cure/StringListAdapter;->values:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object p2, p0, Lcom/agc/widget/cure/StringListAdapter;->context:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const-string v0, "agc_item_list_dialog"

    invoke-static {v0}, Lcom/agc/Res;->getLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/agc/widget/cure/StringListAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/agc/widget/cure/StringListAdapter$1;-><init>(Lcom/agc/widget/cure/StringListAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p3, Lcom/agc/Res$id;->tv_title:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sget v0, Lcom/agc/Res$id;->iv_info:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v2, p0, Lcom/agc/widget/cure/StringListAdapter;->selectedPosition:I

    if-eq v2, p1, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/agc/widget/cure/StringListAdapter;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public setOnStringItemClick(Lcom/agc/widget/cure/OnStringItemClick;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/cure/StringListAdapter;->onStringItemClick:Lcom/agc/widget/cure/OnStringItemClick;

    return-void
.end method
