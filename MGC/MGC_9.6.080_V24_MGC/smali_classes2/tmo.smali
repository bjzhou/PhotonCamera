.class final Ltmo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static volatile a:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Ljava/lang/Object;)Ltmp;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltkg;->aW:Ltmp;

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

    nop

    nop

    :goto_1
    check-cast p0, Ltkg;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/Object;Ltmp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltkg;->aW:Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ltkg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Ljava/lang/Object;Ltjo;I)Z
    .locals 7

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Protocol message end-group tag did not match expected tag."

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4
    const-string p1, "Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit."

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2, p0}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_8
    if-eq v0, p0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p0, p2}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt p3, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_2
    :goto_b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p0, Ltkx;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    check-cast p1, Ltmp;

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

    :goto_10
    const/4 p0, 0x5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    const v6, 0x7fffffff

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_13
    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    :goto_14
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p0, Ltky;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-direct {p0}, Ltkx;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    :goto_1b
    goto/32 :goto_30

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Ltjo;->j()J

    move-result-wide p2

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

    :goto_1d
    if-eq v3, p0, :cond_4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ltmz;->a(I)I

    move-result v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, p1}, Ltky;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0}, Ltmp;-><init>()V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_24
    const/4 v4, 0x3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p2}, Ltjo;->o()Ltjj;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    :goto_27
    return v2

    nop

    nop

    :goto_28
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, p1, v1, p2}, Ltmo;->c(Ljava/lang/Object;ILtjj;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget p0, p2, Ltjo;->a:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v4}, Ltmz;->c(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Ltjo;->k()J

    move-result-wide p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p1, v1, p2, p3}, Ltmo;->d(Ljava/lang/Object;IJ)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_32
    sget v5, Ltmo;->a:I

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

    :goto_33
    new-instance p0, Ltky;

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

    :goto_34
    invoke-static {v1, p0}, Ltmz;->c(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return v2

    nop

    :goto_36
    goto/32 :goto_43

    nop

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

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v1, v2}, Ltmz;->c(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Ltmp;->d()V

    goto/32 :goto_2f

    nop

    nop

    :goto_3a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_33

    nop

    nop

    :goto_3c
    invoke-virtual {p2}, Ltjo;->c()I

    move-result v5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Ltmp;

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

    :goto_3e
    invoke-static {v1, v3}, Ltmz;->c(II)I

    move-result v3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v0, p2, p3}, Ltmo;->a(Ljava/lang/Object;Ltjo;I)Z

    move-result v5

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Ltjo;->e()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_41
    if-ne v0, v2, :cond_7

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_42
    add-int/2addr p3, v2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_43
    goto/32 :goto_21

    nop

    nop

    :goto_44
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_47
    if-ne v0, v3, :cond_8

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_8
    goto/32 :goto_44

    nop

    nop

    :goto_48
    const v1, 0x13

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_49
    const v0, 0x13

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4a
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-ne v0, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 p0, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-ne v5, v6, :cond_a

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4f
    iget v0, p2, Ltjo;->a:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ltmz;->b(I)I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1, p0, v0}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltmp;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Ltmp;->a:Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ltmp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, Ltmo;->g(Ljava/lang/Object;Ltmp;)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Ltmo;->f(Ljava/lang/Object;)Ltmp;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Ljava/lang/Object;ILtjj;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p1, p0, p3}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {p2, p0}, Ltmz;->c(II)I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ltmp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final bridge synthetic d(Ljava/lang/Object;IJ)V
    .locals 0

    goto/32 :goto_5

    nop

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
    invoke-virtual {p1, p0, p2}, Ltmp;->e(ILjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p1, Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2, p0}, Ltmz;->c(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ltmo;->f(Ljava/lang/Object;)Ltmp;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ltmp;->d()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
