.class public final synthetic Lgmh;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field public final synthetic a:Lftj;

.field public final synthetic b:Lika;

.field public final synthetic c:Ldhi;

.field public final synthetic d:Lmqp;

.field public final synthetic e:Lfuz;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ldja;

.field private final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lfuz;Lily;Ldja;Lftj;Lika;Ldhi;Lmqp;I[B[B[B[B[B)V
    .locals 0

    iput p8, p0, Lgmh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmh;->e:Lfuz;

    iput-object p2, p0, Lgmh;->f:Ljava/lang/Object;

    iput-object p3, p0, Lgmh;->g:Ldja;

    iput-object p4, p0, Lgmh;->a:Lftj;

    iput-object p5, p0, Lgmh;->b:Lika;

    iput-object p6, p0, Lgmh;->c:Ldhi;

    iput-object p7, p0, Lgmh;->d:Lmqp;

    return-void
.end method

.method public synthetic constructor <init>(Lfuz;Lkli;Ldja;Lftj;Lika;Ldhi;Lmqp;I[B[B[B[B[B)V
    .locals 0

    iput p8, p0, Lgmh;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmh;->e:Lfuz;

    iput-object p2, p0, Lgmh;->f:Ljava/lang/Object;

    iput-object p3, p0, Lgmh;->g:Ldja;

    iput-object p4, p0, Lgmh;->a:Lftj;

    iput-object p5, p0, Lgmh;->b:Lika;

    iput-object p6, p0, Lgmh;->c:Ldhi;

    iput-object p7, p0, Lgmh;->d:Lmqp;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lgmh;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgmh;->e:Lfuz;

    iget-object v4, p0, Lgmh;->f:Ljava/lang/Object;

    iget-object v3, p0, Lgmh;->g:Ldja;

    iget-object v5, p0, Lgmh;->a:Lftj;

    iget-object v6, p0, Lgmh;->b:Lika;

    iget-object v7, p0, Lgmh;->c:Ldhi;

    iget-object v8, p0, Lgmh;->d:Lmqp;

    invoke-virtual {v0}, Lklw;->M()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lklw;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lgmh;->e:Lfuz;

    iget-object v3, p0, Lgmh;->f:Ljava/lang/Object;

    iget-object v4, p0, Lgmh;->g:Ldja;

    iget-object v6, p0, Lgmh;->a:Lftj;

    iget-object v7, p0, Lgmh;->b:Lika;

    iget-object v8, p0, Lgmh;->c:Ldhi;

    iget-object v9, p0, Lgmh;->d:Lmqp;

    invoke-virtual {v0}, Lklw;->M()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lklw;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    check-cast v3, Lily;

    invoke-virtual {v3}, Lily;->d()Lkli;

    move-result-object v5

    invoke-interface {v5}, Lkli;->i()Lkll;

    invoke-interface {v5}, Lkli;->r()Ljava/util/List;

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lewq;->h(Ldja;Lkli;Lftj;Lika;Ldhi;Lmqp;Z)Lkfl;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lgmh;->e:Lfuz;

    iget-object v3, p0, Lgmh;->f:Ljava/lang/Object;

    iget-object v4, p0, Lgmh;->g:Ldja;

    iget-object v6, p0, Lgmh;->a:Lftj;

    iget-object v7, p0, Lgmh;->b:Lika;

    iget-object v8, p0, Lgmh;->c:Ldhi;

    iget-object v9, p0, Lgmh;->d:Lmqp;

    invoke-virtual {v0}, Lklw;->M()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lklw;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lmoz;->e(Z)V

    check-cast v3, Lily;

    invoke-virtual {v3}, Lily;->h()Lkli;

    move-result-object v5

    invoke-interface {v5}, Lkli;->i()Lkll;

    invoke-interface {v5}, Lkli;->r()Ljava/util/List;

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Lewq;->h(Ldja;Lkli;Lftj;Lika;Ldhi;Lmqp;Z)Lkfl;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lmoz;->e(Z)V

    invoke-interface {v4}, Lkli;->r()Ljava/util/List;

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lewq;->h(Ldja;Lkli;Lftj;Lika;Ldhi;Lmqp;Z)Lkfl;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
