.class public final Loii;
.super Loib;
.source "PG"


# instance fields
.field public final e:Lww;

.field private final g:Loio;


# direct methods
.method public constructor <init>(Loiu;Loio;)V
    .locals 1

    goto/32 :goto_3

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
    invoke-interface {p1, p0}, Loiu;->b(Loit;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Loii;->e:Lww;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Logd;->a:Logd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lww;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Lww;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, v0}, Loib;-><init>(Loiu;Logd;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Loii;->g:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Loii;->f:Loiu;

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
.end method


# virtual methods
.method protected final e(Lofz;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loii;->g:Loio;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2}, Loio;->d(Lofz;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loii;->g:Loio;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Loio;->e()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Loii;->k()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Loib;->a:Z

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

    :goto_2
    invoke-virtual {p0}, Loii;->k()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    iget-object v1, p0, Loii;->g:Loio;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    const v1, 0x3

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

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Loio;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v2, v1, Loio;->l:Loii;

    nop

    if-ne v2, p0, :cond_1

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    iput-object p0, v1, Loio;->l:Loii;

    nop

    nop

    nop

    nop

    iget-object p0, v1, Loio;->m:Ljava/util/Set;

    nop

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Loib;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object v0, p0, Loii;->g:Loio;

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Loio;->f(Loii;)V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lww;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object v0, p0, Loii;->e:Lww;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop
.end method
