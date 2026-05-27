.class Lcom/agc/asv/CameraSwitchView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/CameraSwitchView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/CameraSwitchView;

.field final synthetic val$adapter:Lcom/agc/asv/CameraMultipleAdapter;


# direct methods
.method public constructor <init>(Lcom/agc/asv/CameraSwitchView;Lcom/agc/asv/CameraMultipleAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/asv/CameraSwitchView$1;->this$0:Lcom/agc/asv/CameraSwitchView;

    iput-object p2, p0, Lcom/agc/asv/CameraSwitchView$1;->val$adapter:Lcom/agc/asv/CameraMultipleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/asv/CameraMultipleModel;

    iget-object v1, p0, Lcom/agc/asv/CameraSwitchView$1;->val$adapter:Lcom/agc/asv/CameraMultipleAdapter;

    iget v2, v0, Lcom/agc/asv/CameraMultipleModel;->index:I

    invoke-virtual {v1, v2}, Lcom/agc/asv/CameraMultipleAdapter;->setOnClickItem(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/agc/asv/CameraMultipleModel;->camera:Lcom/agc/Camera;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/agc/Camera;->isFront()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1}, Lcom/agc/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/Utils/Lens;->getAuxKey(Ljava/lang/String;)I

    move-result v1

    const-string v5, "pref_switch_front_restart_key"

    invoke-static {v5}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v1}, Lcom/Utils/Lens;->setAuxKey(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraSwitchButton CameraID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/agc/asv/CameraMultipleModel;->id:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " AuxKey: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isBackLens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    if-nez v4, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/agc/Patch;->patchAll()V

    goto :goto_2

    :cond_3
    :goto_1
    xor-int/lit8 v0, v4, 0x1

    invoke-static {v0}, Lcom/Globals;->onRestart(Z)V

    :goto_2
    iget-object v0, p0, Lcom/agc/asv/CameraSwitchView$1;->this$0:Lcom/agc/asv/CameraSwitchView;

    iget-object v1, v0, Lcom/agc/asv/CameraSwitchView;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_4

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    return-void
.end method
