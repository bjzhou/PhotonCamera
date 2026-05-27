.class public final synthetic Lfel;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lfen;Lfgf;Ljava/util/concurrent/Executor;I)V
    .locals 0

    iput p4, p0, Lfel;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfel;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfel;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfel;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lkef;Ljvk;I)V
    .locals 0

    iput p4, p0, Lfel;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfel;->c:Ljava/lang/Object;

    iput-object p2, p0, Lfel;->b:Ljava/lang/Object;

    iput-object p3, p0, Lfel;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 7

    iget v0, p0, Lfel;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lfel;->c:Ljava/lang/Object;

    iget-object v0, p0, Lfel;->b:Ljava/lang/Object;

    iget-object v2, p0, Lfel;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-interface {v0}, Lkef;->b()I

    move-result v4

    const/4 v5, 0x3

    if-gt v4, v5, :cond_2

    if-eq v4, v3, :cond_2

    sget-object v3, Leou;->a:Lnak;

    invoke-virtual {v3}, Lnaf;->c()Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v6, 0x6a6

    invoke-interface {v3, v6}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    invoke-interface {v0}, Lkef;->q()Lkgq;

    move-result-object v0

    iget-object v0, v0, Lkgq;->c:Lmwn;

    const-string v6, "Not enough frames in ZSL ring: %s in %s"

    invoke-interface {v3, v6, v4, v0}, Lnah;->u(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lfel;->a:Ljava/lang/Object;

    iget-object v2, p0, Lfel;->b:Ljava/lang/Object;

    iget-object v3, p0, Lfel;->c:Ljava/lang/Object;

    new-instance v4, Lfek;

    invoke-direct {v4, p1, v2, v1}, Lfek;-><init>(Lkhr;Lfgf;I)V

    check-cast v0, Lfen;

    iget-object v0, v0, Lfen;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lfem;

    invoke-direct {v0, v3, v4, p1}, Lfem;-><init>(Ljava/util/concurrent/Executor;Laea;Lkeb;)V

    invoke-interface {p1, v0}, Lkeb;->k(Lkfg;)V

    return-void

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-le v4, v5, :cond_3

    if-gt v3, v5, :cond_3

    invoke-interface {v0}, Lkef;->q()Lkgq;

    move-result-object v0

    iget-object v0, v0, Lkgq;->c:Lmwn;

    :cond_3
    :goto_1
    if-le v4, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    check-cast v2, Ljvk;

    invoke-virtual {v2, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
