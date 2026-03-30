.class final Lhsk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhsn;


# direct methods
.method public constructor <init>(Lhsn;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

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

    nop

    :goto_1
    iput-object p1, p0, Lhsk;->b:Lhsn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lhsk;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lhsn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lhsk;->b:Lhsn;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lhsn;->b:Lsuu;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v3, p0, Lhsn;->b:Lsuu;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lhsn;->a(I)Lhsm;

    move-result-object v1

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

    :goto_3
    invoke-virtual {v2, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhsk;->b:Lhsn;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    :goto_8
    throw p0

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lhsk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    return-void

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

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
