.class public final Lgrq;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lsuu;

.field final synthetic b:Lpge;

.field final synthetic c:Lgrr;


# direct methods
.method public constructor <init>(Lgrr;Lsuu;Lpge;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgrq;->b:Lpge;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgrq;->c:Lgrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lgrq;->a:Lsuu;

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


# virtual methods
.method public final cJ()V
    .locals 2

    goto/32 :goto_8

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

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    invoke-interface {p0}, Lpge;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lgrq;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgrq;->b:Lpge;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Snapshot request is aborted"

    nop

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

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final cK()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lgrq;->c:Lgrr;

    nop

    iget-object v1, v1, Lgrr;->l:Lphh;

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lgrq;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v3, "Snapshot is not available"

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto :goto_4

    nop

    nop

    :cond_1
    iget-object v2, p0, Lgrq;->b:Lpge;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v1}, Lpge;->e(Lphh;)Lprw;

    move-result-object v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v2, p0, Lgrq;->a:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    invoke-interface {v1}, Lprw;->close()V

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lgrq;->a:Lsuu;

    nop

    nop

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    const-string v3, "Snapshot is null"

    nop

    nop

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lsuu;->a(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_4
    :try_start_1
    iget-object p0, p0, Lgrq;->b:Lpge;

    nop

    nop

    nop

    invoke-interface {p0}, Lpge;->close()V

    monitor-exit v0

    nop

    return-void

    nop

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

    nop

    iget-object p0, p0, Lgrq;->b:Lpge;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpge;->close()V

    throw v1

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1a

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

    :goto_6
    iget-object v0, v0, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgrq;->c:Lgrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_c
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
