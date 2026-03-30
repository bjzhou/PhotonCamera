.class public final Lqqt;
.super Lqqm;
.source "PG"

# interfaces
.implements Lqpc;


# instance fields
.field private final a:Lqoz;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lqqi;

.field private final e:Ltxm;

.field private final f:Ltud;

.field private final g:Ltxm;

.field private final h:Ltxm;

.field private final i:Ltxm;


# direct methods
.method public constructor <init>(Lqpa;Landroid/content/Context;Ljava/util/concurrent/Executor;Lqqi;Ltxm;Ltud;Lqmz;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqqm;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lqqt;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Lqqt;->a:Lqoz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p9, p0, Lqqt;->h:Ltxm;

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

    :goto_5
    iput-object p5, p0, Lqqt;->e:Ltxm;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iput-object p4, p0, Lqqt;->d:Lqqi;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p3, p6, p7}, Lqpa;->a(Ljava/util/concurrent/Executor;Ltud;Ltxm;)Lqoz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    iput-object p8, p0, Lqqt;->g:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lqqt;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p6, p0, Lqqt;->f:Ltud;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p7, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iput-object p10, p0, Lqqt;->i:Ltxm;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static synthetic i(Lqqt;)Lsui;
    .locals 6

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lqqt;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    new-instance v1, Lqqn;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

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
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-static {v0, v1, p0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lqqt;->d:Lqqi;

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

    :goto_12
    check-cast v1, Landroid/content/SharedPreferences;

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

    :goto_13
    iget-object v0, p0, Lqqt;->f:Ltud;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_14
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lqqh;

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

    :goto_19
    invoke-virtual {v0}, Lqqh;->b()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

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

    :goto_1b
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lsue;->a:Lsui;

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

    :goto_20
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Lqqh;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lqqt;->g:Ltxm;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_25
    check-cast v1, Landroid/content/SharedPreferences;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x13

    nop

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

    nop

    :goto_27
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

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

    nop

    :goto_29
    iget-object v1, p0, Lqqt;->e:Ltxm;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v2, "lastExitTimestamp"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

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

    nop

    :goto_2c
    iget-object v1, p0, Lqqt;->f:Ltud;

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

    nop

    :goto_2d
    iget-object v1, p0, Lqqt;->e:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_30
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_b

    nop

    :goto_32
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v0, Lqqh;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {v1, p0}, Lqqn;-><init>(Lqqt;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_39
    const-string v2, "lastExitProcessName"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3a
    invoke-interface/range {v0 .. v5}, Lqqi;->a(IILjava/lang/String;J)Lsui;

    move-result-object v0

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

    :goto_3b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3c
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public U()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lqqo;-><init>(Lqqt;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lqqt;->s()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lqqo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lqqt;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public synthetic j()Lsui;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lpvb;->b(Landroid/content/Context;Ljava/lang/Runnable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqqt;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lqqq;-><init>(Lqqt;)V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public synthetic o(Lryb;)Lsui;
    .locals 9

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_1
    move-object v4, v3

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

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

    :goto_3
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, p0}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v6, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v5, v5, 0x1

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

    :goto_7
    iget-object v0, p0, Lqqt;->h:Ltxm;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lupa;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lurc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, v1, Ltkb;->b:Ltkg;

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

    nop

    :goto_c
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

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

    :goto_e
    check-cast v6, Lupa;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_f
    invoke-static {v6}, Lucu;->F(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, v4, Lurc;->n:Lupa;

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v8, :cond_0

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_13
    iget-object v6, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lqqr;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    :goto_17
    invoke-virtual {v1, v0}, Lqoz;->b(Lqov;)Lsui;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7d

    nop

    :goto_19
    invoke-virtual {p1}, Lryb;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v6, v6, Lupa;->c:Ltkv;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v0}, Lqou;->e(Lurc;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v3, :cond_3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lqqt;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v1, p0, p1}, Lqqr;-><init>(Lqqt;Lryb;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Lqou;->a()Lqov;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_20
    if-lt v5, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_21
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    or-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_23
    const/high16 v5, 0x10000

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2a

    nop

    nop

    :goto_26
    sget-object v1, Lupa;->a:Lupa;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v6}, Lucu;->F(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_28
    iput-object v7, v6, Lupa;->c:Ltkv;

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    if-lt v3, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lupb;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v7}, Ltkv;->c()Z

    move-result v8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lqqt;->a:Lqoz;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2e
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2f
    sget-object p0, Lsue;->a:Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_30
    invoke-static {v7}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v7

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

    :goto_31
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_b

    nop

    nop

    :goto_33
    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v2, :cond_6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_37
    move v6, v4

    nop

    nop

    :goto_38
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_7

    nop

    nop

    :goto_3b
    iget v6, v5, Luoz;->d:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_56

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_68

    nop

    nop

    :goto_40
    goto/32 :goto_5

    nop

    nop

    :goto_41
    invoke-interface {v6}, Ltkm;->size()I

    move-result v6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_43
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v0, v2, Lupa;->d:Lupb;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {}, Lqov;->a()Lqou;

    move-result-object v2

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v0, v4, Lurc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v6, :cond_8

    nop

    goto/32 :goto_7c

    nop

    :cond_8
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_4b
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Lryb;->isEmpty()Z

    move-result v0

    nop

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

    :goto_4e
    invoke-virtual {v3}, Ltkg;->m()Ltkb;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4f
    invoke-interface {v6, v5}, Ltkm;->d(I)I

    move-result v6

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

    :goto_50
    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v6, v0, Lupb;->b:Ltkm;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_54
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move v5, v3

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_58
    goto/32 :goto_21

    nop

    nop

    :goto_59
    or-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    sget-object v3, Lurc;->a:Lurc;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

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

    nop

    :goto_5e
    iget v5, v4, Lupa;->b:I

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

    :goto_5f
    const v1, 0x2

    nop

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

    :goto_60
    iget-object v6, v0, Lupb;->b:Ltkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_61
    const v0, 0xb

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

    :goto_62
    if-eqz v6, :cond_a

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v3, v1, Ltkb;->b:Ltkg;

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

    :goto_64
    iget v3, v2, Lupa;->b:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_44

    nop

    nop

    :goto_66
    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v6, v5}, Ltkv;->add(Ljava/lang/Object;)Z

    :goto_68
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v0, v4, Lurc;->b:I

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

    :goto_6a
    check-cast v2, Lupa;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6b
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput v5, v4, Lupa;->b:I

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_6d
    or-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_6e
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v4, Lurc;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_25

    nop

    nop

    :goto_71
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_72
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v7, v6, Lupa;->c:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_74
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput v2, v4, Lupa;->e:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_77
    rem-int v0, v0, v1

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

    nop

    :goto_78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_79
    check-cast v4, Lupa;

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

    :goto_7a
    iput v3, v2, Lupa;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_7b
    move v6, v4

    nop

    nop

    :goto_7c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_4d

    nop

    nop

    :goto_7f
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_80
    check-cast v5, Luoz;

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
.end method

.method public synthetic p(Lryb;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const-string v4, "lastExitProcessName"

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

    nop

    nop

    :goto_1
    check-cast p1, Luoz;

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3
    const-string v3, "lastExitTimestamp"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_d
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    const v1, 0xf

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lqqt;->e:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

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

    :goto_15
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    if-ge p2, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_24

    nop

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

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Lqmo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v1, p1, Luoz;->g:J

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v3, Landroid/content/SharedPreferences;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    :goto_1f
    invoke-virtual {p1, p2}, Lryb;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_21
    const-string p1, "Failed to persist most recent App Exit"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p1, Luoz;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    const/16 p1, 0x1534

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

    :goto_25
    check-cast p0, Lscz;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic q()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqqt;->i:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

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

    :goto_4
    return-void

    nop
.end method

.method public synthetic r()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lqqs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lqqs;-><init>(Lqqt;)V

    goto/32 :goto_4

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
    iget-object p0, p0, Lqqt;->c:Ljava/util/concurrent/Executor;

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

.method public s()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object p0, p0, Lqqt;->c:Ljava/util/concurrent/Executor;

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

    :goto_2
    new-instance v0, Lqqp;

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

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {v0, p0}, Lqqp;-><init>(Lqqt;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
