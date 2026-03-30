.class final Lgnf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lstu;


# instance fields
.field final synthetic a:Lpak;

.field final synthetic b:Lsuu;

.field final synthetic c:Lgni;


# direct methods
.method public constructor <init>(Lgni;Lpak;Lsuu;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgnf;->b:Lsuu;

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
    iput-object p1, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgnf;->a:Lpak;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgnf;->c:Lgni;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgni;->F:Lpdh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lgnf;->b:Lsuu;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-interface {p0}, Lpdh;->a()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    monitor-enter p1

    nop

    :try_start_0
    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    iget-object v0, v0, Lgni;->p:Lmkv;

    nop

    nop

    sget-object v1, Lmku;->d:Lmku;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lmkp;->h(Ljava/lang/Enum;)V

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    iget-object v1, v0, Lgni;->C:Lgnh;

    nop

    nop

    sget-object v2, Lgnh;->f:Lgnh;

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    iget-object p0, p0, Lgnf;->a:Lpak;

    nop

    nop

    invoke-interface {p0}, Lpak;->g()Lsui;

    monitor-exit p1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, v0, Lgni;->k:Lgqc;

    nop

    nop

    nop

    sget-object v1, Lgqa;->e:Lgqa;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lgqc;->a(Lgqa;)V

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lgni;->f:Lgsr;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lgni;->a()Lgrc;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lgrc;->a()I

    move-result v0

    nop

    nop

    invoke-virtual {v1, v0}, Lgsr;->d(I)V

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    iget-object v1, v0, Lgni;->f:Lgsr;

    nop

    nop

    iget-object v0, v0, Lgni;->j:Lgqg;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lgqg;->c:Loze;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v1, Lgsr;->e:Lj$/util/Optional;

    nop

    nop

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    iget-object v0, v0, Lgni;->f:Lgsr;

    nop

    nop

    nop

    invoke-virtual {v0}, Lgsr;->g()V

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    iget-object v1, v0, Lgni;->g:Lgoe;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lgoe;->l()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lgni;->m:Lgvz;

    nop

    nop

    nop

    iget-object v2, v0, Lgni;->j:Lgqg;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lgqg;->B:Lpog;

    nop

    nop

    iget-object v3, v0, Lgni;->H:Llad;

    nop

    invoke-virtual {v3}, Llad;->b()Lpcg;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Lgvz;->b(Lpog;Lpcg;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Lgng;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v2, v0, v3}, Lgng;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :cond_2
    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lgni;->j:Lgqg;

    nop

    nop

    iget-boolean v1, v1, Lgqg;->F:Z

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    iget-object v0, v0, Lgni;->s:Lgzm;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lgzm;->c(Z)V

    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    iget-object v0, v0, Lgni;->r:Lgzl;

    nop

    nop

    nop

    invoke-virtual {v0}, Lgzl;->b()V

    :cond_3
    iget-object v0, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lgnh;->c:Lgnh;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lgni;->l(Lgnh;)V

    iget-object p0, p0, Lgnf;->b:Lsuu;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    monitor-exit p1

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

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lgnf;->c:Lgni;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    iget-object p1, p1, Lgni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop
.end method
