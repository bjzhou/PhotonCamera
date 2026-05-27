.class Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/asv/AgcSeekbarDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field scope02:[I

.field final synthetic this$0:Lcom/agc/asv/AgcSeekbarDialog;

.field private valueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/agc/asv/AgcSeekbarDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->this$0:Lcom/agc/asv/AgcSeekbarDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p1, 0x5

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->scope02:[I

    iput-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->nameList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->valueList:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x5
        0x7
        0x9
    .end array-data
.end method

.method public static synthetic access$300(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->nameList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->nameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->onBindViewHolder(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;I)V
    .locals 4

    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3, p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->bind(DI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;->bind(DI)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/agc/R$layout;->agc_seekbar_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter$ViewHolder;-><init>(Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->nameList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/agc/asv/AgcSeekbarDialog$MyAdapter;->valueList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
