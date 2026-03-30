.class public Lkwe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwp;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public a:Lprw;

.field private final c:Lkwb;

.field private final d:Lpdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lkwe;->b:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "kwe"

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkwb;Lpdf;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkwe;->c:Lkwb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkwe;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Lrss;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkwe;->a:Lprw;

    nop

    nop

    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(JLpin;Lpgo;)Lkwo;
    .locals 9

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    throw v1

    nop

    nop

    nop
    :try_end_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-boolean v3, p2, Lkwb;->d:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljrq;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljrq;-><init>(I)V

    invoke-virtual {v2, v3}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Lpgo;

    nop

    nop

    invoke-virtual {p2, p3, v2}, Lkwb;->a(Lpin;Lpgo;)V
    :try_end_2
    .catch Lpfi; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v8, :cond_4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    :try_start_3
    invoke-virtual {v6}, Lpim;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_18

    nop

    :catch_0
    move-exception v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    :catch_1
    move-exception v2

    nop

    nop

    :try_start_5
    sget-object v4, Lkwb;->a:Lsdb;

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-string v5, "Error getting ZSL metering metadata."

    nop

    const/16 v6, 0xc26

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6, v4, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lpfi; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    :goto_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_11
    :try_start_6
    invoke-virtual {v6}, Lpim;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v6, p2, Lkwb;->c:Lpdf;

    nop

    nop

    invoke-interface {v6}, Lpdf;->g()V
    :try_end_7
    .catch Lpfi; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    :try_start_8
    iget-object v2, p2, Lkwb;->b:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpgh;->i()Lpgo;

    move-result-object p4

    nop

    nop

    nop

    nop
    :try_end_8
    .catch Lpfi; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_7
    goto/32 :goto_8

    nop

    :goto_15
    if-eqz p4, :cond_8

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_9
    sget-object p2, Lkwe;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 p3, 0xc2c

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p3, "No FrameServer session or FrameStream, ignoring."

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->s(Ljava/lang/String;)V

    move-object v2, p1

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lkwe;->d:Lpdf;

    nop

    nop

    nop

    nop

    const-string v0, "getMeteringImage"

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p2, p0, Lkwe;->c:Lkwb;

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    move v1, v3

    nop

    :goto_18
    :try_start_a
    iget-object v2, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    if-eqz v1, :cond_9

    nop

    nop

    iget-object v1, p2, Lkwb;->b:Lrss;

    nop

    nop

    new-instance v2, Ljrq;

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljrq;-><init>(I)V

    invoke-virtual {v1, v2}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

    nop

    invoke-virtual {v0, p4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    check-cast p4, Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3, p4}, Lkwb;->a(Lpin;Lpgo;)V

    :cond_9
    throw p1

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_a
    :try_start_b
    iget-object v1, p2, Lkwb;->c:Lpdf;

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    iget-object v1, p2, Lkwb;->b:Lrss;

    nop

    nop

    new-instance v3, Ljrq;

    nop

    nop

    invoke-direct {v3, v0}, Ljrq;-><init>(I)V

    invoke-virtual {v1, v3}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0, p4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    check-cast p4, Lpgo;

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, p3, p4}, Lkwb;->a(Lpin;Lpgo;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_23

    nop

    nop

    :catch_2
    move-exception v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    move-object v1, v2

    nop

    nop

    :goto_1e
    :try_start_c
    sget-object v2, Lkwb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const/16 v2, 0xc27

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    const-string v2, "Error retrieving the metadata Frame."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v1, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    if-eqz v3, :cond_b

    nop

    nop

    nop

    iget-object v1, p2, Lkwb;->b:Lrss;

    nop

    nop

    new-instance v2, Ljrq;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljrq;-><init>(I)V

    invoke-virtual {v1, v2}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    check-cast p4, Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3, p4}, Lkwb;->a(Lpin;Lpgo;)V

    :cond_b
    move-object v2, p1

    nop

    :cond_c
    :goto_1f
    iget-object p2, p0, Lkwe;->d:Lpdf;

    nop

    nop

    invoke-interface {p2}, Lpdf;->g()V

    :goto_20
    if-eqz v2, :cond_d

    nop

    nop

    nop

    nop

    iget-object p1, v2, Lkwn;->c:Lprw;

    nop

    nop

    nop

    nop

    nop

    :cond_d
    iput-object p1, p0, Lkwe;->a:Lprw;

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lkwd;

    nop

    nop

    invoke-direct {p1, p0, v2}, Lkwd;-><init>(Lkwe;Lkwn;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_e
    :try_start_e
    invoke-virtual {p2, v2}, Lkwb;->b(Lpge;)Lkwn;

    move-result-object v2

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lkwn;->c:Lprw;

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lpfi; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move v3, v1

    nop

    :goto_23
    :try_start_f
    iget-object v2, p2, Lkwb;->c:Lpdf;

    nop

    nop

    const-string v4, "pslRequest"

    nop

    invoke-interface {v2, v4}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {p3}, Lpin;->l()Lqgk;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v4, p2, Lkwb;->b:Lrss;

    nop

    nop

    nop

    move-object v6, p1

    nop

    nop

    nop

    nop

    move-object v5, p4

    nop

    :goto_24
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v7, :cond_0

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v6

    nop

    nop

    if-eqz v6, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    invoke-interface {v5}, Lpgh;->i()Lpgo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :cond_f
    invoke-virtual {v2}, Lqgk;->d()V

    invoke-virtual {v2, v5}, Lqgk;->c(Lpgo;)V
    :try_end_f
    .catch Lpfi; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    invoke-virtual {v2}, Lqgk;->b()Lphz;

    move-result-object v6

    nop

    nop

    invoke-virtual {p3, v6}, Lpin;->e(Lphz;)Lpim;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    iget-object v7, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v8, "result"

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lpim;->a(Lpgo;)Lpge;

    move-result-object v7

    nop

    nop

    invoke-virtual {p2, v7}, Lkwb;->b(Lpge;)Lkwn;

    move-result-object v7

    nop

    nop

    nop

    if-eqz v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v7, Lkwn;->c:Lprw;

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object v6, v7

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    goto/16 :goto_1b

    nop

    :catchall_4
    move-exception p1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_12
    iget-object v2, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "zslRequest"

    nop

    nop

    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v2, p2, Lkwb;->b:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v3, p2, Lkwb;->d:Z

    nop

    nop

    nop

    nop
    :try_end_12
    .catch Lpfi; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Lpgh;->i()Lpgo;

    move-result-object v2

    nop

    nop

    invoke-interface {v2}, Lpgo;->d()Ljava/util/Set;

    iget-object v2, p2, Lkwb;->b:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Lpgh;->c()Lpge;

    move-result-object v2

    nop

    nop

    nop
    :try_end_13
    .catch Lpfi; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, v6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    :try_start_14
    iget-object v1, p2, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    if-eqz v3, :cond_c

    nop

    nop

    nop

    iget-object v1, p2, Lkwb;->b:Lrss;

    nop

    nop

    nop

    nop

    new-instance v3, Ljrq;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljrq;-><init>(I)V

    invoke-virtual {v1, v3}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    check-cast p4, Lpgo;

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/32 :goto_28

    nop

    nop

    :goto_2c
    goto/16 :goto_24

    nop

    nop

    :catchall_5
    move-exception v1

    nop

    nop

    nop

    :try_start_15
    invoke-virtual {v6}, Lpim;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_30
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_31
    move-object v2, p1

    nop

    :goto_32
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method
