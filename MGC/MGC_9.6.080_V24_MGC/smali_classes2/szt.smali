.class public final synthetic Lszt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lszv;


# direct methods
.method public synthetic constructor <init>(Lszv;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

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
    iput-object p1, p0, Lszt;->a:Lszv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

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

    :goto_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/ar/core/Point;->getOrientationMode()Lcom/google/ar/core/Point$OrientationMode;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    :goto_7
    if-lez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8
    move-object p0, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_a
    instance-of p0, v0, Lcom/google/ar/core/DepthPoint;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    instance-of p0, v0, Lcom/google/ar/core/Point;

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

    :goto_c
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lcom/google/ar/core/HitResult;->getTrackable()Lcom/google/ar/core/Trackable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lszv;->c:Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_f
    instance-of p0, v0, Lcom/google/ar/core/InstantPlacementPoint;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_14
    return v2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    :goto_17
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ltcw;->h([F)Ltsl;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x19

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p1, Lcom/google/ar/core/Point$OrientationMode;->ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lszt;->a:Lszv;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    :goto_1e
    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF[FI)V

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v4}, Lcom/google/ar/core/Plane;->isPoseInPolygon(Lcom/google/ar/core/Pose;)Z

    move-result v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float p0, p0, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    check-cast v1, Lcom/google/ar/core/Plane;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    move-object v1, v0

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

    :goto_23
    invoke-static {p0}, Ltcw;->g(Lcom/google/ar/core/Pose;)Ltsl;

    move-result-object p0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p0, :cond_8

    nop

    goto/32 :goto_11

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of p0, v0, Lcom/google/ar/core/Point;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Lcom/google/ar/core/HitResult;->getHitPose()Lcom/google/ar/core/Pose;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    instance-of p0, v0, Lcom/google/ar/core/DepthPoint;

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

    :goto_2c
    sget-object p0, Lszv;->a:Lsdb;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2d
    const/16 p1, 0x159b

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2e
    if-ne p0, p1, :cond_a

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_a
    :goto_2f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p0, p1}, Ltsl;->g(Ltsl;Ltsl;)Ltsl;

    move-result-object p0

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

    :goto_31
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_33
    instance-of p0, v0, Lcom/google/ar/core/InstantPlacementPoint;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v1, v0, Lcom/google/ar/core/Plane;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_11

    nop

    nop

    :goto_36
    goto/32 :goto_b

    nop

    nop

    :goto_37
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_38
    const-string p1, "Hit test with an unsupported hit type"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_39
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3a
    check-cast p1, Lcom/google/ar/core/HitResult;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3b
    invoke-static {p0, p1}, Ltsl;->a(Ltsl;Ltsl;)F

    move-result p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3c
    return v3

    nop

    :goto_3d
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Lcom/google/ar/core/Point;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_41
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_42
    new-array v1, v1, [F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_2

    nop
.end method
