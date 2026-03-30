.class public final Luj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lui;


# instance fields
.field final synthetic a:Luk;

.field private final b:Luen;


# direct methods
.method public constructor <init>(Luk;)V
    .locals 2

    goto/32 :goto_f

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Luj;->a:Luk;

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

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    new-instance v0, Luen;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Luj;->b:Luen;

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

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, p1}, Luen;-><init>(ZLucu;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

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

.method public final b()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    iget-object v0, p0, Luk;->b:Ljava/lang/Object;

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

    :goto_2
    iget-object v0, p0, Luj;->b:Luen;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget v1, p0, Luk;->c:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    iput v1, p0, Luk;->c:I

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Luk;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Luk;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Luj;->a:Luk;

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

    :goto_d
    invoke-virtual {v0, v1, v2}, Luen;->a(ZZ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v1, 0x15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xa

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
