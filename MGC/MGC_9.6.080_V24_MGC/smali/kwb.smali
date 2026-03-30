.class public Lkwb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrss;

.field public final c:Lpdf;

.field public final d:Z

.field private final e:Llgc;

.field private final f:Lrss;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lkwb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "kwb"

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
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Llgc;Lrss;Lpdf;Lhoh;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p5, p1}, Lhoh;->o(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lkwb;->d:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkwb;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Lhnl;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lkwb;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    iput-object p2, p0, Lkwb;->e:Llgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpin;Lpgo;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object p2, Lkwb;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    invoke-interface {p2, p1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    const/16 p2, 0xc2b

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string p2, "Error aborting captures."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    goto/32 :goto_10

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    :try_start_1
    iget-object v0, p0, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "abortCaptures"

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lpin;->d()V

    invoke-virtual {p1}, Lpin;->l()Lqgk;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lqgk;->d()V

    invoke-virtual {v0, p2}, Lqgk;->c(Lpgo;)V

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lpha;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p2, v1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p2, v0, Lqgk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v1, v2, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lqgk;->b()Lphz;

    move-result-object p2

    nop

    invoke-virtual {p1, p2}, Lpin;->e(Lphz;)Lpim;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpim;->close()V
    :try_end_1
    .catch Lpfi; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkwb;->c:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lkwb;->c:Lpdf;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final b(Lpge;)Lkwn;
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    :try_start_0
    iget-object v1, p0, Lkwb;->c:Lpdf;

    nop

    nop

    const-string v2, "awaitComplete"

    nop

    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {p1}, Lpuq;->bC(Lpge;)V

    iget-object v1, p0, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    const-string v2, "getMetadata"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    const-wide/16 v1, -0x1

    nop

    nop

    goto :goto_1

    nop

    :cond_1
    iget-wide v1, v1, Lpgi;->c:J

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    nop

    nop

    iget-object v4, p0, Lkwb;->e:Llgc;

    nop

    new-instance v5, Loel;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v4, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Loel;->d()Lphh;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lphh;->d()Lpnx;

    move-result-object v4

    nop

    if-eqz v3, :cond_5

    nop

    iget-object v0, p0, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    const-string v6, "getImage"

    nop

    nop

    nop

    invoke-interface {v0, v6}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {v5}, Loel;->h()Lprw;

    move-result-object v0

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    sget-object v5, Lkwb;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    const/16 v6, 0xc22

    nop

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    const-string v6, "Frame contains an invalid image: %s"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6, v1, v2}, Lscz;->u(Ljava/lang/String;J)V

    :cond_2
    invoke-interface {v3}, Lpro;->h()Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    iget-object v1, p0, Lkwb;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    iget-object v2, v4, Lpnx;->a:Ljava/lang/String;

    nop

    invoke-interface {v1, v2, v3}, Ljts;->a(Ljava/lang/String;Lpro;)Lpro;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    move-object v1, v3

    nop

    nop

    nop

    nop

    check-cast v1, Ljtt;

    nop

    nop

    iget-object v1, v1, Ljtt;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v4

    nop

    nop

    nop

    :cond_3
    new-instance v1, Lkwn;

    nop

    nop

    invoke-direct {v1, v4, v3, v0}, Lkwn;-><init>(Lpnx;Lpro;Lprw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    :goto_8
    const/16 p1, 0xc23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    move-object v0, v1

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    :goto_a
    check-cast p0, Lscz;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lkwb;->c:Lpdf;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lkwb;->c:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x16

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

    nop

    :goto_13
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lkwb;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Ignoring null Frame."

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lpge;->close()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method
