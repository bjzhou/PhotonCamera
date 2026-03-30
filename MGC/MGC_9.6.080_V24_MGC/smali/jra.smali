.class public Ljra;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljrg;


# instance fields
.field private final a:Lsdb;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljra;->a:Lsdb;

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

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

    nop

    :goto_3
    const-string v0, "jra"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lskd;)V
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljra;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xa0d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    iget v1, p1, Lskd;->f:I

    nop

    nop

    nop

    invoke-static {v1}, Lskc;->b(I)Lskc;

    move-result-object v1

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

    sget-object v1, Lskc;->a:Lskc;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    const-string v2, "----------------------\nStart event: %s"

    nop

    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ltkg;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "\n"

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_c
    if-ge v2, v1, :cond_2

    nop

    nop

    aget-object v3, v0, v2

    nop

    nop

    nop

    iget-object v4, p0, Ljra;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    const/16 v5, 0xa0f

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    const-string v5, "%s"

    nop

    invoke-interface {v4, v5, v3}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_2
    iget-object v0, p0, Ljra;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0xa0e

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    iget p1, p1, Lskd;->f:I

    nop

    nop

    nop

    invoke-static {p1}, Lskc;->b(I)Lskc;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_3

    nop

    sget-object p1, Lskc;->a:Lskc;

    nop

    :cond_3
    const-string v1, "End Event: %s\n"

    nop

    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
