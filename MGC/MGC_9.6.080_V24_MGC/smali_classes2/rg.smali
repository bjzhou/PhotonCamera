.class public final Lrg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsl;


# instance fields
.field private final a:Lvm;

.field private final b:Lov;

.field private final c:Lejk;


# direct methods
.method public constructor <init>(Lejk;Lvm;Lov;Lejk;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lrg;->c:Lejk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lrg;->b:Lov;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    iput-object p2, p0, Lrg;->a:Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsd;Ljava/util/Map;Lsp;)Ljava/util/Map;
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lov;->d:Ljava/util/List;

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

    nop

    nop

    :goto_3
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    :goto_4
    invoke-static {p0}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_5
    const v1, 0x1c

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

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_34

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    :goto_b
    iget-object v0, p2, Lsz;->a:Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    iget-object p0, p2, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    sget-object p0, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lqd;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x21

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Lqd;->b:Landroid/util/Size;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    goto/32 :goto_3b

    nop

    :goto_15
    iget-object p0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    iget-object p0, p0, Lqei;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_19
    iget-object p0, p2, Lsz;->a:Ljava/util/List;

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

    :goto_1a
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    nop

    nop

    :goto_1c
    iget p0, p0, Lqd;->c:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v2, Lsu;

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

    :goto_1e
    invoke-interface {p1, v2, p0, p3}, Lsd;->k(Lsu;Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lqei;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p3, p1, p0, p2}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lqd;->b:Landroid/util/Size;

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

    :goto_23
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string p2, " for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p3}, Lsp;->f()V

    :goto_26
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_28
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p3}, Lsp;->f()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lrg;->b:Lov;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    const-string v1, "CXCP"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lrg;->c:Lejk;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Lsd;->a()Ljava/lang/String;

    move-result-object v3

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

    :goto_2f
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lfdn;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_32
    invoke-interface {p1, p0, p3}, Lsd;->h(Ljava/util/List;Lsp;)Z

    move-result p0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, v2, p2, v1, v3}, Lkg;->D(Lov;Lvm;Ljava/util/Map;Lejk;Ljava/lang/String;)Lsz;

    move-result-object p2

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

    :goto_34
    iget-object p0, p0, Lrg;->b:Lov;

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

    :goto_35
    rem-int v0, v0, v1

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

    :goto_36
    iget-object v2, p0, Lrg;->a:Lvm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_37
    iget-object p0, p0, Lrg;->b:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_38
    const-string p1, "Failed to create OutputConfigurations for "

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_39
    const-string p0, "Failed to create capture session from "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    goto/32 :goto_7

    nop

    :goto_3b
    goto/32 :goto_2a

    nop

    nop

    :goto_3c
    invoke-direct {v2, v0, v3, p0}, Lsu;-><init>(III)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Ltyx;->a:Ltyx;

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
.end method
