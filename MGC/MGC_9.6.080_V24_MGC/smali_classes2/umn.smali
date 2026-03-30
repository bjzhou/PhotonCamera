.class final Lumn;
.super Lukt;
.source "PG"

# interfaces
.implements Lulf;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x2

    nop

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

    :goto_5
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v2, v0, v1}, Lukt;-><init>(III)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7fffffff

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lukt;->c(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lukt;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

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

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final m(I)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

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

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lukt;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Number;

    nop

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v0, p1

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    aput-object p1, v1, v3

    nop

    nop

    nop

    nop

    const/16 v3, 0x1a8

    nop

    nop

    nop

    nop

    invoke-static {v3, p0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
