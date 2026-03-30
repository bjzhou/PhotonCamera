.class public final Llnp;
.super Lnsi;
.source "PG"


# static fields
.field public static final synthetic b:I

.field private static final c:Lj$/time/Duration;


# instance fields
.field public final a:Loyd;

.field private final d:Loyd;

.field private final e:Loyn;

.field private final f:Llnv;

.field private final g:Loyd;

.field private final h:Loyd;

.field private final i:Loyd;

.field private final j:Lsul;

.field private final k:Lfdo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x5dc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    :goto_2
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    sput-object v0, Llnp;->c:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public constructor <init>(Loyd;Loyn;Loyd;Lfdo;Llnv;Loyd;Loyd;Loyd;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Llnp;->a:Loyd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Llnp;->g:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lnsi;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p8, p0, Llnp;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Llnp;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput-object p1, p0, Llnp;->d:Loyd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Llnp;->k:Lfdo;

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
    iput-object p7, p0, Llnp;->h:Loyd;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-static {p9}, Lsgj;->I(Ljava/util/concurrent/ScheduledExecutorService;)Lsul;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    iput-object p5, p0, Llnp;->f:Llnv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Llnp;->j:Lsul;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

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

    :goto_1
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    int-to-float v6, v6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Landroid/graphics/PointF;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_a
    invoke-virtual {v2, v3}, Lfdo;->V(Z)V

    goto/32 :goto_66

    nop

    nop

    :goto_b
    sget-object v1, Llnp;->c:Lj$/time/Duration;

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

    :goto_c
    goto/32 :goto_2f

    nop

    :goto_d
    if-ne v3, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    :goto_e
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_f
    new-instance v4, Llmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_10
    sub-float/2addr v4, p1

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_11
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_12
    iget v6, v2, Lpck;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_14
    goto/32 :goto_26

    nop

    nop

    :goto_15
    check-cast v2, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, p0, p1}, Llnn;-><init>(Llnp;F)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_18
    const v0, 0x12

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

    :goto_19
    div-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v5, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1b
    return v2

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    :goto_1e
    sub-float/2addr v4, p1

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

    :goto_1f
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_20
    sub-float v5, v4, v5

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_21
    new-instance v0, Llno;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Llnp;->a:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float v5, v5

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v3}, Llnv;->b(Landroid/graphics/PointF;)V

    :goto_27
    goto/32 :goto_46

    nop

    nop

    :goto_28
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_29
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2a
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2b
    div-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2c
    iget-object v0, p0, Llnp;->d:Loyd;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Ljry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_2e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v5, v4, Ljry;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Llnp;->j:Lsul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_32
    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v3, Lnbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_34
    invoke-static {v3, v4}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Llnp;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_36
    div-float/2addr p1, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_37
    div-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v0, p0, p1}, Llno;-><init>(Llnp;F)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v3, :cond_2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, v0, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0, v2, v4}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_41
    new-instance v2, Llnn;

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

    :goto_42
    invoke-virtual {v3}, Lnbh;->ordinal()I

    move-result v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_45
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

    :goto_46
    iget-object p1, p0, Llnp;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v2, v4}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_49
    iget v6, v2, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_4a
    goto/16 :goto_75

    nop

    nop

    :goto_4b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v2, v0}, Loyi;->k(Loyd;Lows;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4f
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v3, v4, v5, v6, v1}, Lsul;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lows;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_52
    iget v6, v2, Lpck;->a:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    int-to-float v6, v6

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v4, v0, v1}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_58
    sget-object v4, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v4, Llnm;

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_5b
    check-cast v4, Ljry;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_5c
    new-instance v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5d
    div-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_5f
    iget p1, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_60
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_62
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_63
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_64
    iget-object v2, p0, Llnp;->h:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_65
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

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

    :goto_66
    iget-object v2, p0, Llnp;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget v5, p1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_68
    div-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    div-float/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p1, p1, Ljrz;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1}, Ljry;->a()Ljrz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_6c
    iget-object v0, p0, Llnp;->g:Loyd;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v5, v2, Lpck;->a:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6e
    if-ne v3, v5, :cond_5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v3, v4, p1}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Llnp;->f:Llnv;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget p1, p1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_72
    new-instance v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_73
    int-to-float v2, v2

    nop

    nop

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

    :goto_74
    return v3

    nop

    :goto_75
    goto/32 :goto_1b

    nop

    nop

    :goto_76
    sput-object v5, Llbi;->l:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_77
    const/4 v3, 0x1

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

    :goto_78
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {v4, v2}, Llnm;-><init>(I)V

    goto/32 :goto_34

    nop

    nop

    :goto_7a
    check-cast p1, Ljava/lang/Float;

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

    nop

    :goto_7b
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7c
    iget v2, v2, Lpck;->b:I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7d
    div-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_7e
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v2, p0, Llnp;->k:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_80
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v5

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

    nop

    :goto_81
    iget v4, p1, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget v5, p1, Landroid/graphics/PointF;->y:F

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

    :goto_83
    int-to-float v2, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v3, Landroid/graphics/PointF;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(F)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iget-object v0, p0, Llnp;->e:Loyn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    :goto_2
    const v0, 0x1b

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llnp;->e:Loyn;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Lfdo;->W(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

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

    :goto_b
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    sput-object p1, Llbi;->l:Lj$/util/Optional;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    iput-object p1, v0, Ljry;->a:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Llnp;->k:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    check-cast v0, Ljry;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Lfdo;->V(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llnp;->k:Lfdo;

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

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop
.end method
