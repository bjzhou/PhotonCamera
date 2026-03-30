.class public abstract Lbxt;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public g:Lbxz;

.field public h:I

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>(ILbxz;)V
    .locals 8

    goto/32 :goto_24

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    :goto_1
    add-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    iput v1, p0, Lbxt;->j:I

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

    :goto_3
    sget-object v0, Lbyg;->a:Lubk;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lbyg;->f:Lbxx;

    nop

    nop

    nop

    iget v2, v0, Lbxx;->a:I

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    iget-object v3, v0, Lbxx;->b:[I

    nop

    nop

    nop

    nop

    nop

    array-length v4, v3

    nop

    nop

    nop

    const/16 v5, 0xe

    nop

    nop

    nop

    nop

    nop

    if-le v2, v4, :cond_1

    nop

    nop

    nop

    add-int/2addr v4, v4

    nop

    new-array v2, v4, [I

    nop

    nop

    nop

    nop

    nop

    new-array v4, v4, [I

    nop

    nop

    invoke-static {v3, v2, v1, v1, v5}, Lrkm;->bj([I[IIII)V

    iget-object v3, v0, Lbxx;->c:[I

    nop

    nop

    nop

    invoke-static {v3, v4, v1, v1, v5}, Lrkm;->bj([I[IIII)V

    iput-object v2, v0, Lbxx;->b:[I

    nop

    nop

    nop

    nop

    iput-object v4, v0, Lbxx;->c:[I

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget v2, v0, Lbxx;->a:I

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v3, v0, Lbxx;->a:I

    nop

    nop

    iget-object v3, v0, Lbxx;->d:[I

    nop

    nop

    array-length v3, v3

    nop

    nop

    nop

    nop

    iget v4, v0, Lbxx;->e:I

    nop

    nop

    nop

    nop

    nop

    if-lt v4, v3, :cond_3

    nop

    nop

    nop

    nop

    add-int/2addr v3, v3

    nop

    nop

    nop

    new-array v4, v3, [I

    nop

    nop

    nop

    nop

    move v6, v1

    nop

    nop

    nop

    :goto_5
    if-ge v6, v3, :cond_2

    nop

    add-int/lit8 v7, v6, 0x1

    nop

    nop

    nop

    nop

    aput v7, v4, v6

    nop

    nop

    nop

    nop

    move v6, v7

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v3, v0, Lbxx;->d:[I

    nop

    nop

    invoke-static {v3, v4, v1, v1, v5}, Lrkm;->bj([I[IIII)V

    iput-object v4, v0, Lbxx;->d:[I

    nop

    nop

    nop

    :cond_3
    iget v1, v0, Lbxx;->e:I

    nop

    iget-object v3, v0, Lbxx;->d:[I

    nop

    nop

    nop

    nop

    aget v4, v3, v1

    nop

    nop

    nop

    nop

    iput v4, v0, Lbxx;->e:I

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lbxx;->b:[I

    nop

    nop

    aput p1, v4, v2

    nop

    nop

    iget-object p1, v0, Lbxx;->c:[I

    nop

    nop

    nop

    aput v1, p1, v2

    nop

    aput v2, v3, v1

    nop

    invoke-virtual {v0, v2}, Lbxx;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, p2, Lbxz;->d:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p2

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput p1, p0, Lbxt;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    iget-wide v2, p2, Lbxz;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lbxt;->x()Lbxz;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, -0x1

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Lbxt;->g:Lbxz;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_12

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2a

    nop

    nop

    :goto_19
    const v1, 0x3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    :goto_1c
    sget-object p2, Lbyg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    iget p1, p2, Lbxz;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_12

    nop

    nop

    :goto_1f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p1, p1, 0x40

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_7

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    throw p0

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p2, Lbxz;->e:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    cmp-long v0, v2, v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    monitor-exit p2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2a
    aget p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2b
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-wide v2, p2, Lbxz;->b:J

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_21

    nop

    nop
.end method

.method public static final E(Lbxt;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lbvz;->b(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sget-object v0, Lbyg;->b:Lbvz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public A(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Lbxt;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public B(Lbxz;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lbxt;->g:Lbxz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final C()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const-string p0, "Cannot use a disposed snapshot"

    nop

    nop

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
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lbxt;->i:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lbot;->a(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final D()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lbxt;->i:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public abstract b(Lubk;)Lbxt;
.end method

.method public d()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    monitor-exit v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lbxt;->i:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    monitor-exit v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lbxt;->z()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public h()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

.method public abstract i()Lubk;
.end method

.method public abstract k()Lubk;
.end method

.method public m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    sput-object p0, Lbyg;->d:Lbxz;

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
    return-void

    nop

    :goto_2
    sget-object v0, Lbyg;->d:Lbxz;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lbxz;->b(I)Lbxz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lbxt;->v()I

    move-result p0

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
.end method

.method public abstract n(Lbyw;)V
.end method

.method public p()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lbxt;->z()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public q(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "Updating write count is not supported for this snapshot"

    nop

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

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    throw p0

    nop

    nop
.end method

.method public abstract r()Z
.end method

.method public v()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lbxt;->h:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final w()Lbxt;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lbxt;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

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

    :goto_5
    const v1, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lbyg;->b:Lbvz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    sget-object v1, Lbyg;->b:Lbvz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p0}, Lbvz;->b(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lbvz;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public x()Lbxz;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lbxt;->g:Lbxz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final y()V
    .locals 1

    goto/32 :goto_3

    nop

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

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lbxt;->m()V

    invoke-virtual {p0}, Lbxt;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
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

    :goto_5
    monitor-exit v0

    nop

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
.end method

.method public final z()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lbxt;->j:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, -0x1

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
    iput v0, p0, Lbxt;->j:I

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lbyg;->v(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop
.end method
