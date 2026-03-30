.class final Lqoj;
.super Lqol;
.source "PG"


# static fields
.field public static final a:Lqoj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lqoj;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqoj;->a:Lqoj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqoj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqol;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ltlq;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lqoe;->n(Ljava/lang/String;)Lupg;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p2, Luph;->b:I

    nop

    nop

    :goto_4
    goto/32 :goto_24

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Ltkb;->R(Ljava/lang/Iterable;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, v1}, Landroid/os/health/HealthStats;->getMeasurements(I)Ljava/util/Map;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1d

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lqom;->a:Lqom;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    if-eqz p2, :cond_2

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

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget p1, p2, Luph;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p2, Luph;->e:Lupg;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x9c41

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lqol;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

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

    nop

    :goto_15
    iget-object p2, p0, Ltkb;->b:Ltkg;

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
    or-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p2}, Ltkb;->S(Ljava/lang/Iterable;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2, v1}, Lqoe;->m(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    nop

    nop

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_19

    nop

    :goto_1f
    invoke-virtual {p2, v1}, Landroid/os/health/HealthStats;->hasMeasurements(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xb

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_22
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    sget-object v0, Lqoi;->a:Lqoi;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

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

    :goto_28
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, p2}, Lqol;->d(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2a
    check-cast p0, Luph;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2b
    if-nez v2, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    :goto_2c
    const v1, 0x9c42

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p0, Luph;->a:Luph;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0}, Lqoe;->s(Luph;)Z

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    check-cast p2, Luph;

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

    :goto_31
    check-cast p2, Landroid/os/health/HealthStats;

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

    :goto_32
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic b(Ltlq;Ltlq;)Ltlq;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    sget-object p0, Luph;->a:Luph;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1, p2}, Lqol;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    sget-object v0, Lqom;->a:Lqom;

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

    :goto_5
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

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

    :goto_6
    iget-object v1, p1, Luph;->c:Ltkv;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Ltkb;->R(Ljava/lang/Iterable;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    check-cast p2, Luph;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    iget p1, p2, Luph;->b:I

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

    :goto_b
    check-cast p1, Luph;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Lqoe;->s(Luph;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    :goto_11
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_13
    iget-object v1, p1, Luph;->d:Ltkv;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p2, Luph;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    check-cast p1, Luph;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    iput-object p1, p2, Luph;->e:Lupg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    or-int/lit8 p1, p1, 0x1

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

    :goto_1b
    move-object p1, p0

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

    nop

    nop

    :goto_1c
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

    :goto_1d
    return-object p1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p1, Lupg;->a:Lupg;

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    :goto_21
    iput p1, p2, Luph;->b:I

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

    :goto_22
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_26
    if-nez p0, :cond_5

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

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    iget-object v2, p2, Luph;->c:Ltkv;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p1, Luph;->e:Lupg;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, v2}, Lqol;->e(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p2}, Ltkb;->S(Ljava/lang/Iterable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    iget-object p2, p2, Luph;->d:Ltkv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    sget-object v0, Lqoi;->a:Lqoi;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Ltlq;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lupg;->a:Lupg;

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
    check-cast p1, Luph;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p0, p1, Luph;->e:Lupg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

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

    :goto_5
    iget-object p0, p0, Lupg;->d:Ljava/lang/String;

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

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method
