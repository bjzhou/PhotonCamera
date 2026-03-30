.class public abstract Lefb;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract b(Lehv;Ljava/lang/Object;)V
.end method

.method public final c(Lfdn;Ljava/lang/Object;)J
    .locals 1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lefb;->a()Ljava/lang/String;

    move-result-object v0

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

    :goto_3
    invoke-interface {p0}, Lehv;->h()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lehv;->h()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    move-wide p0, p1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ldvx;->i(Lfdn;)I

    move-result p0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v0

    nop

    nop

    :try_start_0
    invoke-virtual {p0, v0, p2}, Lefb;->b(Lehv;Ljava/lang/Object;)V

    invoke-interface {v0}, Lehv;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const-string p0, "SELECT last_insert_rowid()"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lehv;->h()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p0

    nop

    :try_start_1
    invoke-interface {p0}, Lehv;->k()Z

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lehv;->b(I)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Lehv;->h()V

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lfdn;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_0

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

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object p1

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lefb;->b(Lehv;Ljava/lang/Object;)V

    invoke-interface {p1}, Lehv;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lefb;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Lehv;->h()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
