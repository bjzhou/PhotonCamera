.class public final Lrqs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lrqs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-object v1, p0, Lrqs;->b:Ljava/lang/Object;

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

    :goto_6
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lrqs;->a:Ljava/lang/Object;

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

    :goto_c
    goto/32 :goto_9

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;Landroid/view/Surface;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v1}, [I

    move-result-object v1

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

    :goto_5
    check-cast v1, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x3038

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-static {v1, p1, v0}, Lrqs;->d(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object p1

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    move-object v1, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    check-cast p1, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lrqs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lrqs;->e()Landroid/opengl/EGLDisplay;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const/4 v2, 0x0

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

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v1, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, v1, v2}, Lrqs;->c(Landroid/opengl/EGLDisplay;ZZ)Landroid/opengl/EGLConfig;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    :goto_1b
    iput-object p1, p0, Lrqs;->d:Ljava/lang/Object;

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

    :goto_1c
    invoke-static {p1, v0, p2, v1, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

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

    :goto_1d
    iput-object p2, p0, Lrqs;->b:Ljava/lang/Object;

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

    :goto_1e
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v3, p1}, Lrqs;->d(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v0, v1}, Lrqs;->c(Landroid/opengl/EGLDisplay;ZZ)Landroid/opengl/EGLConfig;

    move-result-object p1

    nop

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

    :goto_4
    iput-object p1, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v5, v1, v3, v1, v4}, [I

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    const/16 v4, 0x3038

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lrqs;->b:Ljava/lang/Object;

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

    :goto_b
    const v0, 0x1f

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v3, 0x3056

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    :goto_10
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x13

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

    :goto_14
    invoke-static {v2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    const/16 v5, 0x3057

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lrqs;->e()Landroid/opengl/EGLDisplay;

    move-result-object p1

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

    :goto_1c
    check-cast v2, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    check-cast v2, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    iput-object v2, p0, Lrqs;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop
.end method

.method private static c(Landroid/opengl/EGLDisplay;ZZ)Landroid/opengl/EGLConfig;
    .locals 12

    goto/32 :goto_20

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    :goto_5
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x3024

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7
    move p2, p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_b
    invoke-static/range {v2 .. v9}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string p1, "Could not find a valid EGL configuration"

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

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

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_12
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object v2, p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v5, v9

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_1f
    const/4 p1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xf

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x3022

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    move-object v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    aget-object p0, p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    const/16 p1, 0x3142

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v5, p2

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

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    new-array v3, p1, [I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v1, 0x3021

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

    :goto_30
    if-lt p2, v2, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v8, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    new-array v0, v1, [I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_35
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_36
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_39
    aget p0, v0, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

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

    :goto_3b
    move-object v3, v9

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

    nop

    :goto_3c
    const/16 v1, 0x3040

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_3d
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3e
    const/16 p1, 0x3033

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3f
    aput v2, v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_40
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_41
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_42
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_43
    filled-new-array {p1, v2}, [Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v1, 0x4

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

    :goto_45
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_46
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_48
    const/16 p1, 0x3038

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_4a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4b
    new-array p2, v1, [Landroid/opengl/EGLConfig;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_4c
    filled-new-array {p1, v2}, [Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4d
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_51
    const/16 v1, 0x3023

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    goto/32 :goto_44

    nop

    nop
.end method

.method private static d(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)Landroid/opengl/EGLContext;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0x3098

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v0, 0xb

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x3038

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

    :goto_e
    invoke-static {p0, p2, p1, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static e()Landroid/opengl/EGLDisplay;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "unable to get EGL14 display"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

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

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_10
    new-array v2, v2, [I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    return-object v1

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/lang/RuntimeException;

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

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    const-string v1, "unable to initialize EGL14"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    throw v0

    nop

    nop

    nop

    :goto_1d
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
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    :goto_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v0, 0x10

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

    :goto_4
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    nop

    :goto_7
    iput-object v0, p0, Lrqs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :goto_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lrqs;->d:Ljava/lang/Object;

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

    :goto_d
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lrqs;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    check-cast v1, Landroid/opengl/EGLSurface;

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

    :goto_18
    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lrqs;->c:Ljava/lang/Object;

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

    :goto_1e
    check-cast p0, Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    check-cast v1, Landroid/opengl/EGLContext;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_25

    nop

    :goto_28
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2b
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2c
    iput-object v0, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_27

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroid/opengl/EGLDisplay;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Landroid/opengl/EGLContext;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1, v1, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    goto/32 :goto_3

    nop

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

    nop

    nop

    nop

    :goto_5
    check-cast v1, Landroid/opengl/EGLSurface;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lrqs;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrqs;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

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

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lrqs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

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
.end method
