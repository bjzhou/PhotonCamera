.class public abstract Ljmf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/nio/FloatBuffer;

.field public b:Ljava/nio/FloatBuffer;

.field public c:Ljava/nio/ShortBuffer;

.field public final d:Ljava/util/Vector;

.field public e:Ljmh;

.field private final f:[F

.field private final g:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x10

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    iput-object v2, p0, Ljmf;->f:[F

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljmf;->e:Ljmh;

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

    :goto_5
    new-array v1, v1, [F

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljmf;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v1, p0, Ljmf;->d:Ljava/util/Vector;

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

    :goto_f
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

    :goto_10
    iput-object v0, p0, Ljmf;->a:Ljava/nio/FloatBuffer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    new-instance v1, Ljava/util/Vector;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, p0, Ljmf;->g:[F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljmf;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    new-array v2, v1, [F

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public a([F)V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v4, p0, Ljmf;->f:[F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Ljmf;->c([F)V

    goto/32 :goto_5

    nop

    nop

    :goto_9
    move-object v2, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljmf;->g:[F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ljmf;->g:[F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public abstract c([F)V
.end method

.method protected final d(IFF)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-object p2, p0, Ljmf;->a:Ljava/nio/FloatBuffer;

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

    :goto_4
    const v1, -0x40266666    # -1.7f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v1, 0x14

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    add-int/lit8 v0, p1, 0x1

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

    :goto_9
    iget-object p0, p0, Ljmf;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    mul-int/lit8 p1, p1, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    invoke-virtual {p2, v0, v1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    add-int/lit8 p1, p1, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Ljmf;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_13
    invoke-virtual {p0, p1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
