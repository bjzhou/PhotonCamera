.class final Lpel;
.super Lprm;
.source "PG"


# instance fields
.field private final a:Lpep;

.field private b:Z


# direct methods
.method public constructor <init>(Lpri;Lpep;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lprm;-><init>(Lpri;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Lpel;->b:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iput-object p2, p0, Lpel;->a:Lpep;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
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
    iget-boolean v0, p0, Lpel;->b:Z

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lpel;->b:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lpep;->a()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Lprm;->close()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpel;->a:Lpep;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
