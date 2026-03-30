.class public final Ltng;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final b:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    check-cast v3, Ltmm;

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

    :goto_2
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3
    goto/32 :goto_2b

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

    goto/32 :goto_49

    nop

    nop

    :goto_5
    move-object v3, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    check-cast v1, Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v3, Ltmm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

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

    :goto_d
    check-cast v0, Ltmm;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "getEpochSecond"

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-wide v4, v3, Ltmm;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-wide v3, v2, Ltmm;->b:J

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "now"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iput v2, v1, Ltmm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ltnf;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ltng;->e(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ltmm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Ltng;->e(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_37

    nop

    :goto_23
    new-instance v0, Ltnf;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_24
    sput-object v0, Ltng;->a:Ljava/lang/reflect/Method;

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

    :goto_25
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

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

    nop

    :goto_26
    const-wide v4, 0x3afff4417fL

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_28
    const-string v0, "getNano"

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

    :goto_29
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

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

    :goto_2b
    iget-object v1, v0, Ltkb;->b:Ltkg;

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

    :goto_2c
    invoke-static {v0}, Ltng;->e(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2d
    const-wide v3, -0xe7791f700L

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_2f
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sput-object v0, Ltng;->c:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_32
    check-cast v1, Ltmm;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_33
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    :goto_34
    check-cast v2, Ltmm;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_37
    goto/32 :goto_3e

    nop

    :goto_38
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_3b
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    sget-object v0, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    :goto_3e
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3f
    check-cast v1, Ltmm;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_38

    nop

    nop

    :goto_41
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v3, v1, Ltmm;->c:I

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

    :goto_44
    const v0, 0x15

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_45
    sput-object v0, Ltng;->b:Ljava/lang/reflect/Method;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v2, v1, Ltmm;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_48
    check-cast v0, Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4a
    iput-wide v4, v3, Ltmm;->b:J

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4b
    const v3, 0x3b9ac9ff

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4f
    move-object v3, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_50
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_52
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-eqz v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

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

    nop

    :goto_55
    sget-object v0, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop
.end method

.method public static a(Ltmm;)J
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltmm;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Ltmm;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const v2, 0xf4240

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ltng;->d(Ltmm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    :goto_7
    invoke-static {v0, v1, v2, v3}, Lrrf;->ac(JJ)J

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v2, 0x3e8

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const v1, 0xa

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

    :goto_a
    const v0, 0x11

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1, v2, v3}, Lrrf;->ad(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    int-to-long v2, p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    div-int/2addr p0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop
.end method

.method public static b(J)Ltmm;
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v0, 0x3e8

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    mul-long/2addr v2, v4

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

    :goto_7
    invoke-static {p0, p1, v0}, Ltng;->c(JI)Ltmm;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    rem-long v2, p0, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    div-long/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    long-to-int v0, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/32 v4, 0xf4240

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static c(JI)Ltmm;
    .locals 9

    goto/32 :goto_4b

    nop

    nop

    :goto_0
    move v3, v8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_4
    goto/32 :goto_3e

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_7
    check-cast p0, Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_8
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    const-wide/16 p0, -0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "Timestamp is not valid. Input seconds is too large. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. "

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const v1, 0x3b9aca00

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {v2 .. v7}, Lrrf;->aa(ZLjava/lang/String;JJ)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Ltng;->f(J)Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-long v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    xor-long/2addr v0, v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v2, :cond_2

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    :goto_1c
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    if-ltz p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    if-gt p2, v0, :cond_4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput p2, p1, Ltmm;->c:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_21
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, -0x3b9aca00

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, "checkedSubtract"

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

    :goto_25
    add-long/2addr p0, v4

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_26
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    const-wide/16 v0, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v8

    nop

    nop

    :goto_29
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    :goto_2d
    move-wide v4, p0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    if-ge p2, v1, :cond_5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    :goto_30
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_31
    rem-int/2addr p2, v1

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v0, Ltmm;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_34
    const-wide/16 v6, 0x0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_35
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_36
    move v2, v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_39
    xor-long v2, v4, p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p0, p1, v2, v3}, Lrrf;->ac(JJ)J

    move-result-wide p0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_18

    nop

    :goto_3d
    sget-object p0, Ltmm;->a:Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3f
    move-wide v4, p0

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-object p0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-gez v0, :cond_7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Ltmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    invoke-static {p0}, Ltng;->d(Ltmm;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-wide v4, v0, Ltmm;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_47
    cmp-long v2, v2, v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_48
    const/4 v8, 0x0

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

    :goto_49
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_28

    nop

    nop

    :goto_4b
    const v0, 0x11

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int/2addr p2, v1

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

    :goto_4d
    cmp-long v0, v0, v6

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object v0, p1

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

    nop

    :goto_4f
    div-int v0, p2, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static d(Ltmm;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt p0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Ltmm;->c:I

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    if-gez p0, :cond_1

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
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_9
    const-string v0, "Timestamp is not valid. See proto definition for valid values. Seconds (%s) must be in range [-62,135,596,800, +253,402,300,799]. Nanos (%s) must be in range [0, +999,999,999]."

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_b
    iget-wide v0, p0, Ltmm;->b:J

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

    :goto_c
    const v2, 0x3b9aca00

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    nop

    nop

    :goto_e
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    throw v2

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
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

    :goto_15
    goto/32 :goto_12

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    :goto_17
    invoke-static {v0, v1}, Ltng;->f(J)Z

    move-result v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x3

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

    :goto_19
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    :try_start_0
    const-string v1, "java.time.Instant"

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

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

    :goto_8
    return-object v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_8

    nop

    nop
.end method

.method private static f(J)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    if-lez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    const-wide v0, -0xe7791f700L

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    cmp-long p0, p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

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

    :goto_11
    cmp-long v0, p0, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    const-wide v0, 0x3afff4417fL

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

    :goto_13
    if-gez v0, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop
.end method
