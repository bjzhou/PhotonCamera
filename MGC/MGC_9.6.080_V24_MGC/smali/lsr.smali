.class public Llsr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Libo;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Llsk;

.field private final c:Llss;

.field private final d:Libn;

.field private final e:Ljvz;

.field private final f:Lrss;

.field private final g:Lrss;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "lsr"

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Llsr;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Llsk;Llss;Libn;Ljvz;Loyn;Lhoh;Ltxm;)V
    .locals 2

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    iput-object p1, p0, Llsr;->b:Llsk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-interface {p7}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lich;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Llsr;->g:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Llsr;->c:Llss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p7}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Llsr;->f:Lrss;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Llsr;->d:Libn;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    :goto_14
    iput-wide v0, p0, Llsr;->h:J

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

    :goto_15
    iput-object p1, p0, Llsr;->f:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Llsr;->g:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1c
    invoke-virtual {p6, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Llsr;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    iput-object p1, p0, Llsr;->f:Lrss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    :goto_28
    sget-object p2, Lhmk;->e:Lhmn;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    check-cast p1, Lice;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    goto/32 :goto_11

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2f
    iput-object p4, p0, Llsr;->e:Ljvz;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p1, 0x1

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    sget-object p1, Lhmk;->a:Lhmo;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized b(J)V
    .locals 11

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v0}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_13

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    :try_start_1
    iget-object v1, p0, Llsr;->c:Llss;

    nop

    nop

    invoke-virtual {v1, p1, p2}, Llss;->a(J)Llso;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    nop

    :cond_1
    iget-object v1, p0, Llsr;->d:Libn;

    nop

    nop

    invoke-virtual {v1, p1, p2}, Libn;->a(J)Llsc;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    iget-object v2, p0, Llsr;->g:Lrss;

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Llsc;->q:[Llsf;

    nop

    nop

    array-length v3, v3

    nop

    if-lez v3, :cond_2

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    invoke-interface {v2, p1, p2}, Lice;->a(J)Lsvr;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    :cond_2
    const-string v2, "frameQualityScorer.getFrameScore"

    nop

    nop

    nop

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Llsr;->b:Llsk;

    nop

    nop

    nop

    invoke-virtual {v2, v0, v1}, Llsk;->a(Lprw;Llsc;)Llso;

    move-result-object v1

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-wide v2, p0, Llsr;->h:J

    nop

    nop

    nop

    nop

    cmp-long v2, p1, v2

    nop

    if-gtz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Llsr;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0xf8c

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lscz;

    nop

    const-string v3, "Out of order frame scores detected!"

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Llsr;->c:Llss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Llss;->d(Llso;)V

    iget-object v2, p0, Llsr;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    iget-object v3, v1, Llso;->p:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    iget-object v1, v1, Llso;->p:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v1

    nop

    nop

    nop

    check-cast v4, Llsy;

    nop

    nop

    nop

    iget-object v4, v4, Llsy;->a:[Llsx;

    nop

    array-length v5, v4

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    :goto_c
    if-ge v6, v5, :cond_4

    nop

    aget-object v7, v4, v6

    nop

    nop

    nop

    invoke-static {}, Licd;->a()Licc;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-wide v9, v7, Llsx;->a:J

    nop

    invoke-virtual {v8, v9, v10}, Licc;->d(J)V

    iget-object v9, v7, Llsx;->b:Lrss;

    nop

    iput-object v9, v8, Licc;->a:Lrss;

    nop

    nop

    nop

    nop

    iget v9, v7, Llsx;->c:F

    nop

    nop

    invoke-virtual {v8, v9}, Licc;->c(F)V

    iget-object v9, v7, Llsx;->h:Lrss;

    nop

    nop

    nop

    iput-object v9, v8, Licc;->b:Lrss;

    nop

    nop

    nop

    nop

    iget v7, v7, Llsx;->i:F

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v7}, Licc;->b(F)V

    invoke-virtual {v8}, Licc;->a()Licd;

    move-result-object v7

    nop

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_4
    new-instance v4, Lsvr;

    nop

    nop

    check-cast v1, Llsy;

    nop

    iget-wide v5, v1, Llsy;->f:J

    nop

    nop

    nop

    invoke-direct {v4, v5, v6, v3}, Lsvr;-><init>(JLjava/lang/Object;)V

    check-cast v2, Lich;

    nop

    invoke-virtual {v2, v4}, Lich;->c(Lsvr;)V

    :cond_5
    iput-wide p1, p0, Llsr;->h:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_d
    :try_start_2
    invoke-interface {v0}, Lprw;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p0, Llsr;->e:Ljvz;

    nop

    invoke-interface {v0, p1, p2}, Ljvz;->d(J)Lprw;

    move-result-object v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final declared-synchronized dz(Llsc;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p1, Llsc;->c:J

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v1}, Llsr;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop
.end method
