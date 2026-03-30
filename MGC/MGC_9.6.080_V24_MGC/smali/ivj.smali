.class public final Livj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Byte;


# instance fields
.field public final b:Lpnu;

.field public final c:Lkdt;

.field public final d:Livu;

.field public final e:Lkdv;

.field public final f:Lrtm;

.field public final g:Lhoh;

.field private final h:Lpnx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Livj;->a:Ljava/lang/Byte;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnv;Lhoh;Lkdv;Lkdt;Lrtm;)V
    .locals 1

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p2, Lpog;->b:Lpog;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget p3, p3, Lpck;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    aget p1, p1, p3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    mul-float/2addr p1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, p2}, Lpnv;->e(Lpog;)Lpnx;

    move-result-object p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iput-object p5, p0, Livj;->f:Lrtm;

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

    :goto_7
    sget-object p3, Lozg;->i:Lozg;

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

    :goto_8
    invoke-interface {p1, p4}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    invoke-interface {p1}, Lpnu;->g()I

    move-result p4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    const/4 p3, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    iput p1, p2, Livu;->d:F

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    invoke-interface {p1, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean p3, p2, Livu;->e:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    :goto_f
    div-float/2addr p1, p3

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

    :goto_10
    iput-object p2, p0, Livj;->h:Lpnx;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    iput p4, p2, Livu;->a:I

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

    :goto_13
    new-instance p2, Livu;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1, p2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Livj;->g:Lhoh;

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

    :goto_16
    iput-object p3, p0, Livj;->e:Lkdv;

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

    :goto_17
    iput p3, p2, Livu;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, [F

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

    :goto_1a
    iput-object p2, p0, Livj;->d:Livu;

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

    :goto_1b
    check-cast p4, Landroid/util/SizeF;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p4, p0, Livj;->c:Lkdt;

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

    nop

    :goto_1d
    invoke-virtual {p4}, Landroid/util/SizeF;->getWidth()F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    iget p4, p3, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    iput-object p1, p0, Livj;->b:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    invoke-static {p4}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_23
    iput p4, p2, Livu;->c:I

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

    :goto_24
    invoke-virtual {p3}, Lozg;->b()Lpck;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    const/high16 p3, 0x42100000    # 36.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-direct {p2}, Livu;-><init>()V

    goto/32 :goto_7

    nop

    nop
.end method


# virtual methods
.method public final a()D
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-double/2addr v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    float-to-double v0, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-float/2addr p0, p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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
    iget p0, p0, Livu;->d:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Livj;->d:Livu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    div-float/2addr v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x42100000    # 36.0f

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

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

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

    :goto_11
    const v0, 0xb

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
