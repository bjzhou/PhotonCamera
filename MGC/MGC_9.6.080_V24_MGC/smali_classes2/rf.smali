.class public final Lrf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsl;


# instance fields
.field private final a:Lov;


# direct methods
.method public constructor <init>(Lejk;Lov;)V
    .locals 0

    goto/32 :goto_3

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
    iput-object p2, p0, Lrf;->a:Lov;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsd;Ljava/util/Map;Lsp;)Ljava/util/Map;
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2
    check-cast p0, Lqd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

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

    :goto_4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    :goto_5
    goto/32 :goto_37

    nop

    nop

    :goto_6
    const/16 v2, 0x21

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7
    invoke-static {v2, p3, p1, p0, v1}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, p0, p3}, Lsd;->g(Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Lqd;->b:Landroid/util/Size;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_b
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    check-cast v3, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

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

    :goto_12
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_31

    nop

    nop

    :goto_14
    invoke-static {p0}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_27

    nop

    :goto_16
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v3, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Lqd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lqei;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_2
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1e
    check-cast v3, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v3, Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_21
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p3}, Lsp;->b()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p3}, Lsp;->f()V

    :goto_27
    goto/32 :goto_41

    nop

    nop

    :goto_28
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v0, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    const v1, 0x16

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

    :goto_2c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz p0, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    :goto_2e
    check-cast p0, Lfdn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v4, Landroid/hardware/camera2/params/InputConfiguration;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    const-string p0, "Failed to create reprocessable captures session from "

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lrf;->a:Lov;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    check-cast p0, Lqei;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_35
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_36
    invoke-static {v2, p3, p1, p0, v1}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lov;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3c
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v5, p0, Lqd;->b:Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3f
    const-string v1, " for "

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_42
    invoke-direct {v4, v3, v5, p0}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_44
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_8

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    :goto_47
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string p0, "Failed to create captures session from "

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_49
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1, v4, p0, p3}, Lsd;->j(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v3, :cond_5

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

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
