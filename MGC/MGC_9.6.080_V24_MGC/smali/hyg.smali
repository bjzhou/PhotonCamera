.class final Lhyg;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpge;

.field final synthetic b:Lphh;

.field final synthetic c:Lhyh;


# direct methods
.method public constructor <init>(Lhyh;Lpge;Lphh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhyg;->a:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p3, p0, Lhyg;->b:Lphh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhyg;->c:Lhyh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

    nop

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

    nop

    :goto_4
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_5

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
.end method


# virtual methods
.method public final cJ()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhyg;->a:Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final cV()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    :goto_1
    :try_start_0
    iget-object v0, p0, Lhyg;->c:Lhyh;

    nop

    nop

    iget-object v0, v0, Lhyh;->b:Lfxj;

    nop

    nop

    invoke-virtual {v0}, Lfxj;->b()Lpcg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lhyg;->a:Lpge;

    nop

    invoke-interface {v1}, Lpge;->d()Lpro;

    move-result-object v1

    nop

    nop

    iget v0, v0, Lpcg;->e:I

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    new-instance v2, Llsc;

    nop

    nop

    iget-object v3, p0, Lhyg;->c:Lhyh;

    nop

    nop

    nop

    iget-object v3, v3, Lhyh;->a:Landroid/graphics/Rect;

    nop

    invoke-direct {v2, v1, v0, v3}, Llsc;-><init>(Lprk;ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lhyg;->a:Lpge;

    nop

    nop

    nop

    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v0

    nop

    iget-object v1, p0, Lhyg;->a:Lpge;

    nop

    iget-object v2, p0, Lhyg;->b:Lphh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_3

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_0

    nop

    nop

    invoke-interface {v1}, Lprw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhyg;->a:Lpge;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v2, p0, Lhyg;->c:Lhyh;

    nop

    nop

    nop

    iget-object v2, v2, Lhyh;->c:Limz;

    nop

    nop

    nop

    nop

    iget-wide v3, v0, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v2, Limz;->b:Ljava/lang/Object;

    nop

    nop

    iget-object v2, v2, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v0, Lfdo;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfdo;->T(Lprw;)F

    move-result v0

    nop

    check-cast v2, Lhze;

    nop

    invoke-virtual {v2, v3, v4, v0}, Lhze;->e(JF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_4

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    invoke-interface {v1}, Lprw;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhyg;->a:Lpge;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
