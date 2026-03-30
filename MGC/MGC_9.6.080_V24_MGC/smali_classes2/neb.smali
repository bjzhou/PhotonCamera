.class public final Lneb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lned;
.implements Ljpv;
.implements Ljpq;


# instance fields
.field public final a:Ljava/util/EnumMap;

.field public final b:Ljava/util/EnumMap;

.field public c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

.field public final d:Lngo;

.field public e:Lrss;

.field public final f:Ljava/util/Map;

.field private final g:Lnec;

.field private final h:Lows;


# direct methods
.method public constructor <init>(Lows;Ljava/util/Map;Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;Lngo;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lnea;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x14

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p3, p0, Lneb;->a:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3
    sget-object p2, Lstd;->a:Lstd;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v2}, Lnea;-><init>(I)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p0, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->j:Lneb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v2, p0, Lneb;->f:Ljava/util/Map;

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

    :goto_7
    invoke-virtual {p4, p2}, Lows;->d(Lpci;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p3, Loyd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    check-cast p2, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    iput-object p3, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x9

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

    :goto_12
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    iput-object v1, p0, Lneb;->e:Lrss;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_15
    sget-object p1, Lhmp;->a:Lhmo;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    iget-object p4, p0, Lneb;->h:Lows;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    iput-object v1, p3, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g:Lnec;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

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

    :goto_1b
    new-instance v0, Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    new-instance v2, Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-class v3, Lnne;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    const-class v1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p0, p2, v1}, Lliy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    iput-object p1, p0, Lneb;->h:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lliy;

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

    :goto_25
    iput-object v1, p0, Lneb;->b:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v1, Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    :goto_28
    iput-object v0, p0, Lneb;->a:Ljava/util/EnumMap;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v1, 0x12

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

    :goto_2a
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2b
    iput-object v1, p0, Lneb;->g:Lnec;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p3, v0, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    :goto_2f
    goto/16 :goto_c

    nop

    nop

    :goto_30
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_33
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    iput-object p4, p0, Lneb;->d:Lngo;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_35
    const-class v2, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_36
    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop
.end method


# virtual methods
.method public final a()Lpci;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lneb;->h(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lndt;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1, v2}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_9

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
    goto/32 :goto_8

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lpci;
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_4
    goto/32 :goto_f

    nop

    :goto_5
    new-instance v0, Lndt;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v1, 0x15

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0, v1, v2}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lneb;->i(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final cX()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lndy;->removeAllViews()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lrvg;->clear()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lndy;->e:Ljava/util/EnumMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lndy;->c:Ljava/util/HashMap;

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

    :goto_8
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final e(Lnnf;Lnne;Z)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-virtual {p2, p1}, Lndy;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iput p2, v0, Lndy;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p2, v0, Lndy;->c:Ljava/util/HashMap;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lnnc;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    invoke-virtual {p0, p3}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setEnabled(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_b
    iput-object p2, v0, Lndy;->k:Lnne;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Lnnc;->a(Lnnf;)Lnnc;

    move-result-object p1

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

    :goto_10
    iget-boolean p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lnne;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    invoke-virtual {v0}, Lndy;->g()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, v0, Lndy;->l:Lnnf;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lnne;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g(Lnne;Z)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

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

    :goto_6
    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g(Lnne;Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

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

    nop

    :goto_a
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lnne;->c:Lnne;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    sget-object v0, Lnne;->f:Lnne;

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

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_f
    invoke-static {p1, p2, v0}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x18

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

    :goto_16
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1a
    iget-object v0, p0, Lneb;->b:Ljava/util/EnumMap;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    const-string p2, "Mode "

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    const-string v0, " is not configured."

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->g(Lnne;Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lnne;->l:Lnne;

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

    :goto_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setClickable(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setFocusable(Z)V

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setEnabled(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final i(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setImportantForAccessibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget v1, p0, Lndy;->i:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lndy;->p:I

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

    :goto_5
    const v0, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lneb;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

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

    :goto_13
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

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

    :goto_14
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b:Lndy;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->d:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setEnabled(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
