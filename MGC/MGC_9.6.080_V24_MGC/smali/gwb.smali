.class final Lgwb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lpog;

.field final synthetic b:Llxn;

.field final synthetic c:Lgwc;


# direct methods
.method public constructor <init>(Lgwc;Lpog;Llxn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgwb;->a:Lpog;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p3, p0, Lgwb;->b:Llxn;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lgwb;->c:Lgwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_1

    nop

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

    :goto_1
    iget-object v0, p0, Lgwb;->c:Lgwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, p1}, Lgwc;->c(Llxn;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lgwb;->b:Llxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0, p1}, Lgwc;->c(Llxn;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgwb;->c:Lgwc;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    iget-object p0, p0, Lgwb;->b:Llxn;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lprw;

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgwb;->c:Lgwc;

    nop

    nop

    iget-object v1, v0, Lgwc;->f:Lsuu;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lgwc;->b:Lgwh;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgwc;->a:Lgqc;

    nop

    nop

    nop

    iget-object v0, v0, Lgqc;->t:Loyd;

    nop

    nop

    nop

    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lpcg;

    nop

    iget-object v3, p0, Lgwb;->a:Lpog;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Lprw;->g()Ljava/util/List;

    move-result-object v4

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lprv;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    nop

    nop

    nop

    new-array v5, v5, [B

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Lprw;->close()V

    invoke-virtual {v2, v5, v0, v3}, Lgwh;->a([BLpcg;Lpog;)Lgrd;

    move-result-object p1

    nop

    nop

    iget-object v0, p0, Lgwb;->c:Lgwc;

    nop

    iget v0, v0, Lgwc;->d:I

    nop

    invoke-virtual {p1, v0}, Lgrd;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    iget-object v0, p0, Lgwb;->c:Lgwc;

    nop

    nop

    nop

    iget-wide v4, v0, Lgwc;->e:J

    nop

    nop

    nop

    nop

    sub-long/2addr v2, v4

    nop

    invoke-virtual {p1, v2, v3}, Lgrd;->b(J)V

    iget-object v0, p0, Lgwb;->b:Llxn;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p1, Lgrd;->j:Llxn;

    nop

    invoke-virtual {p1}, Lgrd;->a()Lgre;

    move-result-object p1

    nop

    invoke-virtual {v1, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lprw;->close()V

    throw v0

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
