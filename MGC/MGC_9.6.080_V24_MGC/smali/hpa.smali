.class public Lhpa;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final c:Lsdb;

.field private static d:Lpck;


# instance fields
.field public final a:Lpck;

.field public final b:I

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "hpa"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lhpa;->c:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhoh;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpck;

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

    :goto_2
    iput p1, p0, Lhpa;->b:I

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    check-cast p1, Ljava/lang/Integer;

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

    :goto_6
    invoke-direct {v0, p1, p1}, Lpck;-><init>(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lhpa;->e:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lhpa;->a:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lhmq;->g:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    sget-object p1, Lhmq;->f:Lhmo;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static d(Lpck;DLpck;)Lpck;
    .locals 6

    goto/32 :goto_46

    nop

    nop

    :goto_0
    long-to-int v0, v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Lpck;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gt p1, v1, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p1, p0, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a
    long-to-int v0, v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, p1}, Lpck;-><init>(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    iget v1, p3, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_f
    int-to-double v1, p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p1, p0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v5, Lpck;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    move-wide p1, v2

    nop

    nop

    :goto_15
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    int-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lpck;->b()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Lpck;->a:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

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

    :goto_1a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-le v0, p2, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_1d
    iget p1, p3, Lpck;->b:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1e
    mul-double/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1f
    long-to-double v0, v0

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    mul-double/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_22
    int-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    :goto_24
    if-ltz v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    :goto_27
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    iget p1, p3, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    invoke-direct {v5, v0, p0}, Lpck;-><init>(II)V

    goto/32 :goto_2b

    nop

    nop

    :goto_2a
    long-to-int p0, p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-double v2, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    div-double/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v2, p3, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_31
    cmpg-double v2, v2, p1

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

    :goto_32
    int-to-double p1, p2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_33
    iget v1, p3, Lpck;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-double v0, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_35
    int-to-double v1, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_37
    int-to-double v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_38
    goto/16 :goto_27

    nop

    :goto_39
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget p2, p3, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-gtz v4, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_3

    nop

    :goto_3d
    iget v1, p0, Lpck;->b:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3e
    cmpl-double v4, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3f
    if-ge v1, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    :goto_40
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    :goto_41
    iget v0, p0, Lpck;->a:I

    nop

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

    :goto_42
    mul-double/2addr v0, p1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    const v1, 0x15

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_44
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-double/2addr v0, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_46
    const v0, 0x1d

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_47
    mul-int v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4a
    iget v0, p3, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    div-double/2addr v2, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_4c
    div-double/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop
.end method

.method public static e()Lpck;
    .locals 14

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v9, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_a

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v1}, Lpck;-><init>(II)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_52

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_6
    const/16 v2, 0x3057

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7
    const/16 v4, 0xd33

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8
    invoke-direct {v0, v2, v2}, Lpck;-><init>(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a
    invoke-static {v9, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_c
    const/16 v5, 0x3038

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x800

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const v0, 0x12

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_10
    new-array v12, v11, [Landroid/opengl/EGLConfig;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lpck;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    :goto_14
    invoke-static {v9, v1, v4, v3, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v5, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lscz;

    nop

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

    nop

    :goto_17
    move-object v1, v9

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_18
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v9

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lhpa;->d:Lpck;

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

    :goto_1a
    goto/32 :goto_2a

    nop

    :goto_1b
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v9, v1, v2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

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

    :goto_1d
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v9, v1, v0, v1, v11}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

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

    nop

    :goto_20
    if-gt v1, v2, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "No EGL configurations found!"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v3, 0x3098

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_25
    new-array v1, v10, [I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v9, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_4b

    nop

    nop

    :goto_27
    new-array v2, v1, [I

    nop

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    const/16 v2, 0x1000

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v3, 0x3056

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Lhpa;->c:Lsdb;

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

    :goto_2e
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v4, 0x40

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

    nop

    :goto_30
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v1, 0x9

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-object v0

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x303f
        0x308e
        0x3029
        0x0
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :goto_33
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_34
    filled-new-array {v2, v4, v3, v4, v5}, [I

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_35
    const/16 v1, 0x441

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_36
    move-object v7, v13

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

    nop

    :goto_37
    filled-new-array {v3, v10, v5}, [I

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3a
    sput-object v0, Lhpa;->d:Lpck;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3b
    aget-object v1, v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v1, v2, v0}, Lpck;-><init>(II)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3e
    aget v1, v13, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Lpck;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_40
    invoke-static {v9, v2, v2, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_43

    nop

    nop

    :goto_41
    goto/16 :goto_52

    nop

    nop

    :goto_42
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-array v3, v11, [I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_44
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_45
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_47
    goto :goto_4c

    nop

    nop

    :goto_48
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    sget-object v0, Lhpa;->d:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v1, Lpck;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_38

    nop

    nop

    :goto_4d
    sget-object v0, Lhpa;->d:Lpck;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4f
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    :goto_51
    sput-object v1, Lhpa;->d:Lpck;

    nop

    :goto_52
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_53
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v4, v12

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-array v13, v11, [I

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

    :goto_56
    aget v0, v3, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static final f()Lfsr;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    check-cast v0, Lfsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lfsj;->J()Lfsj;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance v0, Lfsr;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Lfsr;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lfim;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhpa;->e:Landroid/content/Context;

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

    :goto_1
    invoke-static {p0}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lfio;->b()Lfim;

    move-result-object p0

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

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public final b()Lfim;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfio;->c()Lfim;

    move-result-object p0

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
    return-object p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhpa;->e:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p0}, Lfia;->c(Landroid/content/Context;)Lfio;

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

    nop

    nop
.end method

.method public final c(Lfjl;Lpck;)Lfsr;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    check-cast p1, Lfsr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    check-cast p1, Lfsr;

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

    :goto_2
    invoke-static {}, Lhpa;->e()Lpck;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lfsj;->L()Lfsj;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lfsj;->q()Lfsj;

    move-result-object p1

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

    :goto_9
    invoke-direct {p2}, Lfsr;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    iget p2, p0, Lpck;->a:I

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

    :goto_c
    check-cast p0, Lfsr;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2, v0, v1, p0}, Lhpa;->d(Lpck;DLpck;)Lpck;

    move-result-object p0

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
    int-to-double v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    iget p0, p0, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    new-instance p2, Lfsr;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget p0, p0, Lhpa;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, p1}, Lfsj;->z(Lfjl;)Lfsj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_18
    check-cast p1, Lfsr;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p2, p0}, Lfsj;->u(II)Lfsj;

    move-result-object p0

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
.end method
