.class public final Ljtr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljtr;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field private final j:I

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    check-cast v0, Ljtr;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljtq;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    sput-object v0, Ljtr;->a:Ljtr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

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

    :goto_b
    invoke-static {v3, v0, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0xf4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0xf3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(IIILjava/lang/String;IZZZZZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p6, p0, Ljtr;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Ljtr;->c:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p5, p0, Ljtr;->e:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p10, p0, Ljtr;->i:Z

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

    nop

    nop

    :goto_5
    iput p1, p0, Ljtr;->j:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p7, p0, Ljtr;->f:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput-boolean p9, p0, Ljtr;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    iput p2, p0, Ljtr;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iput-boolean p8, p0, Ljtr;->g:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    iput-object p4, p0, Ljtr;->d:Ljava/lang/String;

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

.method public static a()Ljtq;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ljtq;->c(Z)V

    goto/32 :goto_20

    nop

    nop

    :goto_3
    int-to-short v1, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    or-int/lit16 v1, v1, 0x800

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, v0, Ljtq;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    or-int/lit8 v1, v1, 0x30

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    int-to-short v1, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljtq;->i(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljtq;->g(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljtq;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    const-string v1, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iget-short v1, v0, Ljtq;->c:S

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljtq;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Ljtq;->h(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Ljtq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    iget-short v1, v0, Ljtq;->c:S

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    iput-short v1, v0, Ljtq;->c:S

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    iget-short v1, v0, Ljtq;->c:S

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljtq;->f(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Ljtq;->b(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    or-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljtq;->d(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-short v1, v0, Ljtq;->c:S

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    int-to-short v1, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    iput-short v1, v0, Ljtq;->c:S

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljtq;->e(Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

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

    :goto_1
    iget v3, p1, Ljtr;->c:I

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Ljtr;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-eq v1, v3, :cond_1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Ljtr;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Ljtr;->e:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v3, p1, Ljtr;->k:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b
    iget v3, p1, Ljtr;->j:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p1, Ljtr;->d:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iget-boolean v3, p1, Ljtr;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    :goto_10
    iget-boolean v3, p1, Ljtr;->g:Z

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_12
    iget v3, p1, Ljtr;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget v3, p1, Ljtr;->b:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean v1, p0, Ljtr;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-boolean v1, p0, Ljtr;->f:Z

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v1, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    :goto_1e
    instance-of v1, p1, Ljtr;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1f
    if-eq v1, v3, :cond_7

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

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Ljtr;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_21
    if-eq p1, p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq v1, v3, :cond_9

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

    :cond_9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v3, p1, Ljtr;->f:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Ljtr;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ljtr;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    if-eq p0, p1, :cond_a

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

    :cond_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-boolean p0, p0, Ljtr;->i:Z

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-boolean v1, p0, Ljtr;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2d
    iget-boolean p1, p1, Ljtr;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2b

    nop

    nop

    :goto_30
    iget-boolean v1, p0, Ljtr;->k:Z

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

    :goto_31
    if-eq v1, v3, :cond_b

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_c

    nop

    goto/32 :goto_23

    nop

    :cond_c
    goto/32 :goto_27

    nop

    nop
.end method

.method public final hashCode()I
    .locals 7

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_4c

    nop

    :goto_1
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v1, p0, Ljtr;->k:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    mul-int/2addr v0, v2

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

    :goto_4
    move v1, v4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Ljtr;->j:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/2addr v0, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_c
    const/16 v3, 0x4cf

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean v1, p0, Ljtr;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v1, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_10
    iget v3, p0, Ljtr;->c:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    if-ne v5, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_12
    if-ne v5, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v1, v4

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

    :goto_14
    mul-int/2addr v0, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-boolean v1, p0, Ljtr;->h:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    goto :goto_1e

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    xor-int/2addr p0, v4

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_19
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    xor-int/2addr v0, v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v2, 0xf4243

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1c
    xor-int/2addr v0, v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v1, v3

    nop

    :goto_1e
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v5, v1, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    return p0

    nop

    :goto_21
    goto/32 :goto_3c

    nop

    nop

    :goto_22
    if-ne v5, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    mul-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_8

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    goto :goto_38

    nop

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v4, 0x4d5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    xor-int/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_30
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    if-ne v5, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_33
    move v3, v4

    nop

    :goto_34
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    xor-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_37
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v3, p0, Ljtr;->b:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    mul-int/2addr p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3e
    iget-boolean v1, p0, Ljtr;->f:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3f
    xor-int/2addr v0, v3

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_40
    iget-boolean p0, p0, Ljtr;->i:Z

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

    nop

    :goto_41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Ljtr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_45
    xor-int p0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_46
    iget v6, p0, Ljtr;->e:I

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_47
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_48
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    mul-int/2addr v0, v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4b
    move v1, v3

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, ", false}"

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

    nop

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v2, p0, Ljtr;->e:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_23

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    :goto_10
    iget v2, p0, Ljtr;->b:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "{"

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

    :goto_18
    const-string v1, ", "

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

    :goto_19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v2, p0, Ljtr;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-boolean v2, p0, Ljtr;->h:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const-string v2, ", false, false, "

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_6

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    :goto_24
    iget-object v2, p0, Ljtr;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_25
    iget-boolean v2, p0, Ljtr;->f:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_28
    iget v2, p0, Ljtr;->c:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_29
    iget-boolean p0, p0, Ljtr;->i:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2b
    iget-boolean v2, p0, Ljtr;->g:Z

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

    :goto_2c
    iget v1, p0, Ljtr;->j:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    :goto_2e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop
.end method
