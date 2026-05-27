.class Lcom/agc/fw/FloatManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/fw/FloatManager;->initView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/fw/FloatManager;


# direct methods
.method public constructor <init>(Lcom/agc/fw/FloatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/fw/FloatManager$3;->this$0:Lcom/agc/fw/FloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    iget-object p1, p0, Lcom/agc/fw/FloatManager$3;->this$0:Lcom/agc/fw/FloatManager;

    iget-object p1, p1, Lcom/agc/fw/FloatManager;->floatWindowHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/fw/FloatWindow;

    invoke-virtual {v0}, Lcom/agc/fw/FloatWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const-string v3, "agc_iv_overlay"

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/agc/fw/FloatWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string v3, "agc_tv_log"

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/agc/fw/FloatManager$3;->this$0:Lcom/agc/fw/FloatManager;

    iget v4, v3, Lcom/agc/fw/FloatManager;->defaultState:I

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v6, v1

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    move v1, v5

    :goto_2
    iput v1, v3, Lcom/agc/fw/FloatManager;->defaultState:I

    const/16 v1, 0x8

    if-eqz v6, :cond_2

    move v3, v5

    goto :goto_3

    :cond_2
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_3

    move v5, v1

    :cond_3
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    return v1
.end method
