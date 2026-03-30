.class public Lmmj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field final b:I

.field final c:I

.field public final d:Loyd;

.field public final e:Loyd;

.field public final f:Lnoy;

.field final g:I

.field final h:I

.field public final i:Lkdx;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Ljava/lang/Float;

.field public o:I

.field public p:Z

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public final u:Lhoh;

.field private final v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "mmj"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    sput-object v0, Lmmj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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
.end method

.method public constructor <init>(Loyd;Loyd;Lnoy;Lkdx;Lhoh;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p1, Lhmq;->P:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lmmj;->i:Lkdx;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_25

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

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iput p1, p0, Lmmj;->c:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

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

    :goto_7
    iput p1, p0, Lmmj;->v:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/lang/Integer;

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

    nop

    :goto_9
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lhmq;->Q:Lhmo;

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

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lhmq;->M:Lhmo;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

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

    :goto_f
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

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

    nop

    :goto_10
    iput p1, p0, Lmmj;->h:I

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

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_12
    iput-object p2, p0, Lmmj;->e:Loyd;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Lhmq;->N:Lhmo;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p0, Lmmj;->d:Loyd;

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

    :goto_17
    sget-object p1, Lhmq;->L:Lhmo;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p5, p0, Lmmj;->u:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_1a
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Lmmj;->b:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1d
    iput p1, p0, Lmmj;->g:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

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

    :goto_1f
    iput-object p3, p0, Lmmj;->f:Lnoy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p5, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 p2, 0x1e

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_26
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_28
    const/16 p2, 0xf

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final e(FF)I
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    nop

    nop

    :goto_6
    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

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
    const v1, 0x3c23d70a    # 0.01f

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

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

    :goto_a
    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

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

    nop

    :goto_b
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljava/math/BigDecimal;

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

    :goto_e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_12
    sub-float v0, p0, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lmmj;->j:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lmmj;->m:Z

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

    :goto_4
    iget-boolean v0, p0, Lmmj;->m:Z

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop
.end method

.method final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    iput v0, p0, Lmmj;->w:I

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
    return-void

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lmmj;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d(Lpro;I)Z
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmmj;->c()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_2
    iget p1, p0, Lmmj;->x:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    const v1, 0x1f

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

    :goto_5
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p1, p0, Lmmj;->w:I

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

    :goto_b
    if-ge p1, v1, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_0
    :goto_c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int/2addr p1, v2

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

    nop

    :goto_13
    iput p1, p0, Lmmj;->x:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lmmj;->b()V

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

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

    :goto_17
    const/16 v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_19
    iput p1, p0, Lmmj;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    cmpg-float p1, v1, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    iget p1, p0, Lmmj;->w:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    iget p1, p0, Lmmj;->v:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    iget-boolean p0, p0, Lmmj;->y:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_24
    if-ge p1, p2, :cond_4

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Lmmj;->y:Z

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

    :goto_28
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    iget p1, p0, Lmmj;->x:I

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

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    return p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    move v0, v2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float p1, p1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    add-int/2addr p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_32
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method
