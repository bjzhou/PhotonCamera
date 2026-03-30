.class public final Lsje;
.super Lsjf;
.source "PG"


# instance fields
.field public final a:Lj$/util/stream/Stream;

.field public final b:Lj$/util/stream/Stream;


# direct methods
.method public constructor <init>(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsje;->a:Lj$/util/stream/Stream;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lsje;->b:Lj$/util/stream/Stream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lsjf;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/util/function/Function;)Lsjf;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/util/function/Function;)Lsjf;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    :goto_1
    throw p0

    nop
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lsje;->a:Lj$/util/stream/Stream;

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lsje;->b:Lj$/util/stream/Stream;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lj$/util/stream/Stream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lj$/util/stream/Stream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x10

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lqxb;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    check-cast p1, Lj$/util/stream/Stream;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    new-instance v0, Lsja;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    invoke-direct {v0, p0, v2}, Lqxb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lsje;->b:Lj$/util/stream/Stream;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1}, Lsja;-><init>(Lsje;Ljava/util/function/BiFunction;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lqxb;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p1, v1}, Lj$/util/stream/StreamSupport;->stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iget-object v1, p0, Lsje;->a:Lj$/util/stream/Stream;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final f(Ljava/util/function/BiConsumer;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-interface {p1, p0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Lsjd;->b:Lsiz;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iget-object v1, v1, Lsiz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lsjd;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lsjd;-><init>(Lsje;)V

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lsjd;->a()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iget-object p0, p0, Lsiz;->a:Ljava/lang/Object;

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

    :goto_10
    goto :goto_a

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iget-object p0, v0, Lsjd;->a:Lsiz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_15
    const v0, 0x1f

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

    nop
.end method
