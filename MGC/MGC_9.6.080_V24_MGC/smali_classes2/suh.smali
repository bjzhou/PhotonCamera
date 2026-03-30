.class final Lsuh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Ljava/util/logging/Logger;

.field private final c:Luby;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Luby;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Luby;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
    iput-object v0, p0, Lsuh;->c:Luby;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-object p1, p0, Lsuh;->a:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method final a()Ljava/util/logging/Logger;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lsuh;->b:Ljava/util/logging/Logger;

    nop

    if-eqz v1, :cond_0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object v1

    nop

    :cond_0
    iget-object v1, p0, Lsuh;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lsuh;->b:Ljava/util/logging/Logger;

    nop

    nop

    monitor-exit v0

    nop

    return-object v1

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

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lsuh;->b:Ljava/util/logging/Logger;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const v0, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object v0, p0, Lsuh;->c:Luby;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop
.end method
