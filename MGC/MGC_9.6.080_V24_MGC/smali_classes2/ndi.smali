.class public Lndi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lndu;


# static fields
.field static final a:Lryb;

.field public static final b:Lryb;

.field private static final i:Lsdb;


# instance fields
.field private final A:Z

.field private final B:Ljava/util/ArrayList;

.field private C:Z

.field private D:Z

.field private E:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

.field private final F:Lrtm;

.field private final G:Ldt;

.field private final H:Z

.field private final I:Z

.field private J:Lnnf;

.field private final K:Ljava/util/Map;

.field private final L:Lnia;

.field private final M:Lltr;

.field private final N:Ltxm;

.field private final O:Loyd;

.field private final P:Loyd;

.field private final Q:Lfwv;

.field private final R:Lkyf;

.field private final S:Lmjv;

.field private final T:Lobe;

.field private final U:Lfdn;

.field public c:Z

.field public d:Lnne;

.field public final e:Lj$/util/concurrent/ConcurrentHashMap;

.field public f:Ljhy;

.field public final g:Lndk;

.field public final h:Lneb;

.field private final j:Lglm;

.field private final k:Lngo;

.field private final l:Ljdc;

.field private final m:Landroid/view/WindowManager;

.field private n:Ljava/util/ArrayList;

.field private o:I

.field private p:Lnne;

.field private final q:Landroid/content/Context;

.field private final r:Lpdf;

.field private final s:Z

.field private final t:Lmkl;

.field private final u:Z

.field private final v:Z

.field private final w:Z

.field private final x:Z

.field private final y:Z

.field private final z:Z


# direct methods
.method private final 175bafa759041016accb75ef876de5d9m(Lnne;)Lnnf;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sget-object p1, Lnnf;->a:Lnnf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lnnf;->b:Lnnf;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lndi;->92ebcae27b5395a18af07a7e07265cf7m(Lnne;)Lnnf;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 21017490f1e4e968f513520349816008m(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lnia;->j(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Lneb;->h(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndi;->h:Lneb;

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

    :goto_4
    iget-object v0, p0, Lndi;->g:Lndk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p1, v0, Lndk;->a:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lndi;->L:Lnia;

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
.end method

.method private final 58bdc013cbfa0784191428aca07544ffm(I)Z
    .locals 5

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lndi;->R:Lkyf;

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lobe;->a:Z

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lndi;->F:Lrtm;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_7
    invoke-virtual {p1}, Ljrw;->r()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4c

    nop

    :goto_9
    if-eq p1, v2, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljrw;

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

    :goto_d
    goto/16 :goto_1d

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    :goto_f
    iget-object p0, p0, Lndi;->R:Lkyf;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3}, Lkyf;->B()Z

    move-result v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_4
    goto/32 :goto_4b

    nop

    :goto_13
    check-cast v0, Lhkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Lkyf;->F(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    sget-object v1, Lnbe;->d:Lnbe;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lkyf;->D(I)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lndi;->T:Lobe;

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

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_5

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

    :cond_5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lhkm;->P:Lbob;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x1b

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

    :goto_22
    return v2

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3c

    nop

    nop

    :goto_24
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_25
    sget-object v4, Lhkx;->a:Lhkx;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lnbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    iget-object v0, v0, Lnbr;->i:Lnbe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lhkm;->u:Lbob;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    check-cast v0, Lhkm;

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

    :goto_2b
    const/4 v0, 0x2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lobe;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v0}, Lbob;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_7
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljrw;->D()Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lhkm;->j()V

    :goto_33
    goto/32 :goto_54

    nop

    nop

    :goto_34
    if-ne v0, v4, :cond_8

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_37
    const/4 v2, 0x1

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

    :goto_38
    goto :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_48

    nop

    nop

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0x1d

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lndi;->N:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3f
    goto :goto_4e

    nop

    nop

    :goto_40
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_41
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_42
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return v1

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_18

    nop

    nop

    :goto_48
    iget-object v0, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_49
    return v2

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_44

    nop

    :goto_4c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return v2

    nop

    :goto_4e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v3, p0, Lndi;->R:Lkyf;

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

    :goto_50
    check-cast v0, Lhkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v0}, Lbob;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_52
    return v1

    nop

    nop

    :goto_53
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_54
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method private final 5b7bb05b5fd6d37dbb26e03fa57e326fm(Lryb;)Ljava/util/List;
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v1, p0, Lndi;->w:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lndi;->I:Z

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    iget-boolean v1, p0, Lndi;->H:Z

    nop

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

    :goto_3
    sget-object v1, Lnne;->t:Lnne;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    iget-boolean v1, p0, Lndi;->v:Z

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

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lnne;->n:Lnne;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_15

    nop

    nop

    :goto_a
    sget-object v1, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lnne;->o:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    :goto_13
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    :goto_14
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    return-object v0

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lnne;->l:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v1, p0, Lndi;->A:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    iget-boolean v1, p0, Lndi;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_24
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_26
    goto/32 :goto_2

    nop

    nop

    :goto_27
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 69171c9442ce2032a1a52868f05f9d1cm(Lnnf;)V
    .locals 10

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v9, v1

    nop

    nop

    :goto_1
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v5, v4, Lneb;->f:Ljava/util/Map;

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

    :goto_3
    invoke-virtual {v6, v3}, Lndy;->a(Lnne;)Landroid/widget/TextView;

    move-result-object v8

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    iget-object v8, v4, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_6
    if-lt v2, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_9
    move v9, v7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    move v8, v7

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

    :goto_e
    iget-object v5, v4, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_f
    if-ne v3, v8, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, v5, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v5, v8, v3}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i(Landroid/widget/TextView;Lnne;)V

    :goto_13
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_16
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v7, v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v6, v8, v3}, Lndy;->c(Landroid/widget/TextView;Lnne;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v9, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v5, :cond_2

    nop

    goto/32 :goto_29

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    :goto_21
    if-nez v6, :cond_3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    iget-object v5, v4, Lneb;->a:Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v6, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v0, 0x1324

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_28
    goto/16 :goto_13

    nop

    :goto_29
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v4, :cond_4

    nop

    goto/32 :goto_49

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_2d
    move v2, v1

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2f
    iget-object v8, v4, Lneb;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_30
    iget-object v4, p0, Lndi;->h:Lneb;

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

    :goto_31
    check-cast v4, Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_32
    sget-object p0, Lndi;->i:Lsdb;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_33
    if-ne v3, v9, :cond_5

    nop

    goto/32 :goto_51

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1a

    nop

    nop

    :goto_35
    iget-object v4, v4, Lneb;->a:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v6, v3, v7}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j(Lnne;Z)V

    :goto_37
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v3, Lnne;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_45

    nop

    :goto_3a
    goto/32 :goto_44

    nop

    nop

    :goto_3b
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    check-cast v8, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3d
    if-eqz v4, :cond_6

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v6, v5, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Lneb;->d()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_42
    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_44
    move v8, v1

    nop

    :goto_45
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v6, "Cannot append UNINITIALIZED mode"

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_47
    iget-object v6, v4, Lneb;->b:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    :goto_4b
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_3

    nop

    nop

    :goto_4c
    iget-object v5, v4, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4d
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4e
    iget-object v5, v4, Lneb;->b:Ljava/util/EnumMap;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v8, v6}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_53
    check-cast v6, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_54
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v5, v8, v3}, Lndy;->c(Landroid/widget/TextView;Lnne;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    :goto_59
    invoke-virtual {v5, v3, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_e

    nop

    nop

    :goto_5a
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_63

    nop

    nop

    :goto_5d
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v5, Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5f
    sget-object v8, Lnne;->a:Lnne;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v5, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v9, v6}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v0, "No configuration available for supermode: %s. Keeping previous mode chips."

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    return-void

    nop

    :goto_64
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7521e341d48b08f214d1dac0738f16d0m(Lryb;)Ljava/util/List;
    .locals 2

    goto/32 :goto_3

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

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p0, p0, Lndi;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v1, p0, Lndi;->z:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lnne;->b:Lnne;

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

    :goto_8
    sget-object v1, Lnne;->r:Lnne;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

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

    :goto_a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    :goto_10
    iget-boolean v1, p0, Lndi;->y:Z

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    sget-object v1, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lndi;->B:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lnne;->e:Lnne;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v1, Lnne;->s:Lnne;

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    :goto_20
    sget-object v1, Lnne;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v1, p0, Lndi;->s:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_23
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_29

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method private final 92ebcae27b5395a18af07a7e07265cf7m(Lnne;)Lnnf;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lnnf;->a:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v2, Ljava/util/ArrayList;

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

    :goto_5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_9
    iget-object v2, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

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

    :goto_b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const v0, 0x1e

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

    :goto_10
    const v1, 0xd

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

    :goto_11
    goto/32 :goto_16

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lnnf;

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

    :goto_15
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v3, Lnne;->n:Lnne;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lnne;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    sget-object v3, Lnne;->r:Lnne;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v6, Lnne;->k:Lnne;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    sget-object v5, Lnne;->g:Lnne;

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

    :goto_d
    sget-object v1, Lnne;->d:Lnne;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_f
    sget-object v1, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    sput-object v0, Lndi;->a:Lryb;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    invoke-static/range {v1 .. v6}, Lryb;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    sget-object v2, Lnne;->e:Lnne;

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

    :goto_13
    sput-object v0, Lndi;->b:Lryb;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lndi;->i:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    sget-object v4, Lnne;->q:Lnne;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1, v2, v3}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_17
    sget-object v0, Lnne;->s:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    const-string v0, "ndi"

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

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/view/WindowManager;Lmjv;Lglm;Lfwv;Lngo;Ljdc;Lneb;ZLpdf;Landroid/content/Context;Lfdn;Lkbc;Lmkl;Lkyf;Lhoh;Lrtm;Ldt;Lj$/util/concurrent/ConcurrentHashMap;Ljub;Lltr;Ltxm;Loyd;Loyd;Lnia;Lobe;)V
    .locals 8

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v7, Lndk;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v7, p14

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4
    move-object/from16 v2, p10

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7
    sget-object v5, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean v1, v0, Lndi;->x:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lhng;->b:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_c
    iput-boolean v1, v0, Lndi;->v:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v6, p17

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5c

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v3}, Lndi;->5b7bb05b5fd6d37dbb26e03fa57e326fm(Lryb;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v6, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v1, v0, Lndi;->H:Z

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v7, v0, Lndi;->e:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v7, p16

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v7, p23

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_1e
    iput-object v7, v0, Lndi;->L:Lnia;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Lnne;->p:Lnne;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    iput-boolean v1, v0, Lndi;->I:Z

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_21
    move-object v7, p2

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_22
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_23
    sget-object v3, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lhmr;->f:Lhmn;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v7, v0, Lndi;->R:Lkyf;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v7, v0, Lndi;->N:Ltxm;

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_27
    if-nez v1, :cond_0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v7, p24

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v1, v0, Lndi;->w:Z

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2a
    sget-object v1, Lnnf;->c:Lnnf;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v3, p15

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2c
    move-object v1, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lnne;->a:Lnne;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean v1, v0, Lndi;->A:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_30
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    iput-object v7, v0, Lndi;->g:Lndk;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_32
    iput-object v6, v0, Lndi;->h:Lneb;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_34
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v7, v0, Lndi;->T:Lobe;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    iput-boolean v1, v0, Lndi;->y:Z

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v5, Ljava/util/LinkedHashMap;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_38
    invoke-static {v3}, Lfwt;->d(Landroid/content/Intent;)Lnne;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v5, Lnne;->b:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_3b
    invoke-interface {v1, p0}, Lkbc;->a(Lndu;)V

    goto/32 :goto_5b

    nop

    nop

    :goto_3c
    iput-object v7, v0, Lndi;->F:Lrtm;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v6, p9

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move/from16 v7, p8

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

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

    :goto_40
    sget-object v3, Lnnf;->b:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_41
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_42
    sget-object v3, Lnne;->b:Lnne;

    nop

    nop

    :goto_43
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v5, v0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v6, p7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v2, v0, Lndi;->q:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_47
    iput-object v7, v0, Lndi;->P:Loyd;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_48
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static/range {p15 .. p15}, Lhlw;->b(Lhoh;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_4b
    iput-object v6, v0, Lndi;->r:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_4c
    iput-object v6, v0, Lndi;->l:Ljdc;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v7, p13

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

    nop

    :goto_4e
    sget-object v1, Lnnf;->b:Lnnf;

    nop

    nop

    :goto_4f
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput-object v6, v0, Lndi;->Q:Lfwv;

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

    :goto_51
    sget-object v3, Lnnf;->c:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_52
    sget-object v1, Lhly;->S:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v7, v0, Lndi;->t:Lmkl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_56
    sget-object v5, Lnnf;->b:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_57
    move-object/from16 v4, p19

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

    :goto_58
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_60

    nop

    nop

    :goto_5a
    iput-object v7, v0, Lndi;->O:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    :goto_5c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_5e
    iput-object v1, v0, Lndi;->B:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5f
    iput-object v6, v0, Lndi;->j:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_60
    iget-boolean v2, v4, Ljub;->b:Z

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v1, v0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_62
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v1, Lhly;->K:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_65
    iput-object v5, v0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_66
    invoke-virtual/range {p11 .. p11}, Lfdn;->h()Landroid/content/Intent;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-nez v1, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-object v7, v0, Lndi;->M:Lltr;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_69
    move-object v6, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_43

    nop

    :goto_6c
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v7, v0, Lndi;->S:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v7, p18

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6f
    iget-boolean v2, v4, Ljub;->c:Z

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iput-boolean v1, v0, Lndi;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_71
    move-object/from16 v7, p25

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v5, v0, Lndi;->d:Lnne;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-object v6, v0, Lndi;->k:Lngo;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_74
    iput-boolean v7, v0, Lndi;->s:Z

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

    :goto_75
    const v0, 0x1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_76
    iput-object v6, v0, Lndi;->G:Ldt;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_78
    iget-boolean v2, v4, Ljub;->a:Z

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_79
    sget-object v2, Lnne;->q:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7a
    move-object v6, p4

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_7b
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_7c
    iput-boolean v1, v0, Lndi;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_7d
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v1, p12

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_7f
    move-object v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

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

    :goto_82
    iput-object v1, v0, Lndi;->m:Landroid/view/WindowManager;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_83
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_84
    invoke-direct {v7, p0, p1, v2}, Lndk;-><init>(Lndv;Landroid/view/WindowManager;Landroid/content/Context;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-object v1, v0, Lndi;->n:Ljava/util/ArrayList;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_86
    move-object/from16 v7, p22

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v5, v0, Lndi;->p:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_88
    invoke-direct {p0, v3}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v1, Lhly;->ah:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_8a
    sget-object v1, Lhmq;->aJ:Lhmn;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v6, p11

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v7, p21

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    sget-object v1, Lhnu;->f:Lhmn;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_8e
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    :goto_8f
    invoke-direct {p0, v2}, Lndi;->7521e341d48b08f214d1dac0738f16d0m(Lryb;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-object v6, v0, Lndi;->U:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v3, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_93
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_94
    sget v2, Lryb;->d:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_95
    iput-boolean v5, v0, Lndi;->D:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iput-object v1, v0, Lndi;->p:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static/range {p15 .. p15}, Lhnw;->a(Lhoh;)Z

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_98
    move-object/from16 v7, p20

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ad49e23a9e5e6fdec23353cfc00ae3a3m()V
    .locals 10

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

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

    :goto_1
    iget-object v0, p0, Lndi;->h:Lneb;

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

    :goto_2
    iget-object v8, v7, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lnnf;->b:Lnnf;

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

    nop

    :goto_4
    iget-object v6, v6, Lneb;->f:Ljava/util/Map;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v8, Lnne;->a:Lnne;

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

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3e

    nop

    nop

    :goto_9
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const-string v9, "Cannot set up UNINITIALIZED mode"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lndi;->J:Lnnf;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v8, v9}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean p0, p0, Lndi;->C:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2, p0}, Lneb;->e(Lnnf;Lnne;Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v5, Lnne;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, p0, Lndi;->J:Lnnf;

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v0}, Lndi;->69171c9442ce2032a1a52868f05f9d1cm(Lnnf;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    iget-object v6, p0, Lndi;->h:Lneb;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v8, v3

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7, v5, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v8, v5}, Lndy;->a(Lnne;)Landroid/widget/TextView;

    move-result-object v8

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_29
    iget-object v8, v6, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_2a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2d
    iget-object v7, v6, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    iget-object v7, v6, Lneb;->b:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_34
    goto/32 :goto_19

    nop

    :goto_35
    goto/32 :goto_3d

    nop

    nop

    :goto_36
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_34

    nop

    :goto_37
    iget-object v2, p0, Lndi;->d:Lnne;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_39
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_3a
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    if-lt v4, v2, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_41
    if-ne v5, v8, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v7, v8, v5}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->i(Landroid/widget/TextView;Lnne;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lndi;->J:Lnnf;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lndi;->p:Lnne;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0, p0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput p1, p0, Lndi;->o:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget-object p1, p0, Lndi;->e:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iget-object p0, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop
.end method

.method private final fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x13

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

    :goto_5
    iget-object v0, p0, Lndi;->d:Lnne;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1, v2, p2}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->l(Lnne;Lnkj;Ljava/lang/Runnable;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Lnap;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v5, Lnpr;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lndi;->Q:Lfwv;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v2, Lndg;

    nop

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

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lndi;->f:Ljhy;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_29

    nop

    nop

    :goto_15
    if-eq v3, v4, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_17
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    filled-new-array {v0, v1}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v3, 0xfa

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2, p0, v1}, Lndg;-><init>(Lndi;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_1f
    const v1, 0x12

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

    :goto_20
    const/16 v0, 0xfa

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_25
    if-ne v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    invoke-direct {v5, v3, v4, v6, p1}, Lnpr;-><init>(Lmjv;Lmkl;Lnne;Lnne;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, v1}, Lngo;->K(Z)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    :goto_2e
    new-instance p2, Lndh;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_32
    goto :goto_3b

    nop

    :goto_33
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lndi;->E:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_35
    iget-object v3, p0, Lndi;->S:Lmjv;

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

    nop

    nop

    :goto_36
    iget v4, p0, Lndi;->o:I

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-boolean v0, p0, Lndi;->c:Z

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

    nop

    :goto_38
    iget-object v4, p0, Lndi;->t:Lmkl;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_39
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    if-gt v3, v4, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :goto_3b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_3d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p2, v5, v0}, Lnap;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lndi;->k:Lngo;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v2}, Ljdc;->j(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0, p1}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_43
    iget-object v6, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p2, p0, v2, v1}, Lndf;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, p0, Lndi;->l:Ljdc;

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

    :goto_46
    invoke-virtual {v0}, Lfwv;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance p2, Lndf;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v1}, Lglm;->m(Z)V

    goto/32 :goto_3f

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lndi;->j:Lglm;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4b
    if-lt v3, v4, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p2, p0}, Lndh;-><init>(Lndi;)V

    goto/32 :goto_a

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Lpci;
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lndu;->j(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v0, v2}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_6
    return-object v1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lndt;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

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
    if-ne v2, v1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lndi;->h:Lneb;

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

    :goto_3
    invoke-direct {p0, v0, v3}, Lndi;->fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

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

    :goto_5
    const v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Lndi;->92ebcae27b5395a18af07a7e07265cf7m(Lnne;)Lnnf;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1, v0, v3}, Lndi;->g(Lnnf;Lj$/util/Optional;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lndi;->d:Lnne;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x1b

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

    :goto_e
    invoke-virtual {v1, v0, v3}, Lneb;->g(Lnne;Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_13
    if-eq v1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lnne;->b:Lnne;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sget-object v0, Lnne;->a:Lnne;

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

    :goto_2
    invoke-virtual {p0}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object p0, p0, Lndi;->e:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object v0, p0, Lndi;->p:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final d(Lryb;)V
    .locals 4

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lnne;->c:Lnne;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndi;->p:Lnne;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0, v2}, Lneb;->g(Lnne;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lnnf;->c:Lnnf;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1}, Lnaz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v0, v2}, Lndi;->fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_14
    sget-object v0, Lnne;->b:Lnne;

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lndi;->J:Lnnf;

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

    :goto_18
    invoke-virtual {v0}, Lneb;->d()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v0}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lndi;->ad49e23a9e5e6fdec23353cfc00ae3a3m()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p1}, Lndi;->7521e341d48b08f214d1dac0738f16d0m(Lryb;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1c
    goto :goto_15

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v0, p0, Lndi;->p:Lnne;

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_26
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Lnnf;->b:Lnnf;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lnne;->a:Lnne;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Lnaz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Lneb;->j()V

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lndi;->d:Lnne;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_37
    iput v0, p0, Lndi;->o:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v0}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Lndi;->h:Lneb;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, p1}, Lndi;->5b7bb05b5fd6d37dbb26e03fa57e326fm(Lryb;)Ljava/util/List;

    move-result-object v3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v1, Lnnf;->c:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_3c
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lndi;->K:Ljava/util/Map;

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

    :goto_3e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_23

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const v1, 0x1c

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

    nop

    nop

    :goto_1
    const v0, 0x10

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

    :goto_2
    iget-object p0, p0, Lndi;->L:Lnia;

    nop

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
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/4 v1, 0x4

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
    iget-object v0, v0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v1, v0}, Lnpy;->a(ILandroid/view/View;)V

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0, v0}, Lnia;->m(ZZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop
.end method

.method public final f(Lnne;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lndi;->d:Lnne;

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

    :goto_8
    iget-object v1, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, v2}, Lndi;->fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V

    goto/32 :goto_d

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lndi;->C:Z

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

    :goto_b
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lndi;->x(Lnne;)V

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

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

    nop

    :goto_12
    invoke-virtual {p0, v0, p1, v2}, Lndi;->g(Lnnf;Lj$/util/Optional;Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Lndi;->175bafa759041016accb75ef876de5d9m(Lnne;)Lnnf;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    if-ne v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method final g(Lnnf;Lj$/util/Optional;Z)V
    .locals 3

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p3, :cond_0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_1
    goto/32 :goto_4c

    nop

    nop

    :goto_2
    check-cast p1, Lnne;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    :goto_4
    goto/32 :goto_66

    nop

    nop

    :goto_5
    iget-object p1, p0, Lndi;->E:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

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

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, p3, v2}, Lneb;->e(Lnnf;Lnne;Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_a
    check-cast p3, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p2, v1}, Lneb;->g(Lnne;Z)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p3, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Lneb;->j()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p3, p0, Lndi;->h:Lneb;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, p3, p0}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->l(Lnne;Lnkj;Ljava/lang/Runnable;)V

    :goto_12
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p2, p0, Lndi;->d:Lnne;

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

    nop

    nop

    :goto_15
    invoke-direct {p3, p0, v0}, Lndg;-><init>(Lndi;I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_17
    const/16 p2, 0x131f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lndi;->J:Lnnf;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p0, Lndi;->i:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p3, p1, v1}, Lnia;->l(Lnnf;Z)V

    goto/32 :goto_10

    nop

    nop

    :goto_20
    const-string p2, "No configuration available for supermode: %s"

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

    :goto_21
    iget-object p2, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_22
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Lj$/util/Optional;->isPresent()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1}, Lndi;->69171c9442ce2032a1a52868f05f9d1cm(Lnnf;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {p0, v0}, Ljic;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lndi;->i:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lfwv;->f()Z

    move-result v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p1, Lnne;->c:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p3, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2d
    iput-object p3, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lndi;->h:Lneb;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p0, Lscz;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_31
    sget-object p1, Lnne;->b:Lnne;

    nop

    nop

    :goto_32
    goto/32 :goto_3

    nop

    nop

    :goto_33
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string p1, "CameraModeController not ready; cannot perform supermode switch."

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance p3, Lndg;

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

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_5d

    nop

    nop

    :goto_38
    const/16 p1, 0x1320

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

    :goto_39
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lndi;->f:Ljhy;

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

    nop

    :goto_3d
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object p1, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3f
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_40
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_e

    nop

    nop

    :goto_45
    invoke-direct {p0, p1}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_46
    sget-object p2, Lnnf;->c:Lnnf;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0, p2, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_49
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_3
    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Lndi;->n:Ljava/util/ArrayList;

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

    :goto_4d
    iget-object p2, p0, Lndi;->J:Lnnf;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-boolean v2, p0, Lndi;->C:Z

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

    :goto_4f
    if-eq p1, p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_50
    if-nez p1, :cond_5

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

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

    :goto_52
    iget-object p2, p0, Lndi;->d:Lnne;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const-string p1, "Activity lifetime closed, blocking supermode switch."

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_4

    nop

    :goto_55
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p3, p0, Lndi;->L:Lnia;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_57
    const/16 p1, 0x1321

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_44

    nop

    :goto_59
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object p0, Lndi;->i:Lsdb;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p1, p0, Lndi;->e:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, p2}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p2, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_63
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    :goto_64
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p1, p0, Lndi;->h:Lneb;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_67
    iget-object p3, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance p0, Ljic;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_69
    check-cast p1, Lnne;

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

    :goto_6a
    iget-object p1, p0, Lndi;->e:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lndi;->Q:Lfwv;

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

    :goto_6c
    if-eq v0, p1, :cond_8

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_8
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6d
    if-nez p1, :cond_9

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_2c

    nop

    nop

    :goto_70
    const v0, 0x13

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

    :goto_71
    if-nez p3, :cond_a

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_a
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lngo;->K(Z)V

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Ljdc;->j(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndi;->k:Lngo;

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

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lglm;->m(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lndi;->l:Ljdc;

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

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lndi;->j:Lglm;

    nop

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

    :goto_e
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lndi;->C:Z

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

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lndi;->D:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x0

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

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Lndi;->21017490f1e4e968f513520349816008m(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Lndi;->21017490f1e4e968f513520349816008m(Z)V

    :goto_c
    goto/32 :goto_4

    nop

    nop
.end method

.method public final j(Z)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lndi;->21017490f1e4e968f513520349816008m(Z)V

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lndi;->21017490f1e4e968f513520349816008m(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p1, p0, Lndi;->D:Z

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
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

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

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p1, p0, Lndi;->C:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-static {v3, v0}, Lnpy;->a(ILandroid/view/View;)V

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    iget-object v1, v0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_b
    iget-object p0, p0, Lndi;->L:Lnia;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v2, v3}, Lnia;->m(ZZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e(ZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop
.end method

.method public final l()Z
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lnne;->a:Lnne;

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

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lndi;->f(Lnne;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lndi;->p:Lnne;

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

    :goto_c
    const v1, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lndi;->p:Lnne;

    nop

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

    :goto_12
    sget-object v1, Lnne;->a:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop
.end method

.method public final m()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lndi;->o:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final n()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

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

    :goto_6
    iget-object p0, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    if-eq v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lndi;->o:I

    nop

    nop

    nop

    goto/32 :goto_6

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

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget-boolean p0, p0, Lndi;->C:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final p()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lndk;->a:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lndi;->g:Lndk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop
.end method

.method public final q(Lnne;)Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lnnf;->a:Lnnf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Lndi;->92ebcae27b5395a18af07a7e07265cf7m(Lnne;)Lnnf;

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

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop
.end method

.method public final r(IZ)V
    .locals 8

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lsbh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v3, Lnbe;->d:Lnbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2
    iget-object v5, p0, Lndi;->M:Lltr;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_5
    add-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_7
    check-cast p1, Lnnf;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v2, p1

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

    :goto_9
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a
    if-eq p1, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p1, p1, Lsbh;->c:I

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

    :goto_c
    check-cast v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v7, p1, -0x1

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5, v7}, Lryb;->indexOf(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr p1, v1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p1, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_2
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0, v4, v5}, Lmjv;->x(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v6, p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    iget p1, p0, Lndi;->o:I

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_16
    add-int/2addr v7, v1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_18
    invoke-virtual {v4}, Lnne;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_19
    invoke-virtual {v5, v7}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_1a
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v6, p1

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

    :goto_1c
    const/4 v2, 0x0

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

    :goto_1d
    iget v2, p0, Lndi;->o:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1e
    if-ltz v6, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6a

    nop

    nop

    :goto_1f
    iget-object v7, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lndi;->m()Z

    move-result v2

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_21
    if-ge v6, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq p1, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    :goto_25
    goto/16 :goto_4b

    nop

    nop

    :goto_26
    goto/32 :goto_59

    nop

    nop

    :goto_27
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v6, v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v2, Lnne;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lndi;->n()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v7, v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2d
    if-eqz v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p2, p0, Lndi;->J:Lnnf;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int/2addr p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1, p2, v3}, Lndi;->g(Lnnf;Lj$/util/Optional;Z)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_85

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p2, :cond_b

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v5, v6}, Lryb;->indexOf(Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-ltz v7, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-boolean v5, v5, Lltr;->a:Z

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

    :goto_40
    if-eq p1, v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_42
    move v7, v3

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_8e

    nop

    nop

    :goto_44
    const v0, 0x13

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v2, Lnbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_85

    nop

    :goto_47
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_48
    if-eq p1, v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    add-int/2addr v6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4a
    move v6, v3

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p1, p0, Lndi;->S:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_4e
    invoke-virtual {v5, v6}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/2addr p1, v4

    nop

    :goto_50
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p1, Lnnf;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_52
    sget-object v6, Lnne;->b:Lnne;

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

    :goto_53
    move p1, v3

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_55
    if-eq p1, v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_f
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_56
    if-ge v7, p1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v5, v6}, Lryb;->indexOf(Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v3}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_59
    move-object p1, v5

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

    :goto_5a
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5b
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v5}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/2addr v6, v4

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5f
    if-ge p1, v4, :cond_11

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v2, v2, Lnbr;->i:Lnbe;

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

    nop

    :goto_62
    return-void

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_64
    goto :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_66
    move-object v6, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v4, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_68
    iget-object v2, p0, Lndi;->F:Lrtm;

    nop

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

    :goto_69
    iget-object v6, p0, Lndi;->d:Lnne;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object p1, v5

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget p1, p0, Lndi;->o:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v5}, Lryb;->size()I

    move-result p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6d
    iget-object v5, p0, Lndi;->K:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6e
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne p1, p2, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_13
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v2}, Lnne;->toString()Ljava/lang/String;

    move-result-object v5

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

    :goto_72
    add-int v0, v0, v1

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

    :goto_73
    check-cast p1, Lnne;

    nop

    nop

    :goto_74
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_85

    nop

    nop

    :goto_76
    goto/32 :goto_12

    nop

    nop

    :goto_77
    if-eqz p1, :cond_14

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v5, Lndi;->a:Lryb;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7b
    if-ltz p1, :cond_15

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_15
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v2, v2, Lnbs;->a:Lnbr;

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    move-object v2, p1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {p0, v2, v1}, Lndi;->fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V

    :goto_7f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0}, Lndi;->m()Z

    move-result p1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_83
    iget-object v4, p0, Lndi;->K:Ljava/util/Map;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v2, Lnne;

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_86
    iget-object p1, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_87
    if-lez v0, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :cond_16
    goto/32 :goto_80

    nop

    :goto_88
    iget p1, p1, Lsbh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_54

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget v2, p0, Lndi;->o:I

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_8c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8d
    iget-object v6, p0, Lndi;->n:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_8e
    invoke-virtual {v5, v7}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lndi;->n()Z

    move-result v5

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

    :goto_90
    add-int/2addr v2, v4

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_91
    check-cast p1, Lsbh;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-eq p1, v0, :cond_17

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_17
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v5}, Lryb;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v4, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_95
    if-nez p2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_18
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-eqz v2, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_19
    :goto_97
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_74

    nop

    nop

    :goto_9a
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast p1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_9e
    iget-object v5, p0, Lndi;->K:Ljava/util/Map;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-direct {p0, v2}, Lndi;->175bafa759041016accb75ef876de5d9m(Lnne;)Lnnf;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(IZ)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lndi;->r(IZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    const/4 p2, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Lndi;->58bdc013cbfa0784191428aca07544ffm(I)Z

    move-result p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_9

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

    :goto_a
    if-eq p1, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Lndi;->58bdc013cbfa0784191428aca07544ffm(I)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public final t()Lndk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lndi;->g:Lndk;

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
.end method

.method public final u(Ljhy;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lndi;->f:Ljhy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final v(Z)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-interface {p0, p1, v1}, Lnia;->m(ZZ)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v1, 0x18

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

    :goto_3
    goto/32 :goto_d

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lndi;->h:Lneb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object v0, v0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    add-int v0, v0, v1

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
    iget-object p0, p0, Lndi;->L:Lnia;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0xd

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

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->e(ZZ)V

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final w(Lnne;)V
    .locals 2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "scroll is currently in progress; don\'t know what to do with this."

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x1328

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "requested mode is null"

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

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lndi;->i:Lsdb;

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

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_15

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lndi;->c:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lndi;->i:Lsdb;

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

    nop

    :goto_10
    const/16 p1, 0x1327

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lndi;->f(Lnne;)V

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    if-eq v0, p1, :cond_3

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

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lndi;->d:Lnne;

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

    :goto_1d
    const-string p1, "mode switch requested when switcher is disabled. Ignoring."

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1e
    iget-boolean v0, p0, Lndi;->C:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_5

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_22
    const-string p1, "requested mode is currently active"

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

    :goto_23
    invoke-virtual {p0, p1}, Lndi;->q(Lnne;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 p1, 0x1326

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_28
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p0, Lndi;->i:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_33
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lscs;->b()Lsdo;

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

    :goto_36
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop
.end method

.method public final x(Lnne;)V
    .locals 3

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, p1, v2}, Lndi;->g(Lnnf;Lj$/util/Optional;Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Lndi;->f7d741b9f73dfcce09fb36b4976357ddm(Lnne;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lndi;->h:Lneb;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lnne;->c:Lnne;

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    if-lez v0, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

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

    :goto_11
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    :goto_12
    goto/32 :goto_8

    nop

    nop

    :goto_13
    sget-object v0, Lnne;->l:Lnne;

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

    :goto_14
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Lndi;->q(Lnne;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lndi;->c:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lndi;->J:Lnnf;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p0, v2}, Lneb;->g(Lnne;Z)V

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lndi;->d:Lnne;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lnne;->f:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    if-ne v0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, p1}, Lndi;->175bafa759041016accb75ef876de5d9m(Lnne;)Lnnf;

    move-result-object v0

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
    const v1, 0x11

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

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lndi;->d:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_25
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_b

    nop
.end method

.method public final y(Lnne;)V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lndi;->fb26ed4918cb396a6a9654370d82fcfdm(Lnne;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final z(Lpzi;)V
    .locals 3

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lnde;-><init>(Lndi;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Lndi;->O:Loyd;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lndi;->Q:Lfwv;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2, v0, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lndi;->ad49e23a9e5e6fdec23353cfc00ae3a3m()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lnde;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-object v0, p1, Lneb;->e:Lrss;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    new-instance v0, Lfuy;

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

    :goto_9
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x7

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-static {p1}, Loxz;->a(Loyd;)Loyd;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lnhz;->a:Lebf;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lfwv;->i()Lows;

    move-result-object p1

    nop

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

    :goto_10
    invoke-direct {v0, p0, v1, v2}, Lfuy;-><init>(Lndi;I[B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v0, Lnhz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lfuy;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

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

    :goto_16
    iget-object v0, p1, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_17
    iget-object v1, p0, Lndi;->G:Ldt;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Lowu;->a:Lowv;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v1, p0, v2}, Lfuy;-><init>(Lndi;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lndi;->L:Lnia;

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

    nop

    :goto_1c
    iput-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lmjv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lndi;->J:Lnnf;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_28

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1, p1}, Lebe;->d(Leaw;Lebg;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_21
    iput-object p1, p0, Lndi;->E:Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_23
    const/16 v0, 0xd

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lndi;->S:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lndi;->r:Lpdf;

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

    nop

    :goto_27
    check-cast p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lndi;->Q:Lfwv;

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

    :goto_29
    iget-object p1, p0, Lndi;->h:Lneb;

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

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lndi;->P:Loyd;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v2, Lowu;->a:Lowv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0xe

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

    nop

    :goto_34
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_35
    invoke-interface {p1, v0, v1}, Lnia;->l(Lnnf;Z)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lndi;->r:Lpdf;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_37
    new-instance p1, Llnm;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    iput-object p1, v0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f:Lned;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_39
    invoke-direct {p1, v0}, Llnm;-><init>(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v0, "ModeSwitchCtrl#init"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, p1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p1

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

    :goto_3c
    iget-object p1, p0, Lndi;->L:Lnia;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lndi;->d:Lnne;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p1, p1, Lpzi;->k:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method
