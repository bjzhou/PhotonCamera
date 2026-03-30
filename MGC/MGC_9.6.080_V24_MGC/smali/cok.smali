.class final Lcok;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcqk;
.implements Lcpc;


# instance fields
.field final synthetic a:Lcou;

.field private final synthetic b:Lcom;


# direct methods
.method public constructor <init>(Lcou;)V
    .locals 0

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcok;->a:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lcou;->h:Lcom;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lubo;)Ljava/util/List;
    .locals 3

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/16 :goto_45

    nop

    nop

    :goto_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

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

    nop

    :goto_4
    iget v1, v0, Lbtg;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt p2, p1, :cond_0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcok;->a:Lcou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_8
    const-string p1, "Error: currentPostLookaheadIndex cannot be greater than the size of thepostLookaheadComposedSlotIds list."

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Lbtg;->n(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iget-object p2, p0, Lcou;->a:Lcth;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4d

    nop

    nop

    :goto_f
    iget-object v0, v0, Lctw;->B:Lctz;

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

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-ge v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_14
    const/4 p2, 0x0

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lcth;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcth;->w()Lctw;

    move-result-object p0

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

    :goto_18
    invoke-virtual {p0, p1, p2}, Lcou;->a(Ljava/lang/Object;Lubo;)Lcqf;

    move-result-object p2

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_19
    iget-object p0, p0, Lcok;->a:Lcou;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcou;->l:Lbtg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lcth;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_2d

    nop

    :goto_1d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lcou;->j:Ljava/util/HashMap;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lcth;->C()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq p2, v0, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lctw;

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

    :goto_25
    iget v2, p0, Lcou;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_34

    nop

    nop

    :goto_28
    invoke-virtual {p2, v1}, Lcth;->Z(Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_29
    iget v0, p0, Lcou;->e:I

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

    nop

    :goto_2a
    iput v0, p0, Lcou;->e:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2b
    const/4 v0, 0x6

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    :goto_2d
    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    iget-object p2, p0, Lcou;->a:Lcth;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2f
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Lcou;->g:Ljava/util/HashMap;

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

    :goto_31
    iput-boolean v1, v0, Lctz;->b:Z

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

    nop

    :goto_32
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_5
    goto/32 :goto_40

    nop

    :goto_33
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4e

    nop

    nop

    :goto_37
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lcou;->k:Ljava/util/Map;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p0, :cond_7

    nop

    goto/32 :goto_36

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lcou;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0}, Lctw;->j()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3e
    return-object v0

    nop

    nop

    :goto_3f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    if-eq v1, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v2, p1}, Lbtg;->d(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_45
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v0, Lctc;->c:Lctc;

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

    :goto_47
    invoke-static {p2, v1, v0}, Lcth;->at(Lcth;ZI)V

    :goto_48
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2}, Lcth;->p()Lctc;

    move-result-object p2

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4a
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4c
    add-int/lit8 p2, p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4d
    iget-object p2, p0, Lcou;->a:Lcth;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4e
    sget-object p0, Ltyw;->a:Ltyw;

    nop

    :goto_4f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lcom;->b:F

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
.end method

.method public final c()F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lcom;->c:F

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
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final cp(F)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-wide p0

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ldpa;->g(Ldpb;F)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final cr(J)F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Ldph;->a(Ldpi;J)F

    move-result p0

    nop

    goto/32 :goto_1

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

    nop

    :goto_2
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final cs(F)F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpa;->a(Ldpb;F)F

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final ct(I)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    :goto_2
    invoke-static {p0, p1}, Ldpa;->b(Ldpb;I)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final cu(J)F
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcok;->b:Lcom;

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
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Ldpa;->c(Ldpb;J)F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final cv(F)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ldpa;->d(Ldpb;F)F

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final cw(F)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ldpa;->e(Ldpb;F)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final cx(J)J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-wide p0

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Ldpa;->f(Ldpb;J)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final cy(F)J
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-wide p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ldph;->b(Ldpi;F)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final m(IILjava/util/Map;Lubk;)Lcpa;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3, p4}, Lcpb;->a(Lcpc;IILjava/util/Map;Lubk;)Lcpa;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    goto/32 :goto_0

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

.method public final n()Ldpq;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom;->a:Ldpq;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcok;->b:Lcom;

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
.end method

.method public final o()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom;->o()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final p(IILjava/util/Map;Lubk;)Lcpa;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom;->p(IILjava/util/Map;Lubk;)Lcpa;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcok;->b:Lcom;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop
.end method
