.class public final Luni;
.super Lufp;
.source "PG"

# interfaces
.implements Lufz;


# instance fields
.field public final a:Lufp;

.field private final synthetic b:Lufz;

.field private final c:I

.field private final d:Lueo;

.field private final e:Ljava/lang/Object;

.field private final f:Lqop;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Luni;->d:Lueo;

    nop

    iget v1, v1, Lueo;->b:I

    nop

    nop

    nop

    nop

    iget v2, p0, Luni;->c:I

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    const/4 p0, 0x0

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

    nop

    nop

    :goto_8
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    :try_start_1
    iget-object p0, p0, Luni;->d:Lueo;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lueo;->b()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :catchall_0
    move-exception p0

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

    :goto_e
    const v0, 0x13

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ge v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Luni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Lufp;I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p2, Lueo;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, v1

    nop

    :goto_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Luni;->d:Lueo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lufz;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    iput-object p1, p0, Luni;->f:Lqop;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, v0, p1}, Lueo;-><init>(ILucu;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v0, p1, Lufz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Luni;->b:Lufz;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lufx;->a:Lufz;

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Luni;->a:Lufp;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Lufp;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance p1, Lqop;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p1, v1, v1}, Lqop;-><init>([B[B)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p1, p0, Luni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    iput p2, p0, Luni;->c:I

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    sget-object p1, Luer;->a:Luer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop
.end method


# virtual methods
.method public final a(Luad;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lunh;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Luni;->f:Lqop;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p0, p1}, Lunh;-><init>(Luni;Ljava/lang/Runnable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Luni;->d:Lueo;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget p1, p1, Lueo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget p2, p0, Luni;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lt p1, p2, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Luni;->1478a1c7833aac5e360e0ba4b0c0c568m()Z

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Luni;->e()Ljava/lang/Runnable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Luni;->a:Lufp;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p2}, Lqop;->i(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0, p2}, Lufp;->a(Luad;Ljava/lang/Runnable;)V

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(JLuez;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Luni;->b:Lufz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-interface {p0, p1, p2, p3}, Lufz;->c(JLuez;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/lang/Runnable;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

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

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Luni;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lqop;->g()Ljava/lang/Object;

    move-result-object v0

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

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto :goto_c

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    :try_start_0
    iget-object v1, p0, Luni;->d:Lueo;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lueo;->b()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

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

    :goto_11
    check-cast v0, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    monitor-exit v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Luni;->d:Lueo;

    nop

    invoke-virtual {v1}, Lueo;->a()I

    iget-object v1, p0, Luni;->f:Lqop;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lqop;->f()I

    move-result v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_15
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_17
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Luni;->f:Lqop;

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final f(Luad;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Luni;->a:Lufp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lt p1, p2, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p2, p0, Luni;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0, p2}, Lufp;->f(Luad;Ljava/lang/Runnable;)V

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Luni;->d:Lueo;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Luni;->e()Ljava/lang/Runnable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    goto :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget-object p1, p0, Luni;->f:Lqop;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Luni;->1478a1c7833aac5e360e0ba4b0c0c568m()Z

    move-result p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    new-instance p2, Lunh;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, p2}, Lqop;->i(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p1, p1, Lueo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2, p0, p1}, Lunh;-><init>(Luni;Ljava/lang/Runnable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(JLjava/lang/Runnable;Luad;)Lugg;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Luni;->b:Lufz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-interface {p0, p1, p2, p3, p4}, Lufz;->h(JLjava/lang/Runnable;Luad;)Lugg;

    move-result-object p0

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

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iget p0, p0, Luni;->c:I

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

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, ".limitedParallelism("

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const-string p0, ")"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

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

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Luni;->a:Lufp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

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

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop
.end method
