.class public final Lre;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsl;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(Lejk;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lre;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lejk;I[B)V
    .locals 0

    goto/32 :goto_3

    nop

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput p2, p0, Lre;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsd;Ljava/util/Map;Lsp;)Ljava/util/Map;
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, p3, p1, p0, v1}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    check-cast v3, Landroid/view/Surface;

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

    :goto_a
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b
    iget p0, p0, Lre;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p0, p3}, Lsd;->g(Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    const-string p0, "Failed to create capture session from "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    const/16 v2, 0x21

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

    :goto_13
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    nop

    nop

    :goto_16
    invoke-interface {p1, p0, p3}, Lsd;->i(Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    new-instance p0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_18
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_37

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    :goto_20
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    const-string p0, "Failed to create ConstrainedHighSpeedCaptureSession from "

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v3, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v0, "CXCP"

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2f
    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_31
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3}, Lsp;->f()V

    :goto_33
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3d

    nop

    nop

    :goto_35
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    :goto_36
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_37
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v1, " for "

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_39
    if-eqz p0, :cond_5

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_3a
    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3b
    invoke-static {v2, p3, p1, p0, v1}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3c
    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_3d
    invoke-virtual {p3}, Lsp;->b()V

    :goto_3e
    goto/32 :goto_4

    nop

    nop

    nop
.end method
