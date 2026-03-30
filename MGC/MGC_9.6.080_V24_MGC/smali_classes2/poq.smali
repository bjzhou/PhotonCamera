.class public final Lpoq;
.super Lpru;
.source "PG"


# instance fields
.field final synthetic a:Lpot;


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m(Lprw;)Lpos;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-object v1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lprw;->close()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lpot;->e:Z

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    iget-boolean v1, p0, Lpot;->c:Z

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    iget v1, p0, Lpot;->d:I

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    iput v1, p0, Lpot;->d:I

    nop

    nop

    new-instance v1, Lpos;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1}, Lpos;-><init>(Lpot;Lprw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpot;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-exit v0

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

    :goto_b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lpoq;->a:Lpot;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    const v1, 0x10

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpot;Lpsb;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lpru;-><init>(Lpsb;)V

    goto/32 :goto_1

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

    :goto_2
    iput-object p1, p0, Lpoq;->a:Lpot;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final f()Lprw;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-super {p0}, Lpru;->f()Lprw;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lpoq;->51550bab6b6440a4fd45f825c221b363m(Lprw;)Lpos;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Lprw;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lpoq;->51550bab6b6440a4fd45f825c221b363m(Lprw;)Lpos;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Lpru;->g()Lprw;

    move-result-object v0

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
