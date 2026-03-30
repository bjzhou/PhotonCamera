.class public final synthetic Lgbd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgbi;

.field public final synthetic b:Lszn;

.field public final synthetic c:I

.field public final synthetic d:Lj$/time/Instant;

.field public final synthetic e:Lhoh;

.field public final synthetic f:Lfdn;


# direct methods
.method public synthetic constructor <init>(Lgbi;Lszn;ILj$/time/Instant;Lfdn;Lhoh;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgbd;->a:Lgbi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgbd;->b:Lszn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-object p6, p0, Lgbd;->e:Lhoh;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput p3, p0, Lgbd;->c:I

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

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p5, p0, Lgbd;->f:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p4, p0, Lgbd;->d:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3}, Lhoh;->o(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-direct {v3, v4, v1, v2, v0}, Lszc;-><init>(Lj$/time/Instant;Lj$/util/Optional;ZZ)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgbd;->e:Lhoh;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v4, v1, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_7
    iget-object v1, v0, Lszn;->b:Ltav;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_1
    :try_start_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Session already started."

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    sget-object v3, Lhlw;->r:Lhmn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v2, Lhlw;->o:Lhmn;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a([B)Ltbf;

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object p0, p0, Lgbi;->k:Lgei;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, p0, Lgbd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lhlw;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lgei;->k()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    new-instance v3, Lszc;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, p0, Lgbd;->d:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lgbd;->b:Lszn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    iput-boolean v0, p0, Lgbi;->o:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Lhoh;->o(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v4, v5, v2}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->startSessionImpl(JI)[B

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, v0, Lszn;->h:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-object v1, v0, Lszn;->h:Ljava/util/Map;

    nop

    nop

    nop

    iget-object v4, v0, Lszn;->j:Lhdn;

    nop

    nop

    new-instance v5, Lszh;

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v6, Ltbg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltbg;->b()Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;

    iget-object v6, v4, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhdn;->b:Ljava/lang/Object;

    nop

    check-cast v4, Ltaq;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltaq;->b()Ltap;

    check-cast v6, Lqnt;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, v3, v6}, Lszh;-><init>(Lszo;Lqnt;)V

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_20

    nop

    nop

    :goto_20
    iget-object p0, p0, Lgbd;->a:Lgbi;

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

    :goto_21
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
