.class public Lqhe;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqfd;

.field public final b:[Lqgq;

.field public final c:Lqgr;

.field private final d:I


# direct methods
.method public constructor <init>(Lqgr;Lqfd;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Lqfe;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    mul-int/lit8 v0, v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1, p2, v0}, Lqhe;-><init>(Lqgr;Lqfd;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Lqgr;Lqfd;I)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lqhe;->c:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    filled-new-array {v1, p3}, [I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v0, v2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lqhe;->a:Lqfd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    aput-object v0, p3, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lqgq;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ge p3, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_f
    iput p3, p0, Lqhe;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p3, p0, Lqhe;->b:[Lqgq;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lqhe;->c:Lqgr;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-int/lit8 v3, v2, 0x8

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_15
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v2, p2, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const-string v3, "row stride that is shorter than row data size"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1d

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Lqfe;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array p3, p2, [Lqgq;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    :goto_1f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p3, p0, Lqhe;->b:[Lqgq;

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

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

    nop

    :goto_24
    invoke-static {v0, v3}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_18

    nop

    nop

    :goto_27
    const/16 v1, 0x20

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1, v3, p1}, Lqgq;-><init>(Lqgr;I[I)V

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public a(Lqfe;)Lqhe;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lqhe;->c:Lqgr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lqfe;->c()Lqfd;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqhe;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lqhe;-><init>(Lqgr;Lqfd;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop
.end method

.method public bridge synthetic b(Lqfe;)Lqhe;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lqhe;->a(Lqfe;)Lqhe;

    move-result-object p0

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lqhe;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object p0, p0, Lqhe;->c:Lqgr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_b
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    instance-of v1, p1, Lqhe;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v1, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_e
    iget-object v1, p1, Lqhe;->b:[Lqgq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, p1, Lqhe;->d:I

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

    :goto_12
    invoke-virtual {v1, v3}, Lqfe;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    iget-object v3, p1, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    if-eq p0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Lqhe;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lqhe;->a:Lqfd;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v2

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p1, Lqhe;->c:Lqgr;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    :goto_20
    goto/32 :goto_10

    nop

    nop

    :goto_21
    const v1, 0x5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqhe;->a:Lqfd;

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

    :goto_1
    invoke-virtual {v0}, Lqfe;->hashCode()I

    move-result v0

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

    nop

    :goto_2
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x4

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

    nop

    :goto_4
    rem-int v0, v0, v1

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
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    iget-object v1, p0, Lqhe;->c:Lqgr;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lqhe;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    return v0

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int/2addr v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    add-int/2addr v0, p0

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

    nop

    :goto_12
    const v0, 0xa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "RGBANorm8"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
