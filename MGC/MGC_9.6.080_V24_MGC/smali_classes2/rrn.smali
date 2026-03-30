.class public final Lrrn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final i:Lj$/time/Duration;

.field private static final j:Lj$/time/Duration;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Lj$/time/Duration;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Lj$/time/Duration;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lrrn;->i:Lj$/time/Duration;

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

    :goto_7
    const v1, 0x1f

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const v0, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/16 v0, 0x3

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

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lrrn;->j:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(IZLj$/time/Duration;IIIIILj$/time/Duration;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p9, p0, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lrrn;->k:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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

    nop

    :goto_3
    iput-boolean p2, p0, Lrrn;->b:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iput p5, p0, Lrrn;->d:I

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
    iput p6, p0, Lrrn;->e:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lrrn;->c:Lj$/time/Duration;

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

    :goto_7
    iput p8, p0, Lrrn;->g:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lrrn;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p7, p0, Lrrn;->f:I

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static a()Lrrm;
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    int-to-byte v3, v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lrrm;->b(I)V

    goto/32 :goto_14

    nop

    nop

    :goto_4
    const/16 v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lrrn;->j:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    sget-object v3, Lrrn;->i:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    iput-object v3, v0, Lrrm;->b:Lj$/time/Duration;

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

    :goto_8
    or-int/lit8 v3, v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-byte v1, v1

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

    :goto_a
    iput v1, v0, Lrrm;->g:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean v2, v0, Lrrm;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const/16 v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-byte v2, v0, Lrrm;->i:B

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    iput-byte v1, v0, Lrrm;->i:B

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iput v1, v0, Lrrm;->d:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    new-instance v0, Lrrm;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    or-int/lit8 v1, v2, 0x7e

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-byte v3, v0, Lrrm;->i:B

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    iput-object v1, v0, Lrrm;->h:Lj$/time/Duration;

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

    :goto_1b
    const/16 v1, 0x32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    iput v1, v0, Lrrm;->e:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1d
    iput v3, v0, Lrrm;->c:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object v0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0}, Lrrm;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_25
    iput v1, v0, Lrrm;->f:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, p0, Lrrn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lrrn;->f:I

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3
    iget v3, p1, Lrrn;->e:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v3, p1, Lrrn;->b:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    iget v3, p1, Lrrn;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_8
    if-eq p1, p0, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v3}, Lj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Lj$/time/Duration;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    if-eq v1, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_c
    iget v1, p0, Lrrn;->e:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v1, v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    :goto_15
    iget v3, p1, Lrrn;->k:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_16
    iget v1, p0, Lrrn;->k:I

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

    :goto_17
    iget v1, p0, Lrrn;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lrrn;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lrrn;->c:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    iget v3, p1, Lrrn;->g:I

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

    :goto_1f
    iget v1, p0, Lrrn;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v3, p1, Lrrn;->c:Lj$/time/Duration;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    iget-object p1, p1, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    const v0, 0x14

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    instance-of v1, p1, Lrrn;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    if-nez v1, :cond_7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    :goto_29
    if-eq v1, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v1, v3, :cond_9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    if-eq v1, v3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Lrrn;->g:I

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

    :goto_2d
    if-nez p0, :cond_b

    nop

    goto/32 :goto_14

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2e
    iget v3, p1, Lrrn;->f:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    iget v3, p1, Lrrn;->a:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    mul-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x4d5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_25

    nop

    nop

    :goto_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    mul-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget v1, p0, Lrrn;->f:I

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

    :goto_a
    mul-int/2addr v0, v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_b
    mul-int/2addr v0, v3

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

    :goto_c
    mul-int/2addr v0, v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iget-object v2, p0, Lrrn;->c:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/2addr v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop

    :goto_10
    invoke-virtual {p0}, Lj$/time/Duration;->hashCode()I

    move-result p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Lrrn;->g:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    iget v1, p0, Lrrn;->e:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_15
    xor-int/2addr v0, v1

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

    :goto_16
    iget-boolean v1, p0, Lrrn;->b:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_18
    xor-int/2addr v0, v1

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

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    return p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Lj$/time/Duration;->hashCode()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1f
    iget v1, p0, Lrrn;->k:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    xor-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    xor-int/2addr v1, v3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_22
    xor-int/2addr p0, v0

    nop

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

    :goto_23
    mul-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    const/16 v0, 0x4cf

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_26

    nop

    nop

    :goto_26
    iget v1, p0, Lrrn;->a:I

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

    :goto_27
    const v3, 0xf4243

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    const v0, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lrrn;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lrrn;->h:Lj$/time/Duration;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    xor-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Lrrn;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lrrn;->g:I

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

    :goto_8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    iget v1, p0, Lrrn;->k:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v3, p0, Lrrn;->a:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lrrn;->e:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const-string v3, "{"

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_23

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lrrn;->c:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
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

    nop

    nop

    :goto_1e
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    :goto_21
    const v1, 0x8

    nop

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

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lrrn;->h:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-boolean v4, p0, Lrrn;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2b
    iget v1, p0, Lrrn;->f:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v3, ", "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method
