.class public final Lpjp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgc;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public j:[Landroid/hardware/camera2/params/MeteringRectangle;

.field public k:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lpjp;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

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

    nop

    :goto_1
    iput-object p11, p0, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Lpjp;->f:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpjp;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-object p8, p0, Lpjp;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p7, p0, Lpjp;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lpjp;->b:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-object p3, p0, Lpjp;->c:Ljava/lang/Integer;

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

    nop

    :goto_a
    iput-object p4, p0, Lpjp;->d:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p10, p0, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p5, p0, Lpjp;->e:Ljava/lang/Integer;

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

.method public static a(Lpgd;)Lpjp;
    .locals 13

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    new-instance v12, Lpjp;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v12

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

    :goto_4
    invoke-interface {p0}, Lpgd;->b()Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    move-object v9, v11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lpgd;->d()Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-interface {p0}, Lpgd;->c()Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    invoke-interface {p0}, Lpgd;->g()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

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

    :goto_a
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v10, v11

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    return-object v12

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpgd;->h()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v8

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

    :goto_10
    goto/32 :goto_15

    nop

    :goto_11
    const v0, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Lpgd;->a()Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0}, Lpgd;->f()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lpgd;->e()Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct/range {v0 .. v11}, Lpjp;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public static b(Lpjq;)Lpjp;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, v0, Lpjp;->f:Ljava/lang/Boolean;

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

    :goto_1
    iget-object v1, p0, Lpjq;->a:Ljava/lang/Boolean;

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
    iput-object p0, v0, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object v1, v0, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpjq;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    iget-object v1, p0, Lpjq;->b:Ljava/lang/Boolean;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lpjp;->a(Lpgd;)Lpjp;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Lpjq;
    .locals 13

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lpjp;->d:Ljava/lang/Integer;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lpjp;->e:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-object v0, p0, Lpjp;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v11}, Lpjq;-><init>(IIIIIZZZ[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    iget-object v0, p0, Lpjp;->a:Ljava/lang/Integer;

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

    :goto_9
    new-instance v12, Lpjq;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

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

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpjp;->c:Ljava/lang/Integer;

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

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    iget-object v0, p0, Lpjp;->b:Ljava/lang/Integer;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, v12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x16

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

    :goto_12
    iget-object v10, p0, Lpjp;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

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

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iget-object v9, p0, Lpjp;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lpjp;->f:Ljava/lang/Boolean;

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

    :goto_18
    return-object v12

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v11, p0, Lpjp;->k:[Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lpjp;->g:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
