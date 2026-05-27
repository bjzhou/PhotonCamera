.class Lcom/agc/widget/lut/LutItemAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutItemAdapter;->onBindViewHolder(Lcom/agc/widget/lut/LutItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutItemAdapter;

.field final synthetic val$lutModel:Lcom/agc/model/LutListModel$LutModel;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutItemAdapter;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    iput-object p2, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->val$lutModel:Lcom/agc/model/LutListModel$LutModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {p1}, Lcom/agc/widget/lut/LutItemAdapter;->access$000(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-static {p1}, Lcom/agc/widget/lut/LutItemAdapter;->access$000(Lcom/agc/widget/lut/LutItemAdapter;)Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->val$lutModel:Lcom/agc/model/LutListModel$LutModel;

    invoke-interface {p1, v0}, Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;->onHideAds(Lcom/agc/model/LutListModel$LutModel;)V

    :cond_0
    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    invoke-virtual {p1}, Lcom/agc/widget/recyclerview/AgcRecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->this$0:Lcom/agc/widget/lut/LutItemAdapter;

    iget-object p1, p1, Lcom/agc/widget/lut/LutItemAdapter;->spUtils:Lcom/agc/util/SpUtils;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show_agc_player_view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/widget/lut/LutItemAdapter$1;->val$lutModel:Lcom/agc/model/LutListModel$LutModel;

    invoke-virtual {v1}, Lcom/agc/model/LutListModel$LutModel;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcom/agc/util/SpUtils;->save(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
