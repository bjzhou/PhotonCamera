.class public final Lvc;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field private final a:Lvg;

.field private final b:I

.field private final c:Llij;


# direct methods
.method public constructor <init>(Lvg;Llij;I[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc;->a:Lvg;

    iput-object p2, p0, Lvc;->c:Llij;

    iput p3, p0, Lvc;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lvc;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lsp;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ldqx;

    iget-object v2, v0, Lvc;->c:Llij;

    iget-object v2, v2, Llij;->e:Ljava/lang/Object;

    check-cast v2, Lva;

    iget-object v3, v2, Lva;->a:Ljava/lang/Object;

    iget-object v2, v2, Lva;->c:Ljava/lang/Object;

    iget-object v4, v0, Lvc;->a:Lvg;

    iget-object v4, v4, Lvg;->g:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lti;

    move-object/from16 v19, v2

    check-cast v19, Lwm;

    move-object/from16 v18, v3

    check-cast v18, Lqz;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Lsp;-><init>(Ldqx;Lqz;Lwm;Lti;I[B[B)V

    return-object v1

    :pswitch_0
    new-instance v1, Lsp;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ldqx;

    iget-object v2, v0, Lvc;->c:Llij;

    iget-object v2, v2, Llij;->e:Ljava/lang/Object;

    check-cast v2, Lva;

    iget-object v3, v2, Lva;->c:Ljava/lang/Object;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    iget-object v5, v0, Lvc;->a:Lvg;

    iget-object v5, v5, Lvg;->g:Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lti;

    move-object v6, v2

    check-cast v6, Lqz;

    move-object v5, v3

    check-cast v5, Lwm;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lsp;-><init>(Ldqx;Lwm;Lqz;Lti;I[B[B)V

    return-object v1

    :pswitch_1
    new-instance v1, Lsn;

    iget-object v3, v0, Lvc;->a:Lvg;

    iget-object v3, v3, Lvg;->b:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldqx;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v2}, Lsn;-><init>(Ldqx;I[B[B)V

    return-object v1

    :pswitch_2
    new-instance v1, Lsn;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ldqx;

    iget-object v2, v0, Lvc;->c:Llij;

    iget-object v2, v2, Llij;->e:Ljava/lang/Object;

    check-cast v2, Lva;

    iget-object v2, v2, Lva;->a:Ljava/lang/Object;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lsn;-><init>(Ldqx;I[C[B[B)V

    return-object v1

    :pswitch_3
    new-instance v1, Lsn;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ldqx;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lsn;-><init>(Ldqx;I[B[B[B)V

    return-object v1

    :pswitch_4
    iget-object v1, v0, Lvc;->c:Llij;

    iget-object v2, v1, Llij;->a:Ljava/lang/Object;

    iget-object v1, v1, Llij;->e:Ljava/lang/Object;

    check-cast v1, Lva;

    iget-object v1, v1, Lva;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltt;

    return-object v1

    :pswitch_5
    iget-object v1, v0, Lvc;->a:Lvg;

    iget-object v1, v1, Lvg;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ldqx;->e:Ljava/lang/Object;

    new-instance v2, Lopt;

    const-string v3, "CXCP-Camera2Controller"

    invoke-direct {v2, v3}, Lopt;-><init>(Ljava/lang/String;)V

    check-cast v1, Lokp;

    invoke-virtual {v1, v2}, Lokp;->plus(Lola;)Lola;

    move-result-object v1

    invoke-static {v1}, Lopx;->e(Lola;)Lopu;

    move-result-object v1

    return-object v1

    :pswitch_6
    new-instance v1, Lsz;

    iget-object v3, v0, Lvc;->c:Llij;

    iget-object v3, v3, Llij;->c:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopu;

    iget-object v4, v0, Lvc;->c:Llij;

    iget-object v5, v4, Llij;->e:Ljava/lang/Object;

    check-cast v5, Lva;

    iget-object v6, v5, Lva;->a:Ljava/lang/Object;

    iget-object v5, v5, Lva;->b:Ljava/lang/Object;

    iget-object v4, v4, Llij;->b:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ltt;

    iget-object v4, v0, Lvc;->c:Llij;

    new-instance v8, Lbby;

    iget-object v9, v4, Llij;->f:Ljava/lang/Object;

    check-cast v9, Lvg;

    iget-object v9, v9, Lvg;->b:Loiw;

    invoke-interface {v9}, Loiw;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldqx;

    iget-object v4, v4, Llij;->e:Ljava/lang/Object;

    check-cast v4, Lva;

    iget-object v10, v4, Lva;->a:Ljava/lang/Object;

    iget-object v4, v4, Lva;->c:Ljava/lang/Object;

    check-cast v4, Lwm;

    invoke-direct {v8, v9, v4, v2, v2}, Lbby;-><init>(Ldqx;Lwm;[B[B)V

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->i:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ldqx;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->m:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lva;

    iget-object v2, v0, Lvc;->a:Lvg;

    iget-object v2, v2, Lvg;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lne;

    move-object v4, v6

    check-cast v4, Lqz;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v2, v1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Lsz;-><init>(Lopu;Lqz;Lvy;Ltt;Lbby;Ldqx;Lva;Lne;[B[B[B[B)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
