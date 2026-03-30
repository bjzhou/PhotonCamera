.class public Lhpm;
.super Lhoz;
.source "PG"


# static fields
.field private static final g:Lsdb;


# instance fields
.field private h:Lpck;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const-string v0, "270"

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

    :goto_5
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ljtr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhoz;->e:Ljtr;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const-string v0, "90"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_e

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lsdb;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "hpm"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

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

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0x193

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lhpm;->g:Lsdb;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    aput-object v0, v1, v3

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

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lhpa;Lggl;Llxp;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lhoz;-><init>(Landroid/content/Context;Lhpa;Lggl;Llxp;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhpm;->e:Ljtr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lggl;->e()Lpck;

    move-result-object p0

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
    iget v0, v0, Ljtr;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget p0, p0, Lpck;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Ljtr;->e:I

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
    iget-object v0, p0, Lhpm;->e:Ljtr;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lggl;->e()Lpck;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-gtz v0, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrss;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lhpm;->k(Landroid/view/View;)Lhoy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, v0, Lhoy;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lhoz;->l(Landroid/view/View;)V

    goto/32 :goto_1f

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Lggm;->ordinal()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_b
    return-object p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, v0, Lhoy;->c:Landroid/widget/ImageView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lhpm;->a:Lj$/time/format/DateTimeFormatter;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2}, Lhoz;->j(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

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

    :goto_13
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

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

    :goto_14
    goto/16 :goto_27

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

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

    :goto_17
    sget-object p2, Lggm;->c:Lggm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Lhpm;->k(Landroid/view/View;)Lhoy;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1b

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

    :goto_1f
    iget-object p2, p0, Lhoz;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    invoke-interface {p0}, Lggl;->h()Lj$/time/Instant;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x18

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

    :goto_23
    invoke-virtual {p2, v1, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    :goto_24
    invoke-virtual {v1, p0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    move-object v0, p1

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop

    :goto_29
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2a
    const v1, 0x7f140777

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    const v1, 0x7f0b02aa

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

    :goto_2d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final c()Lggm;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lggm;->c:Lggm;

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

    nop
.end method

.method public final i(II)Lqei;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lqei;

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

    :goto_1
    return-object p1

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_5

    nop

    nop

    :goto_4
    sget-object p0, Lhpm;->g:Lsdb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lscz;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    sget-object p1, Lrsa;->a:Lrsa;

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

    :goto_b
    const-string p1, "Fails to generate thumbnail"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Lqei;-><init>(Lrss;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const/16 p1, 0x456

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    :try_start_0
    iget-object p1, p0, Lhpm;->c:Lhpa;

    nop

    invoke-virtual {p1}, Lhpa;->a()Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lhpm;->c:Lhpa;

    nop

    iget-object v0, p0, Lhpm;->d:Lggl;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lhpm;->n(Lggl;)Lfjl;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lhpm;->o()Lpck;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v0, v1}, Lhpa;->c(Lfjl;Lpck;)Lfsr;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p1

    nop

    nop

    invoke-static {}, Lhpa;->f()Lfsr;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lggl;->c()Landroid/net/Uri;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Lfim;->k()Lfsp;

    move-result-object p0

    nop

    invoke-virtual {p0}, Lfsp;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    check-cast p0, Landroid/graphics/Bitmap;

    nop

    new-instance p1, Lqei;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    invoke-direct {p1, p0}, Lqei;-><init>(Lrss;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final m(Lhoy;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lhpm;->c:Lhpa;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lfim;->j(Landroid/widget/ImageView;)Lftb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lhpa;->a()Lfim;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lhpm;->c:Lhpa;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Lfim;->e(Landroid/net/Uri;)Lfim;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0}, Lggl;->c()Landroid/net/Uri;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    iget-object v1, p0, Lhpm;->d:Lggl;

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

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lhpa;->f()Lfsr;

    move-result-object v1

    nop

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

    :goto_11
    invoke-static {v1}, Lhpm;->n(Lggl;)Lfjl;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v1, v3}, Lhpa;->c(Lfjl;Lpck;)Lfsr;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lfsu;->c()Lfsm;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    iget-object p1, p1, Lhoy;->a:Landroid/widget/ImageView;

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

    :goto_17
    invoke-virtual {v0, v1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lhpm;->o()Lpck;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x6

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
.end method

.method public final o()Lpck;
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_22

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
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    goto/16 :goto_1b

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lhpm;->h:Lpck;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    :goto_a
    invoke-direct {p0}, Lhpm;->d116db4599d9ddc8c35e61366a4f4967m()I

    move-result v1

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

    :goto_b
    invoke-direct {v2, v0, v1}, Lpck;-><init>(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lhpm;->h:Lpck;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lpck;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    :goto_f
    invoke-direct {p0}, Lhpm;->132cd3b981019b59dc42653eea0b34b4m()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lhpm;->132cd3b981019b59dc42653eea0b34b4m()Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, v2, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

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

    :goto_16
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    :goto_17
    iget v3, v2, Lpck;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    invoke-direct {p0}, Lhpm;->a74c8a79bf0ef0e20983317119c87838m()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lhpm;->a74c8a79bf0ef0e20983317119c87838m()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v2, p0, Lhpm;->h:Lpck;

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_5
    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lhpm;->d116db4599d9ddc8c35e61366a4f4967m()I

    move-result v0

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string v0, "VideoItem: "

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

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhpm;->d:Lggl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
