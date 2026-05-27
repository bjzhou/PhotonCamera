.class public final Legl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p4, p0, Legl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legl;->a:Loiw;

    iput-object p2, p0, Legl;->b:Loiw;

    iput-object p3, p0, Legl;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p4, p0, Legl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legl;->c:Loiw;

    iput-object p2, p0, Legl;->b:Loiw;

    iput-object p3, p0, Legl;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p4, p0, Legl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legl;->a:Loiw;

    iput-object p2, p0, Legl;->c:Loiw;

    iput-object p3, p0, Legl;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[S)V
    .locals 0

    iput p4, p0, Legl;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Legl;->c:Loiw;

    iput-object p2, p0, Legl;->b:Loiw;

    iput-object p3, p0, Legl;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Legl;
    .locals 2

    new-instance v0, Legl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Legl;-><init>(Loiw;Loiw;Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;Loiw;Loiw;)Legl;
    .locals 2

    new-instance v0, Legl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Legl;-><init>(Loiw;Loiw;Loiw;I)V

    return-object v0
.end method

.method public static d(Loiw;Loiw;Loiw;)Legl;
    .locals 7

    new-instance v6, Legl;

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Legl;-><init>(Loiw;Loiw;Loiw;I[C)V

    return-object v6
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 6

    iget v0, p0, Legl;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Legl;->c:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v3, p0, Legl;->b:Loiw;

    iget-object v4, p0, Legl;->a:Loiw;

    check-cast v4, Logl;

    iget-object v4, v4, Logl;->a:Ljava/lang/Object;

    check-cast v4, Lmqp;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0, v5}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    :pswitch_0
    iget-object v0, p0, Legl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v3, p0, Legl;->c:Loiw;

    check-cast v3, Lijz;

    invoke-virtual {v3}, Lijz;->a()Lika;

    move-result-object v3

    iget-object v4, p0, Legl;->b:Loiw;

    check-cast v4, Lfwo;

    invoke-virtual {v4}, Lfwo;->a()Lfuz;

    move-result-object v4

    sget-object v5, Ldhg;->n:Ldhj;

    invoke-interface {v0, v5}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lika;->b:Lika;

    invoke-virtual {v3, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lklw;->k()Lklv;

    move-result-object v0

    sget-object v3, Lklv;->b:Lklv;

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Legl;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v3, p0, Legl;->b:Loiw;

    check-cast v3, Lccs;

    invoke-virtual {v3}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Legl;->a:Loiw;

    check-cast v4, Lccs;

    invoke-virtual {v4}, Lccs;->a()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Leyk;->a:Ljwb;

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    sget-object v3, Ldht;->i:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Ldht;->f:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ldht;->e:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Ldht;->s:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ldht;->r:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Legl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v3, p0, Legl;->b:Loiw;

    check-cast v3, Lfwo;

    invoke-virtual {v3}, Lfwo;->a()Lfuz;

    move-result-object v3

    iget-object v4, p0, Legl;->c:Loiw;

    check-cast v4, Lijz;

    invoke-virtual {v4}, Lijz;->a()Lika;

    move-result-object v4

    sget-object v5, Lika;->b:Lika;

    if-ne v4, v5, :cond_5

    invoke-virtual {v3}, Lklw;->k()Lklv;

    move-result-object v3

    sget-object v4, Lklv;->b:Lklv;

    if-ne v3, v4, :cond_5

    sget-object v3, Ldhg;->d:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Ldho;->bn:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Legl;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v3, p0, Legl;->b:Loiw;

    check-cast v3, Lfwo;

    invoke-virtual {v3}, Lfwo;->a()Lfuz;

    move-result-object v3

    iget-object v4, p0, Legl;->c:Loiw;

    check-cast v4, Lijz;

    invoke-virtual {v4}, Lijz;->a()Lika;

    move-result-object v4

    invoke-static {v0}, Ldhg;->a(Ldhi;)Lmwn;

    move-result-object v5

    invoke-virtual {v5, v4}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lklw;->k()Lklv;

    move-result-object v3

    sget-object v4, Lklv;->b:Lklv;

    if-ne v3, v4, :cond_6

    sget-object v3, Ldhg;->n:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Ldho;->bn:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    :cond_8
    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Legl;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Legl;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
