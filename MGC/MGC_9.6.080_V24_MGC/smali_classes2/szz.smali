.class public Lszz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "szz"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    sput-object v0, Lszz;->a:Lsdb;

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Lcom/google/ar/core/Session;Landroid/util/Size;Lszf;Lryb;)Lj$/util/Optional;
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_60

    nop

    nop

    :goto_2
    aput p2, v7, v8

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2}, Lj$/util/stream/Stream;->findAny()Lj$/util/Optional;

    move-result-object p2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x0

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

    :goto_6
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getZAxis()[F

    move-result-object p3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 p1, 0x15a3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    int-to-float v3, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const-string p1, "Unable to create scene anchor, plane intersection does not exist"

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, p2, Ltsl;->a:F

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aput v3, v7, v4

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_e
    const-string p2, "Unable to create anchor."

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_f
    invoke-direct {v2, v7, p2}, Lcom/google/ar/core/Pose;-><init>([F[F)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v3, p2}, Lqau;-><init>(Lrqu;Lrqu;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x15

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p3, p3, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x9

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

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

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

    :goto_16
    new-instance v2, Lcom/google/ar/core/Pose;

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

    :goto_17
    const/16 p1, 0x15a2

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

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

    :goto_19
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1a
    iget p2, p2, Ltsl;->c:F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget v7, p3, v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p2}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    const-string p1, "Camera is not tracking, can\'t create a scene frame anchor."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2, p3, p1, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    aget p3, p3, v8

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_24
    new-array v7, v7, [F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    invoke-direct {v1, p1, v0, p2}, Ltab;-><init>(Landroid/util/Size;Lcom/google/ar/core/Pose;Ltsi;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p2, p2, Ltsl;->c:F

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    check-cast p0, Lscz;

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

    :goto_29
    iget v4, p2, Ltsl;->a:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v5, p2, Ltsl;->b:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Lrqu;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Lszz;->a:Lsdb;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_31
    new-instance p3, Lszs;

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

    :goto_32
    iget v5, p2, Ltsl;->b:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object p1, Lszz;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_34
    invoke-direct {p3, v1}, Lszy;-><init>(Ltab;)V

    goto/32 :goto_48

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v7, 0x3

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

    :goto_38
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, p3, p2, v2}, Ltab;->c(FFLqau;)Ltsl;

    move-result-object p2

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

    :goto_3a
    new-instance p2, Lrqu;

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

    nop

    :goto_3b
    new-instance v2, Lqau;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p3, Lpnp;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, p2, v0}, Ltab;->b(Ltsl;Landroid/graphics/RectF;)Ltsk;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_40
    invoke-interface {p2, p3}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Lcom/google/ar/core/Pose;->getRotationQuaternion()[F

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/16 p3, 0x15a1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_44
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v8, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_46
    iget-object p2, p2, Lszf;->e:Ltsi;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2, p3}, Lj$/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lscz;

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

    :goto_4a
    invoke-static {v2}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4b
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aget v5, p3, v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_4d
    check-cast v0, Lcom/google/ar/core/Pose;

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

    nop

    nop

    :goto_4e
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v3, v4, v5, p2}, Lrqu;-><init>(FFF)V

    goto/32 :goto_3a

    nop

    nop

    :goto_50
    new-instance p3, Lszy;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p2

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

    :goto_54
    return-object p0

    nop

    :goto_55
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/google/ar/core/Session;->createAnchor(Lcom/google/ar/core/Pose;)Lcom/google/ar/core/Anchor;

    move-result-object p0

    nop

    nop

    iget p2, p1, Ltsk;->a:F

    nop

    nop

    nop

    iget p1, p1, Ltsk;->b:F

    nop

    nop

    nop

    new-instance p3, Lszx;

    nop

    invoke-direct {p3, p0, p2, p1}, Lszx;-><init>(Lcom/google/ar/core/Anchor;FF)V

    invoke-static {p3}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p0

    nop
    :try_end_0
    .catch Lcom/google/ar/core/exceptions/SessionPausedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/NotTrackingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/ar/core/exceptions/ResourceExhaustedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4b

    nop

    nop

    :goto_56
    check-cast p2, Lcom/google/ar/core/Pose;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v1, Ltab;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object p0, Lszz;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

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

    :goto_5b
    invoke-direct {p2, v5, v7, p3}, Lrqu;-><init>(FFF)V

    goto/32 :goto_10

    nop

    nop

    :goto_5c
    invoke-direct {p3, v2}, Lszs;-><init>(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_5f
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_30

    nop

    :goto_61
    return-object p0

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p2}, Lszf;->a()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_64
    invoke-direct {p3, v2}, Lpnp;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/16 v2, 0x11

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_66
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aput v5, v7, v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
