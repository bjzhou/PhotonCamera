.class final Lpje;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpjy;


# instance fields
.field final synthetic a:Lpjf;


# direct methods
.method public constructor <init>(Lpjf;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpje;->a:Lpjf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    sget-object v0, Lpjf;->a:Ljava/lang/Object;

    nop

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v0, 0xa

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpje;->a:Lpjf;

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    iput v1, p0, Lpjf;->e:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpje;->a:Lpjf;

    nop

    nop

    nop

    iget v2, v1, Lpjf;->e:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    iput v2, v1, Lpjf;->e:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v2, v1, Lpjf;->b:Z

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_0
    const/4 v2, 0x0

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x15

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lpje;->a:Lpjf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_6

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lpjf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_d
    return-void

    nop

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

    :try_start_1
    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lpjf;->b()V

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop
.end method
