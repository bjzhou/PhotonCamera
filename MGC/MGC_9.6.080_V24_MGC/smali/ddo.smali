.class final Lddo;
.super Luar;
.source "PG"

# interfaces
.implements Lubo;


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field final synthetic c:Landroid/content/ContentResolver;

.field final synthetic d:Landroid/net/Uri;

.field final synthetic e:Lddp;

.field final synthetic f:Luis;

.field final synthetic g:Landroid/content/Context;

.field private synthetic h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lddp;Luis;Landroid/content/Context;Ltzy;)V
    .locals 0

    goto/32 :goto_6

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

    :goto_1
    iput-object p2, p0, Lddo;->d:Landroid/net/Uri;

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

    :goto_2
    iput-object p4, p0, Lddo;->f:Luis;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p6}, Luar;-><init>(ILtzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lddo;->g:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p1, p0, Lddo;->c:Landroid/content/ContentResolver;

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

    :goto_7
    iput-object p3, p0, Lddo;->e:Lddp;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    check-cast p1, Lujq;

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

    :goto_1
    check-cast p0, Lddo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sget-object p1, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lddo;->bX(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1, p2}, Lual;->c(Ljava/lang/Object;Ltzy;)Ltzy;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Ltzy;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final bX(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    check-cast v3, Lujq;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lddo;->d:Landroid/net/Uri;

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

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

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

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    iget-object v0, p0, Lddo;->c:Landroid/content/ContentResolver;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_c
    iget-object v1, p0, Lddo;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v3, Lujq;

    nop

    nop

    nop

    :try_start_0
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lddo;->c:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    move-object v3, p1

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

    :goto_10
    iget-object v5, p0, Lddo;->e:Lddp;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

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

    nop

    :goto_12
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :try_start_1
    iget-object p1, p0, Lddo;->f:Luis;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Luis;->C()Luii;

    move-result-object v1

    nop

    nop

    nop

    :goto_15
    iput-object v3, p0, Lddo;->h:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v1, p0, Lddo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iput v2, p0, Lddo;->b:I

    nop

    nop

    nop

    nop

    move-object p1, v1

    nop

    nop

    nop

    check-cast p1, Luii;

    nop

    invoke-virtual {p1, p0}, Luii;->a(Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    if-eqz p1, :cond_5

    nop

    nop

    nop

    move-object p1, v1

    nop

    check-cast p1, Luii;

    nop

    invoke-virtual {p1}, Luii;->b()Ljava/lang/Object;

    iget-object p1, p0, Lddo;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    nop

    const-string v4, "animator_duration_scale"

    nop

    nop

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    nop

    nop

    nop

    new-instance v4, Ljava/lang/Float;

    nop

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v3, p0, Lddo;->h:Ljava/lang/Object;

    nop

    nop

    nop

    iput-object v1, p0, Lddo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    iput p1, p0, Lddo;->b:I

    nop

    nop

    invoke-interface {v3, v4, p0}, Lujq;->a(Ljava/lang/Object;Ltzy;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Lddo;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    iget-object v3, p0, Lddo;->h:Ljava/lang/Object;

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

    nop

    nop

    :goto_1b
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_16

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lddo;->c:Landroid/content/ContentResolver;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lddo;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lddo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_22
    iget-object p0, p0, Lddo;->e:Lddp;

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

    :goto_23
    if-ne v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    throw p1

    nop

    nop

    :goto_25
    goto/32 :goto_8

    nop

    nop

    :goto_26
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v3, Lujq;

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object v0

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    return-object p0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2c
    iget v1, p0, Lddo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lddo;->e:Lddp;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2e
    const/4 v2, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

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

    :goto_30
    sget-object v0, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;Ltzy;)Ltzy;
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v7, Lddo;

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

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v5, p0, Lddo;->g:Landroid/content/Context;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    iget-object v1, p0, Lddo;->c:Landroid/content/ContentResolver;

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

    :goto_6
    move-object v6, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-direct/range {v0 .. v6}, Lddo;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Lddp;Luis;Landroid/content/Context;Ltzy;)V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lddo;->d:Landroid/net/Uri;

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

    :goto_a
    return-object v7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, v7, Lddo;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-object v3, p0, Lddo;->e:Lddp;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    iget-object v4, p0, Lddo;->f:Luis;

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

    :goto_11
    const v0, 0x19

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_13
    move-object v0, v7

    nop

    goto/32 :goto_6

    nop

    nop
.end method
