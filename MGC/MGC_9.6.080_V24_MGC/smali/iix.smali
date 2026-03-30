.class final Liix;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilp;


# instance fields
.field final synthetic a:Lioy;

.field final synthetic b:Link;

.field final synthetic c:Lijb;

.field final synthetic d:Lijd;

.field final synthetic e:Llko;


# direct methods
.method public constructor <init>(Lijb;Lioy;Llko;Link;Lijd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Liix;->b:Link;

    nop

    nop

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

    :goto_1
    iput-object p2, p0, Liix;->a:Lioy;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p3, p0, Liix;->e:Llko;

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

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Liix;->d:Lijd;

    nop

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

    :goto_6
    iput-object p1, p0, Liix;->c:Lijb;

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
.end method


# virtual methods
.method public final f(Linb;Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 8

    goto/32 :goto_13

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

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1

    nop

    nop

    :cond_0
    iget-object v1, p0, Liix;->b:Link;

    nop

    nop

    nop

    iput-object p2, v1, Link;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    invoke-virtual {v1, p3}, Link;->f(Lcom/google/googlex/gcam/ShotMetadata;)V

    iget-object p1, p1, Linb;->t:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    iput-object p1, v1, Link;->d:Lcom/google/googlex/gcam/JpgEncoderMetadata;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Liix;->a:Lioy;

    nop

    nop

    invoke-virtual {v1, p1}, Link;->c(Lioy;)V

    invoke-virtual {v1}, Link;->a()Linl;

    move-result-object p1

    nop

    nop

    iget-object p2, p0, Liix;->c:Lijb;

    nop

    nop

    iget-object p0, p0, Liix;->d:Lijd;

    nop

    invoke-virtual {p2, p0, p1}, Lijb;->b(Lijd;Linl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Liix;->c:Lijb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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
    goto/32 :goto_b

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lpde;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lpde;

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

    :goto_9
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Liix;->c:Lijb;

    nop

    nop

    nop

    iget-object v1, v1, Lijb;->h:Lfdn;

    nop

    nop

    invoke-virtual {v1}, Lfdn;->s()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, p0, Liix;->a:Lioy;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lioy;->a()I

    move-result v1

    nop

    nop

    const/4 v2, 0x3

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Liix;->a:Lioy;

    nop

    nop

    nop

    invoke-virtual {v1}, Lioy;->a()I

    move-result v1

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-ne v1, v2, :cond_0

    nop

    :cond_1
    iget-object v1, p0, Liix;->c:Lijb;

    nop

    iget-object v1, v1, Lijb;->b:Lpcu;

    nop

    const-string v2, "Sending primary RGB for fusion processing."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, p0, Liix;->c:Lijb;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lijb;->h:Lfdn;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lfdn;->r()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Limm;

    nop

    nop

    iget-object p0, p0, Liix;->e:Llko;

    nop

    iget-object p1, p1, Linb;->p:Lioy;

    nop

    nop

    invoke-interface {v1, p0, p1}, Limm;->d(Llko;Lioy;)Limo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v4, Lcom/google/googlex/gcam/PortraitRequest;

    nop

    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v2, p1}, Lcom/google/googlex/gcam/PortraitRequest;-><init>(JZ)V

    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object v6

    nop

    nop

    nop

    new-instance v7, Lows;

    nop

    nop

    invoke-direct {v7}, Lows;-><init>()V

    move-object v2, p0

    nop

    move-object v3, p2

    nop

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v2 .. v7}, Limo;->c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lsui;Lows;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {p0}, Limo;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Lijb;->a:Lpdf;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_4
    invoke-interface {p0}, Limo;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_9

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

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

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_17
    const-string v2, "RgbCallback"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
