.class final Lvd;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field private final a:Lvg;

.field private final b:Lve;

.field private final c:I


# direct methods
.method public constructor <init>(Lvg;Lve;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd;->a:Lvg;

    iput-object p2, p0, Lvd;->b:Lve;

    iput p3, p0, Lvd;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lvd;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lvd;->b:Lve;

    iget-object v1, v0, Lve;->l:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    iget-object v0, v0, Lve;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    iget-object v2, p0, Lvd;->a:Lvg;

    iget-object v2, v2, Lvg;->n:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lli;

    iget-object v3, p0, Lvd;->b:Lve;

    iget-object v3, v3, Lve;->g:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwf;

    iget-object v4, p0, Lvd;->b:Lve;

    iget-object v4, v4, Lve;->h:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lva;->b:Ljava/lang/Object;

    new-instance v2, Lva;

    check-cast v1, Lqz;

    invoke-direct {v2, v1, v3, v4}, Lva;-><init>(Lqz;Lvy;Lsb;)V

    check-cast v0, Lvn;

    iput-object v2, v0, Lvn;->b:Ljava/lang/Object;

    iget-object v1, v0, Lvn;->b:Ljava/lang/Object;

    const-class v2, Lva;

    invoke-static {v1, v2}, Llho;->I(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v1, Llij;

    iget-object v2, v0, Lvn;->a:Ljava/lang/Object;

    iget-object v0, v0, Lvn;->b:Ljava/lang/Object;

    check-cast v0, Lva;

    check-cast v2, Lvg;

    invoke-direct {v1, v2, v0}, Llij;-><init>(Lvg;Lva;)V

    iget-object v0, v1, Llij;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_0
    new-instance v0, Lwo;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwm;

    iget-object v2, p0, Lvd;->b:Lve;

    iget-object v2, v2, Lve;->i:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqx;

    iget-object v3, p0, Lvd;->a:Lvg;

    iget-object v3, v3, Lvg;->m:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lva;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lwo;-><init>(Lwm;Lqx;Lva;[B)V

    return-object v0

    :pswitch_1
    new-instance v0, Lwm;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrd;

    iget-object v2, p0, Lvd;->b:Lve;

    iget-object v2, v2, Lve;->l:Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    check-cast v2, Lqz;

    invoke-direct {v0, v1, v2}, Lwm;-><init>(Lrd;Lqz;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lwi;

    invoke-direct {v0}, Lwi;-><init>()V

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lvd;->b:Lve;

    iget-object v1, v0, Lve;->l:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    iget-object v0, v0, Lve;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Lrw;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lljr;->af([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v1, Lqz;

    iget-object v0, v1, Lqz;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :pswitch_4
    iget-object v0, p0, Lvd;->a:Lvg;

    iget-object v0, v0, Lvg;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ldqx;->e:Ljava/lang/Object;

    new-instance v1, Lopt;

    const-string v2, "CXCP-Graph"

    invoke-direct {v1, v2}, Lopt;-><init>(Ljava/lang/String;)V

    check-cast v0, Lokp;

    invoke-virtual {v0, v1}, Lokp;->plus(Lola;)Lola;

    move-result-object v0

    invoke-static {v0}, Lopx;->e(Lola;)Lopu;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lnt;

    invoke-direct {v0}, Lnt;-><init>()V

    return-object v0

    :pswitch_6
    new-instance v0, Lwf;

    iget-object v1, p0, Lvd;->a:Lvg;

    iget-object v1, v1, Lvg;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ldqx;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v3, v1, Lve;->l:Lbkb;

    iget-object v3, v3, Lbkb;->a:Ljava/lang/Object;

    iget-object v1, v1, Lve;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lnt;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lopu;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    check-cast v3, Lqz;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lwf;-><init>(Ldqx;Lqz;Lnt;Lopu;Ljava/util/List;[B[B[B)V

    return-object v0

    :pswitch_7
    iget-object v0, p0, Lvd;->a:Lvg;

    iget-object v0, v0, Lvg;->k:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbbc;

    iget-object v1, p0, Lvd;->a:Lvg;

    iget-object v1, v1, Lvg;->n:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lli;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lbbc;->c:Ljava/lang/Object;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lvd;->b:Lve;

    iget-object v1, v0, Lve;->l:Lbkb;

    iget-object v1, v1, Lbkb;->a:Ljava/lang/Object;

    iget-object v0, v0, Lve;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lva;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lqz;

    iget-object v1, v1, Lqz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lva;->a(Ljava/lang/String;)Lrd;

    move-result-object v0

    return-object v0

    :pswitch_9
    new-instance v0, Lvt;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v2, v1, Lve;->l:Lbkb;

    iget-object v2, v2, Lbkb;->a:Ljava/lang/Object;

    iget-object v1, v1, Lve;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lrd;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lvz;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lvy;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lwm;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lwo;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lqx;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lnt;

    iget-object v1, p0, Lvd;->b:Lve;

    iget-object v1, v1, Lve;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lwi;

    check-cast v2, Lqz;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lvt;-><init>(Lqz;Lrd;Lvz;Lvy;Lwm;Lwo;Lqx;Lnt;Lwi;[B)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
