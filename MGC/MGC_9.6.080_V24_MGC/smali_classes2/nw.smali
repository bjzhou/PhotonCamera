.class public final Lnw;
.super Lnv;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnv;-><init>()V

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
.method public final bridge synthetic a(ILandroid/content/Intent;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_44

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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

    :goto_5
    const v0, 0x14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    aget v3, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2

    nop

    nop

    :goto_13
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_15
    invoke-direct {v2, p0, p2}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    const-string p1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

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

    :goto_17
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    const-string p0, "androidx.activity.result.contract.extra.PERMISSIONS"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_41

    nop

    :goto_20
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    :goto_24
    invoke-static {v1}, Lrkm;->X(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

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

    :goto_27
    if-lt v2, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    :goto_28
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance p2, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    :goto_2d
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

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

    :goto_2e
    array-length v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2f
    if-eqz p2, :cond_5

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

    :cond_5
    goto/32 :goto_20

    nop

    nop

    :goto_30
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Lrkm;->aZ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v2, Ltxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_23

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_6
    goto/32 :goto_26

    nop

    nop

    :goto_3f
    if-ne p1, p0, :cond_7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    :goto_40
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_b

    nop

    nop

    :goto_42
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_44
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_46
    const/4 p0, -0x1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Landroid/content/Intent;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const-string v0, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    check-cast p1, [Ljava/lang/String;

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

    :goto_6
    return-object p0

    nop

    nop

    :goto_7
    new-instance p0, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic c(Landroid/content/Context;Ljava/lang/Object;)Lfdn;
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    :goto_0
    aget-object v2, p2, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2
    aget-object p1, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    goto :goto_e

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_9
    array-length p0, p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b
    iget-object p1, v3, Ltxv;->a:Ljava/lang/Object;

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

    :goto_c
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v1}, Lfdn;-><init>(Ljava/lang/Object;)V

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p1, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_11
    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget-object v2, v3, Ltxv;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    :goto_15
    goto :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1a
    goto :goto_27

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    array-length p0, p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p0}, Lrkm;->R(I)I

    move-result p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v0, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    :goto_23
    invoke-direct {v3, p1, v2}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_25
    invoke-static {p1, v2}, Lucd;->h(II)I

    move-result p1

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

    :goto_26
    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    :goto_29
    invoke-static {p1, v2}, Ldtk;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2a
    const v1, 0x1e

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v3, Ltxv;

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

    nop

    nop

    :goto_2d
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2f
    new-instance p0, Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    nop

    :goto_31
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p2, [Ljava/lang/String;

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

    :goto_33
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lt v1, p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_35
    invoke-direct {p0, p1}, Lfdn;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop
.end method
