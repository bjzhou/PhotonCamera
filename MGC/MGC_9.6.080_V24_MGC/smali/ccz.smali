.class final Lccz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final a:Lccz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lccz;->a:Lccz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lccz;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Lccz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method private static final a(Lcth;)Lbtg;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lbtg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1}, Lbtg;-><init>([Ljava/lang/Object;)V

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v1, v1, [Lcth;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, p0}, Lbtg;->f(ILjava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcth;->s()Lcth;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_c

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    const v0, 0x20

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_1
    const-string p1, "Could not find a common ancestor between the two FocusModifiers."

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v2, v1

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

    :goto_3
    check-cast p2, Lccs;

    nop

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

    :goto_4
    invoke-virtual {p1}, Lcth;->l()I

    move-result p1

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

    :goto_5
    goto/32 :goto_22

    nop

    :goto_6
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7
    aget-object p1, p1, v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p2}, Lccy;->d(Lccs;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    check-cast p1, Lccs;

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

    :goto_12
    if-nez p0, :cond_2

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_14
    aget-object p0, p0, v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    move v0, v1

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

    :goto_16
    if-ne v0, p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    add-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Lccz;->a(Lcth;)Lbtg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0, p1}, Luch;->a(II)I

    move-result v0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_21

    nop

    :goto_20
    invoke-static {p1}, Lcrx;->d(Lcrw;)Lcth;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_c

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1d

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_25
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Lccy;->d(Lccs;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Lcth;

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

    :goto_29
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    aget-object v2, v2, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2e
    invoke-static {p2}, Lcrx;->d(Lcrw;)Lcth;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2f
    const/4 v1, -0x1

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

    :goto_30
    const/4 v0, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1}, Lccy;->d(Lccs;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_33
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcth;->l()I

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_36
    goto :goto_39

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    throw p0

    nop

    :goto_39
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3a
    if-gez p2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_7
    :goto_3b
    goto/32 :goto_3d

    nop

    nop

    :goto_3c
    iget v2, p1, Lbtg;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, p0, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p2}, Lccy;->d(Lccs;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget p2, p0, Lbtg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_40
    check-cast p1, Lcth;

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

    :goto_41
    goto/16 :goto_e

    nop

    :goto_42
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    :goto_44
    iget-object v2, p1, Lbtg;->a:[Ljava/lang/Object;

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

    :goto_45
    invoke-static {p0}, Lccz;->a(Lcth;)Lbtg;

    move-result-object p0

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
.end method
