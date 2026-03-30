.class public final Lehk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V
    .locals 0

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    const-string p2, "DOUB"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    if-eqz p2, :cond_0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move p1, p3

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    :goto_6
    iput-object p1, p0, Lehk;->a:Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lehk;->g:I

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

    nop

    :goto_9
    const-string p2, "BLOB"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

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

    :goto_b
    const-string p2, "TEXT"

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

    :goto_c
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    iput p4, p0, Lehk;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    :goto_11
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    :goto_14
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    if-eqz p2, :cond_5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iput-object p5, p0, Lehk;->e:Ljava/lang/String;

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

    :goto_17
    const-string p2, "FLOA"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_4

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string p2, "CHAR"

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

    :goto_1b
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1c
    const-string p2, "CLOB"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2f

    nop

    :goto_1e
    goto/32 :goto_11

    nop

    nop

    :goto_1f
    iput-boolean p3, p0, Lehk;->c:Z

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

    :goto_20
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput p6, p0, Lehk;->f:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_23
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    const-string p2, "INT"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_27
    if-eqz p2, :cond_6

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

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string p2, "REAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_29
    const/4 p3, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 p1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2c
    goto :goto_2f

    nop

    nop

    :goto_2d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    iput-object p2, p0, Lehk;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lehk;->d:I

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_0
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-boolean v3, p1, Lehk;->c:Z

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

    :goto_2
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lehk;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Lehk;->e:Ljava/lang/String;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    :goto_7
    iget-boolean v1, p0, Lehk;->c:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v1, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Lehk;->f:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lehk;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p1, Lehk;->a:Ljava/lang/String;

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

    :goto_14
    iget p1, p1, Lehk;->g:I

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

    :goto_15
    const/4 v3, 0x2

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

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lehk;->a()Z

    move-result v1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lehk;->a()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v1, :cond_7

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Lehk;->f:I

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

    :goto_21
    if-eq v1, v3, :cond_8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lehk;->a:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p1, Lehk;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    if-ne v1, v3, :cond_a

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_32

    nop

    nop

    :goto_29
    return v0

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_44

    nop

    :goto_2c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v3, p1, Lehk;->f:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_30
    invoke-static {v1, v3}, Ldvy;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_31
    iget v1, p1, Lehk;->f:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_3f

    nop

    nop

    :goto_33
    goto/32 :goto_25

    nop

    nop

    :goto_34
    if-eq v1, v3, :cond_b

    nop

    goto/32 :goto_24

    nop

    :cond_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-ne p0, p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v3, p1, Lehk;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_39
    check-cast p1, Lehk;

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

    :goto_3a
    iget p0, p0, Lehk;->g:I

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

    :goto_3b
    invoke-static {v1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3c
    instance-of v1, p1, Lehk;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3e
    if-eqz v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    :cond_e
    :goto_3f
    goto/32 :goto_4d

    nop

    nop

    :goto_40
    if-eq v1, v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_10

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_11

    nop

    :goto_42
    invoke-static {v1, v4}, Ldvy;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_43
    goto :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v1, v3}, Ldvy;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_46
    if-eqz v1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    iget v1, p0, Lehk;->f:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_12
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4b
    iget-object v1, p1, Lehk;->e:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4c
    iget v1, p1, Lehk;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4d
    move v0, v2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4f
    iget-object v4, p1, Lehk;->e:Ljava/lang/String;

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

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v2, p0, Lehk;->c:Z

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
    iget-object v0, p0, Lehk;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lehk;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    add-int/2addr v0, p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int/2addr v0, v2

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

    :goto_8
    return v0

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x4d5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

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

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

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

    :goto_13
    iget p0, p0, Lehk;->d:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-int/lit8 v0, v0, 0x1f

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

    :goto_15
    const v1, 0x1f

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

    nop

    :goto_16
    mul-int/lit8 v0, v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_1b

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    const/16 v1, 0x4cf

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const-string v1, "\',\n            |   notNull = \'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    aput-object p0, v2, v4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lehk;->e:Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    iget v1, p0, Lehk;->g:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    const-string v1, "\n            |Column {\n            |   name = \'"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lehk;->a:Ljava/lang/String;

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

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_13
    const-string v1, "\',\n            |   primaryKeyPosition = \'"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-array v2, v2, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_17
    aput-object p0, v2, v4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "\',\n            |   defaultValue = \'"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string p0, "undefined"

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_25
    const/16 v4, 0x1d3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    :goto_27
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_28
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lehk;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string p0, "\'\n            |}\n        "

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_30
    const-string v1, "\',\n            |   type = \'"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v1, "\',\n            |   affinity = \'"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-boolean v1, p0, Lehk;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    const/16 v4, 0x1d4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object p0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    :goto_38
    iget v1, p0, Lehk;->d:I

    nop

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
.end method
