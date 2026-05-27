.class public final Ljwk;
.super Ljava/lang/Object;

# interfaces
.implements Ljxy;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lhol;I)V
    .locals 0

    iput p2, p0, Ljwk;->b:I

    iput-object p1, p0, Ljwk;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljwo;I)V
    .locals 0

    iput p2, p0, Ljwk;->b:I

    iput-object p1, p0, Ljwk;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljyk;)V
    .locals 3

    iget v0, p0, Ljwk;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lhol;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "onEncoderError(): %s"

    const/16 v2, 0xee7

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object p1, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast p1, Lhol;

    iget-object p1, p1, Lhol;->ag:Lhor;

    invoke-virtual {p1}, Lhor;->a()V

    return-void

    :pswitch_0
    iget-object p1, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast p1, Ljwo;

    invoke-virtual {p1}, Ljwo;->b()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    iget v0, p0, Ljwk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->ag:Lhor;

    invoke-virtual {v0}, Lhor;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Ljwo;

    invoke-virtual {v0}, Ljwo;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    iget v0, p0, Ljwk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->an:Lcvm;

    sget-object v1, Lkqi;->e:Lkqi;

    invoke-virtual {v0, v1}, Lcvm;->i(Lkqi;)Lctd;

    move-result-object v0

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->af:Ljwo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ljwo;->a:Ljyc;

    invoke-interface {v0}, Lctd;->f()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljyc;->m(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    invoke-static {}, Lhpx;->a()Lhpw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhpw;->i(Lctd;)V

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {v2, v0}, Lhpw;->n(Lmqp;)V

    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-boolean v0, v0, Lhol;->x:Z

    invoke-virtual {v2, v0}, Lhpw;->e(Z)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Lhpw;->m(Ljava/lang/String;)V

    check-cast v1, Lhol;

    iput-object v2, v1, Lhol;->Y:Lhpw;

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Ljwk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->ag:Lhor;

    invoke-virtual {v0}, Lhor;->a()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Ljwo;

    invoke-virtual {v0}, Ljwo;->b()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()V
    .locals 9

    iget v0, p0, Ljwk;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v0, Lhol;

    iget-object v0, v0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    :try_start_0
    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v1, Lhol;

    invoke-virtual {v1}, Lhol;->c()V

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lhol;

    iget-object v2, v2, Lhol;->Y:Lhpw;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->E:Lgxz;

    invoke-virtual {v2, v1}, Lhpw;->k(Lgxz;)V

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lhol;

    iget-object v2, v2, Lhol;->B:Ljava/util/ArrayList;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->Y:Lhpw;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->d:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lhol;

    iget-object v4, v4, Lhol;->u:Lhof;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->B:Ljava/util/ArrayList;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpw;

    iget-object v5, v4, Lhof;->t:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v6, v4, Lhof;->x:Lhpw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lhof;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->h(J)V

    iget-object v6, v4, Lhof;->x:Lhpw;

    invoke-virtual {v4}, Lhof;->c()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->j(J)V

    iget-object v6, v4, Lhof;->x:Lhpw;

    invoke-virtual {v4}, Lhof;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->c(J)V

    iget-object v6, v4, Lhof;->x:Lhpw;

    invoke-virtual {v4}, Lhof;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->d(J)V

    iget-object v6, v4, Lhof;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v4, Lhof;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v4, Lhof;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-object v1, v4, Lhof;->x:Lhpw;

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_0
    iget-object v1, p0, Ljwk;->a:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Lhol;

    iget-object v4, v4, Lhol;->j:Lhno;

    check-cast v1, Lhol;

    iget-object v1, v1, Lhol;->B:Ljava/util/ArrayList;

    invoke-static {v1}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpw;

    iget-object v5, v4, Lhno;->w:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v6, v4, Lhno;->E:Lhpw;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lhno;->d()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->h(J)V

    iget-object v6, v4, Lhno;->E:Lhpw;

    invoke-virtual {v4}, Lhno;->c()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->j(J)V

    iget-object v6, v4, Lhno;->E:Lhpw;

    invoke-virtual {v4}, Lhno;->a()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->c(J)V

    iget-object v6, v4, Lhno;->E:Lhpw;

    invoke-virtual {v4}, Lhno;->b()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lhpw;->d(J)V

    iget-object v6, v4, Lhno;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v4, Lhno;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v6, v4, Lhno;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-object v1, v4, Lhno;->E:Lhpw;

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(JJ)V
    .locals 0

    iget p1, p0, Ljwk;->b:I

    return-void
.end method
