.class public Liww;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:[F

.field private c:Ljava/nio/FloatBuffer;

.field private final d:[F

.field private final e:[F

.field private f:Lrcx;

.field private g:F

.field private h:Luoj;

.field private i:Luoj;

.field private j:Luoj;

.field private k:Luoj;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "iww"

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
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    sput-object v0, Liww;->b:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-object v0, v1, v3

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

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const/4 v3, 0x0

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    const/16 v3, 0xcf

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

    :goto_13
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_6
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Liww;->e:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    iput-object v1, p0, Liww;->d:[F

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

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    iput-object v0, p0, Liww;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_14

    nop

    nop

    :goto_11
    iput-object v0, p0, Liww;->a:[F

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

    nop

    :goto_12
    iput v0, p0, Liww;->g:F

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

    :goto_13
    const/16 v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
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

    nop

    nop

    :goto_18
    const v1, 0xe

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
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Liww;->f:Lrcx;

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-virtual {v0}, Lrcx;->b()V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iget-object v0, p0, Liww;->f:Lrcx;

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

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Liww;->j:Luoj;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2, v3}, Luoj;->g(Ljava/nio/FloatBuffer;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Liww;->k:Luoj;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Liww;->a:[F

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "precision mediump float;uniform vec4 fillColor;void main() {  gl_FragColor = fillColor;}"

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

    :goto_a
    iget-object v1, p0, Liww;->i:Luoj;

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

    :goto_b
    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    iget-object v2, p0, Liww;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Liww;->e:[F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Liww;->h:Luoj;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Liww;->k:Luoj;

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

    :goto_11
    iget-object v0, p0, Liww;->f:Lrcx;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    iget-object v1, p0, Liww;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Liww;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_15
    const/4 v2, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_16
    iget-object v0, p0, Liww;->f:Lrcx;

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

    :goto_17
    iput-object v0, p0, Liww;->i:Luoj;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "fillColor"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Liww;->f:Lrcx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Luoj;->c([F)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Liww;->k:Luoj;

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3f

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Lrcx;->e(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Luoj;->e()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Luoj;->f()V

    goto/32 :goto_7

    nop

    nop

    :goto_25
    const v1, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2}, Luoj;->b([F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1, v2}, Lrcx;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    const-string v1, "vertexTransform"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Liww;->f:Lrcx;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    :goto_2d
    const/4 v3, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2e
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Liww;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Liww;->f:Lrcx;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v0, p0, Liww;->h:Luoj;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lrcx;->c()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v1, "projectionMatrix"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Liww;->f:Lrcx;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    new-instance v0, Lrcx;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_38
    invoke-virtual {v0, v1}, Lrcx;->d(Ljava/lang/String;)Luoj;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    iput-object v0, p0, Liww;->j:Luoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3b
    const-string v1, "vertexAttrib"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    sget-object v1, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->iPFkptMkdKNbQLZ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Liww;->k:Luoj;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Lrcx;->a()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    :goto_41
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_42
    iget v1, p0, Liww;->g:F

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
.end method

.method public final c([FF)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    check-cast p2, Lscz;

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, p1

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

    :goto_5
    iput p2, p0, Liww;->g:F

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
    array-length p1, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-interface {p2, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Tried to draw a set of lines with %d floats"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Liww;->c:Ljava/nio/FloatBuffer;

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

    :goto_b
    sget-object p2, Liww;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    const/16 v0, 0x7d3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    and-int/lit8 v0, v0, 0x3

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

    :goto_11
    iput-object p1, p0, Liww;->c:Ljava/nio/FloatBuffer;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_d

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lrgw;->p([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(FF)V
    .locals 8

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v5, 0x3f800000    # 1.0f

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

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    neg-float v2, v3

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

    :goto_a
    const v1, 0x1d

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v6, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    iget-object v0, p0, Liww;->e:[F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-float v3, p1, p2

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

    :goto_11
    const/high16 v7, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    move v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
