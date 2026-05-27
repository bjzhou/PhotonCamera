.class public final Lkqc;
.super Ljava/lang/Object;

# interfaces
.implements Lkqb;


# instance fields
.field final a:Lkpo;

.field public final b:Lkqo;

.field final c:Ldqx;


# direct methods
.method public constructor <init>(Lkqa;Lkpo;Ldqx;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkqc;->a:Lkpo;

    iput-object p3, p0, Lkqc;->c:Ldqx;

    iget-object p1, p1, Lkqa;->p:Lkqo;

    iput-object p1, p0, Lkqc;->b:Lkqo;

    return-void
.end method


# virtual methods
.method public final a(Lkqo;Ljava/lang/String;J)Lkpl;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-wide/from16 v14, p3

    iget-object v1, v0, Lkqc;->c:Ldqx;

    new-instance v2, Lkpx;

    move-object v10, v2

    iget-object v3, v1, Ldqx;->c:Ljava/lang/Object;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Ldqx;->d:Ljava/lang/Object;

    check-cast v5, Lhlf;

    invoke-virtual {v5}, Lhlf;->a()Lkqa;

    move-result-object v5

    iget-object v6, v1, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v6}, Loiw;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkbc;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ldqx;->a:Ljava/lang/Object;

    check-cast v1, Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkaq;

    move-result-object v7

    check-cast v4, Llij;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lkpx;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Llij;Lkqa;Lkbc;Lkaq;[B)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    iget-object v8, v0, Lkqc;->a:Lkpo;

    new-instance v19, Lkpn;

    move-object/from16 v1, v19

    iget-object v2, v8, Lkpo;->a:Ljava/lang/Object;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkqt;

    move-object v2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v8, Lkpo;->b:Ljava/lang/Object;

    check-cast v3, Lhlf;

    invoke-virtual {v3}, Lhlf;->a()Lkqa;

    move-result-object v3

    iget-object v4, v8, Lkpo;->c:Ljava/lang/Object;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Llhe;

    move-object v4, v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lfew;->b:Lfew;

    iget-object v6, v8, Lkpo;->d:Ljava/lang/Object;

    check-cast v6, Lkao;

    invoke-virtual {v6}, Lkao;->a()Lkaq;

    move-result-object v6

    iget-object v7, v8, Lkpo;->e:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Lkbc;

    move-object/from16 v7, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lkpo;->f:Ljava/lang/Object;

    invoke-interface {v8}, Loiw;->get()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lkpo;

    move-object/from16 v8, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v1 .. v18}, Lkpn;-><init>(Lkqt;Lkqa;Llhe;Lkrh;Lkaq;Lkbc;Lkpo;Lkqo;Lkpv;Ljava/lang/String;JJ[B[B[B)V

    return-object v19
.end method
