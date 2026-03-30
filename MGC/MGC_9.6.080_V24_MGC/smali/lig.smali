.class final Llig;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilp;


# instance fields
.field final synthetic a:Llii;

.field final synthetic b:Llko;


# direct methods
.method public constructor <init>(Llii;Llko;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llig;->b:Llko;

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

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Llig;->a:Llii;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/googlex/gcam/InterleavedImageU8;Linb;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    invoke-static {v3, v1, v2}, Lioy;->b(IILryh;)Lioy;

    move-result-object v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1c

    nop

    nop

    :goto_4
    invoke-interface {v0, p0, v1}, Limm;->d(Llko;Lioy;)Limo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_6
    const v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-interface {p0}, Limo;->close()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llig;->a:Llii;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Llii;->c:Lrss;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    throw p1

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    check-cast v0, Limm;

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

    :goto_e
    iget-object v1, p2, Linb;->p:Lioy;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto :goto_17

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    const/4 v3, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    iget-object p2, p2, Linb;->c:Ljava/util/List;

    nop

    nop

    goto :goto_14

    nop

    nop

    :goto_13
    sget p2, Lryb;->d:I

    nop

    sget-object p2, Lsbh;->a:Lryb;

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1, p3, p2, v0}, Limo;->f(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;Lcom/google/googlex/gcam/CyclopsParameters;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p0}, Limo;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Lsbm;->a:Lryh;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Llig;->b:Llko;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sget-object v0, Llii;->a:Lsdb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2, p1, p3}, Llig;->a(Lcom/google/googlex/gcam/InterleavedImageU8;Linb;Lcom/google/googlex/gcam/ShotMetadata;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_2

    nop

    nop

    nop
.end method
