.class public abstract Llhg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    sput-object v0, Llhg;->a:Lsdb;

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x20

    nop

    nop

    goto/32 :goto_10

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

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
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

    :goto_7
    const-string v0, "lhg"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x26

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

    :goto_9
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    sput-object v0, Llhg;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    const/16 v2, 0x25

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop
.end method

.method public static a(Lpnu;Z)Lpou;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1}, Llhg;->e(Ljava/util/List;I)Lpou;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_5
    if-nez v1, :cond_2

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

    :goto_6
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_8
    sget-object v3, Llhg;->b:[I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    sget v0, Lcom/a;->aa:I

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

    :goto_a
    invoke-interface {p0}, Lpnu;->S()Ljava/lang/Object;

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

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    array-length v1, v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_5

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

    :cond_5
    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lcom/CameraLensSpecification;->B()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    :goto_12
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_13
    instance-of v1, v0, Lpnt;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lcom/CameraLensSpecification;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    rem-int v0, v0, v1

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

    :goto_19
    const/4 v1, 0x3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_6

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    :goto_1b
    invoke-static {p0, v1, v2}, Lkxh;->e(Lpnu;IZ)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x2

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

    :goto_1d
    goto/32 :goto_29

    nop

    :goto_1e
    invoke-static {p0, v3}, Llhg;->b(Lpnu;[I)Lpou;

    move-result-object p0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1f
    aget v1, v3, v0

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

    :goto_20
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v3, v0

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    iget v0, v0, Lpnt;->or:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lt v0, v1, :cond_9

    nop

    goto/32 :goto_16

    nop

    :cond_9
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, [I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    :goto_2c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    :goto_2e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Lpnt;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public static varargs b(Lpnu;[I)Lpou;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    sput-boolean v2, Lcom/a;->RAW:Z

    nop

    nop

    nop

    goto/32 :goto_f

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

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    aget v1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Lpnu;->y(I)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-static {v2, v1}, Llhg;->e(Ljava/util/List;I)Lpou;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, v0, 0x1

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

    :goto_a
    sput-boolean v1, Lcom/a;->RAW:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-static {v2, v1}, Llhg;->e(Ljava/util/List;I)Lpou;

    move-result-object v1

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
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, v1}, Lpnu;->y(I)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    return-object v1

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    :goto_16
    const v1, 0x12

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

    nop

    nop

    :goto_17
    array-length v1, p1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v1, 0x23

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static varargs b_no_raw(Lpnu;[I)Lpou;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v2, v1}, Llhg;->e(Ljava/util/List;I)Lpou;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    array-length v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_e
    const-string p1, "No supported output sizes found!!"

    nop

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

    nop

    :goto_f
    invoke-interface {p0, v1}, Lpnu;->y(I)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget v1, p1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    throw p0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public static c(Lpnu;ILkmn;Lfdo;)Lphj;
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Llhg;->b_no_raw(Lpnu;[I)Lpou;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p0, p3, Llha;->a:Lpnx;

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
    iput-boolean p0, p3, Llha;->d:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-interface {p0}, Lpnu;->j()Lpnx;

    move-result-object p0

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

    :goto_5
    invoke-virtual {p3}, Lfdo;->X()Llha;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p3}, Llha;->a()Lphj;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :goto_8
    iput p0, p3, Llha;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    filled-new-array {p1}, [I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p3, Llha;->b:Lpou;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget p0, p2, Lkmn;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static d(Lfdo;Lpnu;Lkmn;Lnne;Lhoh;Lrss;ZZZZLlhv;)Lphj;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    iget p2, p2, Lkmn;->b:I

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

    :goto_1
    sget-object p3, Lhni;->w:Lhmn;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2
    sget-object p3, Llhv;->h:Llhv;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p4, p7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p4

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

    nop

    :goto_5
    if-nez p3, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    :goto_6
    move p3, v1

    nop

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

    :goto_7
    new-instance p7, Lpou;

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

    :goto_8
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p5}, Lrss;->f()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_a
    sget-object p7, Llhv;->h:Llhv;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_b
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean p6, p0, Llha;->g:Z

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

    :goto_f
    const/16 p3, 0x25

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p8}, Llhg;->a(Lpnu;Z)Lpou;

    move-result-object p7

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4, p3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    sget-object p7, Lhlx;->c:Lhmo;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 p1, 0x6

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_18
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_19
    iput-boolean p8, p0, Llha;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    if-eq v0, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_1d
    if-nez p3, :cond_4

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p4, p3}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

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

    :goto_21
    sget-object v0, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    if-nez p7, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p4, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Lpnu;->j()Lpnx;

    move-result-object p1

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

    nop

    :goto_25
    if-eqz p3, :cond_6

    nop

    goto/32 :goto_37

    nop

    :cond_6
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput p2, p0, Llha;->c:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ljava/lang/Long;

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

    :goto_28
    invoke-virtual {p0}, Llha;->a()Lphj;

    move-result-object p0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq p3, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p10, p7}, Llhv;->equals(Ljava/lang/Object;)Z

    move-result p7

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

    :goto_2b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p7, p3, p9}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lfdo;->X()Llha;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p1, p0, Llha;->a:Lpnx;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p3, Lhlx;->f:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    iput-object p1, p0, Llha;->f:Ljava/lang/Long;

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

    :goto_32
    invoke-virtual {p4, p7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p4

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_33
    invoke-virtual {p10, p3}, Llhv;->equals(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p9, :cond_8

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

    :cond_8
    :goto_37
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_38
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    :goto_3a
    goto/32 :goto_23

    nop

    nop

    :goto_3b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_9

    nop

    goto/32 :goto_2c

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    :goto_3d
    invoke-static {p4}, Lhni;->b(Lhoh;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3e
    move p3, v2

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_40
    sget-object p3, Lhlx;->b:Lhmo;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_3a

    nop

    :goto_42
    goto/32 :goto_16

    nop

    nop

    :goto_43
    sget-object v3, Lpog;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_44
    iput-object p7, p0, Llha;->b:Lpou;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_46
    invoke-virtual {p4, p3}, Lhoh;->p(Lhmn;)Z

    move-result p3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_47
    invoke-direct {p9, p3, p4}, Lpck;-><init>(II)V

    goto/32 :goto_f

    nop

    nop

    :goto_48
    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput-boolean v1, p0, Llha;->d:Z

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

    :goto_4b
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4d
    const v1, 0x14

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object p7, Lhlx;->g:Lhmo;

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

    :goto_4f
    new-instance p9, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return-object p0

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_52
    if-nez p3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_a
    goto/32 :goto_30

    nop

    nop

    :goto_53
    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez p7, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_55
    iput-wide p1, p0, Llha;->i:J

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_28

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static e(Ljava/util/List;I)Lpou;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lolx;->aI(Ljava/util/List;)Lpck;

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-direct {v0, p1, p0}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lpou;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop
.end method
