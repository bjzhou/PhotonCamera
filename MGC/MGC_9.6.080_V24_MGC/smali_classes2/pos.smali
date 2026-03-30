.class public final Lpos;
.super Lprt;
.source "PG"


# instance fields
.field final synthetic a:Lpot;

.field private final b:Luen;


# direct methods
.method public constructor <init>(Lpot;Lprw;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Luen;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lpos;->b:Luen;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    :goto_3
    invoke-direct {p2, v0, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Lprt;-><init>(Lprw;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lpos;->a:Lpot;

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

    :goto_7
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v0

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

    :goto_1
    iget-object v0, p0, Lpot;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Luen;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0}, Lprt;->close()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lpot;->a()V

    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v1, 0x13

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

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    iget-object v0, p0, Lpos;->b:Luen;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    monitor-exit v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lpos;->a:Lpot;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, p0, Lpot;->d:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, p0, Lpot;->d:I

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpot;->e:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop
.end method
