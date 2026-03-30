.class public final Lnvg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/lang/Float;

.field private static final b:Ljava/lang/Float;

.field private static final c:Ljava/lang/Float;

.field private static final d:Ljava/lang/Float;

.field private static final e:Ljava/lang/Float;

.field private static final f:Ljava/lang/Float;

.field private static final g:Ljava/lang/Float;

.field private static final h:Ljava/lang/Float;

.field private static final i:Ljava/lang/Float;

.field private static final j:Ljava/lang/Float;

.field private static final k:Ljava/lang/Float;

.field private static final l:Ljava/lang/Float;


# instance fields
.field private final m:Ljava/lang/Float;

.field private final n:Ljava/lang/Float;

.field private final o:Ljava/lang/Float;

.field private final p:Ljava/lang/Float;

.field private final q:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    sput-object v1, Lnvg;->b:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    const v1, 0x3f99999a    # 1.2f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

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

    :goto_5
    const/high16 v0, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    sput-object v0, Lnvg;->i:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lnvg;->k:Ljava/lang/Float;

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lnvg;->j:Ljava/lang/Float;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    nop

    :goto_f
    sput-object v0, Lnvg;->l:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v1, Lnvg;->c:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v1, 0x40000000    # 2.0f

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

    :goto_16
    const/high16 v1, 0x3fc00000    # 1.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    sput-object v0, Lnvg;->e:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    const v0, 0x1c

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

    :goto_19
    sput-object v0, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3fb33333    # 1.4f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v1, Lnvg;->h:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sput-object v0, Lnvg;->f:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x40266666    # 2.6f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    sput-object v1, Lnvg;->g:Ljava/lang/Float;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 1

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhnz;->k:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lnvg;->o:Ljava/lang/Float;

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

    :goto_2
    invoke-virtual {p1, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/Float;

    nop

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

    :goto_7
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

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
    check-cast v0, Ljava/lang/Float;

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
    iput-object v0, p0, Lnvg;->p:Ljava/lang/Float;

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

    :goto_b
    sget-object v0, Lhnz;->h:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

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

    :goto_d
    sget-object v0, Lhnz;->i:Lhmn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lhni;->c:Lhmn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lhnz;->j:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    check-cast v0, Ljava/lang/Float;

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

    :goto_16
    iput-object v0, p0, Lnvg;->m:Ljava/lang/Float;

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

    :goto_17
    invoke-virtual {p1, v0}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lnvg;->q:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lnvg;->n:Ljava/lang/Float;

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
.end method


# virtual methods
.method public final a(I)Lryh;
    .locals 8

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_2
    invoke-static/range {v0 .. v5}, Lryh;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v6, Lnxe;->d:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4
    sget-object p1, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v1, 0x40a00000    # 5.0f

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_a
    add-float/2addr v1, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    sget-object p1, Lnvg;->b:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v7, p0, Lnvg;->o:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lnvg;->d:Ljava/lang/Float;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p0, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_3f

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_15
    sget-object v1, Lnvg;->i:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lnxe;->a:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object p1, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static/range {v0 .. v5}, Lryh;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, p0, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

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

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 p1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_20
    sget-object v3, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    iget-object v5, p0, Lnvg;->n:Ljava/lang/Float;

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

    :goto_22
    invoke-static {p1, v0, v1, p0}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lnvg;->g:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_26
    sget-object v4, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_27
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2a
    sget-object v4, Lnxe;->c:Lnxe;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v4, Lnxe;->d:Lnxe;

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

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1, p0, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_32
    sget-object p1, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-float/2addr v1, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    iget-object p0, p0, Lnvg;->n:Ljava/lang/Float;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_35
    iget-object v5, p0, Lnvg;->n:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    :pswitch_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v0, Lnxe;->c:Lnxe;

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

    :goto_38
    iget-object v5, p0, Lnvg;->o:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p0, Lnxe;->b:Lnxe;

    nop

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

    :goto_3a
    sget-object v0, Lnxe;->b:Lnxe;

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

    :goto_3b
    iget-object v3, p0, Lnvg;->n:Ljava/lang/Float;

    nop

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

    nop

    :goto_3c
    iget-object v1, p0, Lnvg;->m:Ljava/lang/Float;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lnvg;->q:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3f
    sget-object p0, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_40
    sget-object p1, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

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

    :goto_42
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_43
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v1, Lnvg;->c:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_45
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v2, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_47
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v3, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object p0, Lnxe;->b:Lnxe;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4b
    sget-object v1, Lnvg;->f:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4c
    sget-object v1, Lnxe;->c:Lnxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4d
    sget-object p1, Lnxe;->b:Lnxe;

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

    :goto_4e
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v0, Lnxe;->a:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v1, Lnvg;->e:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_51
    sget-object v2, Lnxe;->b:Lnxe;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_52
    sget-object p0, Lnxe;->b:Lnxe;

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

    :goto_53
    sget-object v0, Lnxe;->c:Lnxe;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static/range {v0 .. v7}, Lryh;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

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

    :goto_55
    goto/32 :goto_64

    nop

    nop

    :goto_56
    goto/32 :goto_13

    nop

    nop

    :goto_57
    invoke-static {p1, p0, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_56

    nop

    nop

    :goto_59
    sget-object v2, Lnxe;->c:Lnxe;

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

    :goto_5a
    sget-object v1, Lnvg;->h:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lnvg;->m:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lnvg;->q:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    return-object p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    :goto_5f
    sget-object v0, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_60
    sget-object p1, Lnxe;->b:Lnxe;

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

    :goto_61
    invoke-static {p0, p1, v0, v1}, Lryh;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v1, p0, Lnvg;->m:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_63
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :goto_64
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_65
    sget-object p0, Lnxe;->b:Lnxe;

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

.method public final b(I)Lryy;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lnvg;->d:Ljava/lang/Float;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnvg;->n:Ljava/lang/Float;

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

    nop

    :goto_6
    add-float/2addr v0, v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_7
    invoke-static {p1, v0, p0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lnvg;->p:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lnvg;->k:Ljava/lang/Float;

    nop

    goto/32 :goto_3a

    nop

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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    sget-object p0, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p0, Lnvg;->d:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_3d

    nop

    nop

    :pswitch_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Lnvg;->f:Ljava/lang/Float;

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

    :goto_11
    invoke-static {p0, p1, v0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Lnvg;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, p1, p0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lnvg;->p:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lrvj;->b:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3d

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

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

    :goto_1b
    iget-object p0, p0, Lnvg;->p:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lnvg;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lnvg;->j:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lnvg;->p:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :goto_20
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1, v0}, Lnha;-><init>(I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lryy;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lnvg;->n:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lnvg;->o:Ljava/lang/Float;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    invoke-interface {p0, p1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lnvg;->l:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Lnvg;->b:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2b
    sget-object p1, Lnvg;->h:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Lnha;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lnvg;->q:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    :pswitch_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Lnvg;->e:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p1, p0, Lnvg;->n:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, v2, v0, v1, p0}, Lryb;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_32
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_3f

    nop

    nop

    :goto_33
    goto :goto_3d

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p1, v0, p0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_35
    sget-object p1, Lnvg;->i:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Lnvg;->p:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p0, p1, v0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_3d

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_39

    nop

    nop

    :goto_39
    iget-object p1, p0, Lnvg;->m:Ljava/lang/Float;

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

    :goto_3a
    invoke-static {p0, p1, v0}, Lryb;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1, v1, v0, p0}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p1, p0, Lnvg;->m:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
