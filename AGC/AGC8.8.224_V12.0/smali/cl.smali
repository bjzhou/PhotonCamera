.class final Lcl;
.super Ljava/lang/Object;

# interfaces
.implements Lpw;


# instance fields
.field final synthetic a:Lcq;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lcq;I)V
    .locals 0

    iput p2, p0, Lcl;->b:I

    iput-object p1, p0, Lcl;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcl;->b:I

    const-string v1, "FragmentManager"

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lpv;

    iget-object v0, p0, Lcl;->a:Lcq;

    iget-object v0, v0, Lcq;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn;

    if-nez v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Activities were started for result for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    check-cast p1, Lpv;

    iget-object v0, p0, Lcl;->a:Lcq;

    iget-object v0, v0, Lcq;->p:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No IntentSenders were started for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, v0, Lcn;->a:Ljava/lang/String;

    iget v0, v0, Lcn;->b:I

    iget-object v3, p0, Lcl;->a:Lcq;

    iget-object v3, v3, Lcq;->a:Lcv;

    invoke-virtual {v3, v2}, Lcv;->c(Ljava/lang/String;)Lbw;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Intent Sender result delivered for unknown Fragment "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, p1, Lpv;->a:I

    iget-object p1, p1, Lpv;->b:Landroid/content/Intent;

    invoke-virtual {v3, v0, v1, p1}, Lbw;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcn;->a:Ljava/lang/String;

    iget v0, v0, Lcn;->b:I

    iget-object v3, p0, Lcl;->a:Lcq;

    iget-object v3, v3, Lcq;->a:Lcv;

    invoke-virtual {v3, v2}, Lcv;->c(Ljava/lang/String;)Lbw;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Activity result delivered for unknown Fragment "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget v1, p1, Lpv;->a:I

    iget-object p1, p1, Lpv;->b:Landroid/content/Intent;

    invoke-virtual {v3, v0, v1, p1}, Lbw;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
