.class final Lfin;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfrq;


# instance fields
.field final synthetic a:Lfio;

.field private final b:Lfsa;


# direct methods
.method public constructor <init>(Lfio;Lfsa;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iput-object p1, p0, Lfin;->a:Lfio;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lfin;->b:Lfsa;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lfin;->a:Lfio;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_9
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lfin;->b:Lfsa;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lfsa;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lftw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_2
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lfsm;

    nop

    nop

    nop

    invoke-interface {v1}, Lfsm;->l()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    invoke-interface {v1}, Lfsm;->k()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lfsm;->c()V

    iget-boolean v2, p0, Lfsa;->c:Z

    nop

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    invoke-interface {v1}, Lfsm;->b()V

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v2, p0, Lfsa;->b:Ljava/util/Set;

    nop

    nop

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
