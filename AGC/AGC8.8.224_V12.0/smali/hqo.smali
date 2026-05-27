.class public final Lhqo;
.super Ljava/lang/Object;

# interfaces
.implements Lgen;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lhqo;->b:I

    iput-object p1, p0, Lhqo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgdv;I)V
    .locals 0

    iput p2, p0, Lhqo;->b:I

    iput-object p1, p0, Lhqo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhqp;I)V
    .locals 0

    iput p2, p0, Lhqo;->b:I

    iput-object p1, p0, Lhqo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lije;I)V
    .locals 0

    iput p2, p0, Lhqo;->b:I

    iput-object p1, p0, Lhqo;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lhqo;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->u:Litm;

    invoke-interface {v0}, Litm;->aa()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v1, v0, Lije;->u:Litm;

    iget-object v0, v0, Lije;->r:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-interface {v1, v0}, Litm;->Z(Lika;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->u:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->m:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lhqp;

    iget-object v1, v0, Lhqp;->h:Leg;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lhqp;->c()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b()V
    .locals 1

    iget v0, p0, Lhqo;->b:I

    return-void
.end method

.method public final synthetic c()V
    .locals 1

    iget v0, p0, Lhqo;->b:I

    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lhqo;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->s:Lhrq;

    invoke-virtual {v0, v1}, Lhrq;->b(Z)V

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->k:Ldhi;

    sget-object v2, Ldho;->aj:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->u:Litm;

    invoke-interface {v0}, Litm;->n()V

    :cond_0
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->t:Lgzi;

    const-string v2, "perf_has_shown_options_bar"

    invoke-virtual {v0, v2}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lije;

    iget-object v0, v0, Lije;->t:Lgzi;

    invoke-virtual {v0, v2, v1}, Lgzi;->l(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lgdv;

    iget-object v0, v0, Lgdv;->m:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lhqo;->a:Ljava/lang/Object;

    check-cast v0, Lhqp;

    iget-object v0, v0, Lhqp;->h:Leg;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Leg;->hide()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
