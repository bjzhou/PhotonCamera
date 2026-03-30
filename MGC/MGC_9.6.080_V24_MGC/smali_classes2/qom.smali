.class final Lqom;
.super Lqol;
.source "PG"


# static fields
.field public static final a:Lqom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lqom;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lqom;->a:Lqom;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lqom;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method private constructor <init>()V
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

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lqol;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ltlq;
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    long-to-int p2, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_0
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lqoe;->u(Lupk;)Z

    move-result p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_5
    iget v2, v1, Lupk;->b:I

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    check-cast p2, Landroid/os/health/HealthStats;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p2, Lupk;->e:Lupg;

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

    :goto_a
    iput v2, v1, Lupk;->b:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, p2, Lupk;->b:I

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Ltkb;->b:Ltkg;

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

    :goto_12
    or-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    iget v1, v0, Lupk;->b:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p2, Lupk;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_19
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ltkb;->b:Ltkg;

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

    :goto_1b
    invoke-static {p1}, Lqoe;->n(Ljava/lang/String;)Lupg;

    move-result-object p1

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

    :goto_1c
    check-cast v1, Lupk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xc351

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget p1, p2, Lupk;->b:I

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0xc352

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p2, :cond_4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_26
    sget-object p0, Lupk;->a:Lupk;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p2, v0}, Lqoe;->k(Landroid/os/health/HealthStats;I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    iput v1, v0, Lupk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_29
    or-int/lit8 p1, p1, 0x4

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

    :goto_2a
    check-cast v0, Lupk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p2, v0}, Lqoe;->k(Landroid/os/health/HealthStats;I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2d
    check-cast p0, Lupk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    iput v0, v1, Lupk;->c:I

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    :goto_30
    iput p2, v0, Lupk;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_20

    nop

    nop

    :goto_32
    iget-object v1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    long-to-int v0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    :goto_35
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_36
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz p2, :cond_7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    const/4 p0, 0x0

    nop

    :goto_3a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    or-int/lit8 v2, v2, 0x1

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

    :goto_3d
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_3e
    goto/32 :goto_32

    nop

    nop

    :goto_3f
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic b(Ltlq;Ltlq;)Ltlq;
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lupk;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_5
    goto/32 :goto_41

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr v0, p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_a
    and-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v2, v1, Lupk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_10
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    :goto_11
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_14
    iget v0, p1, Lupk;->c:I

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

    nop

    nop

    :goto_15
    const v0, 0x15

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_16
    iget v0, p1, Lupk;->b:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget v1, p2, Lupk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lupk;

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

    :goto_23
    iput v1, p2, Lupk;->b:I

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

    :goto_24
    iget v1, p2, Lupk;->c:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-object p1

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    iget v2, v1, Lupk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_28
    if-eqz p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p1}, Lqoe;->u(Lupk;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_2a
    or-int/lit8 p1, p1, 0x4

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

    :goto_2b
    if-nez v0, :cond_9

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p1, Lupk;->e:Lupg;

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

    :goto_2d
    if-eqz p2, :cond_a

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

    :cond_a
    goto/32 :goto_b

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

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

    :goto_2f
    iget v0, p1, Lupk;->b:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_30
    check-cast p2, Lupk;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v0, v1, Lupk;->c:I

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput p1, p2, Lupk;->b:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    and-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_36
    iput-object p1, p2, Lupk;->e:Lupg;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_37
    iget p1, p2, Lupk;->b:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    iget v0, p1, Lupk;->d:I

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_39
    check-cast v1, Lupk;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3b
    sget-object p0, Lupk;->a:Lupk;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3c
    check-cast p2, Lupk;

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

    :goto_3d
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3e
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3f
    iput v0, p2, Lupk;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_42
    check-cast p2, Lupk;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_43
    move-object p1, p0

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

    nop

    :goto_44
    iget p2, p2, Lupk;->d:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_45
    sget-object p1, Lupg;->a:Lupg;

    nop

    nop

    :goto_46
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_48
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_49
    or-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4a
    if-nez p0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4c
    iget-object v1, p0, Ltkb;->b:Ltkg;

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

    nop

    :goto_4d
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method public final bridge synthetic c(Ltlq;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lupg;->d:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lupg;->a:Lupg;

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lupk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p1, Lupk;->e:Lupg;

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    nop
.end method
