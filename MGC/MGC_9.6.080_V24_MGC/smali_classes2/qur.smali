.class public final Lqur;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field private final e:Lqug;

.field private final f:Lqui;

.field private final g:Lqum;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lrss;Lrss;Lrss;Lrss;Lrss;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    check-cast p3, Lqui;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-virtual {p3, v0}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

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

    :goto_4
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p5, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    iput-object p2, p0, Lqur;->e:Lqug;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lqui;->a:Lqui;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p2, "com.google.android.libraries.performance.primes#"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p6, Ljava/lang/Boolean;

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

    :goto_c
    sget-object v0, Lqum;->a:Lqum;

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

    :goto_d
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_e
    iput-boolean p5, p0, Lqur;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p4, v0}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    iput-object p3, p0, Lqur;->f:Lqui;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "CAMERA_ANDROID_PRIMES"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p2, Lqug;

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

    :goto_14
    sget-object v0, Lqug;->a:Lqug;

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

    :goto_15
    return-void

    nop

    :goto_16
    iput-object v0, p0, Lqur;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_18
    invoke-virtual {p6, v0}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

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

    :goto_19
    iput-object p1, p0, Lqur;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    iput-boolean p6, p0, Lqur;->d:Z

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

    :goto_1b
    invoke-virtual {p5, v0}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v0}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p4, Lqum;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p4, p0, Lqur;->g:Lqum;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 8

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v7, Lllh;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Lqui;->a()Lsui;

    move-result-object v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {v1 .. v6}, Lllh;-><init>(Lqur;Lsui;Lsui;Lsui;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-interface {v0}, Lqug;->a()Lsui;

    move-result-object v3

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    aput-object v3, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    move-object v1, v7

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

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v7, p0}, Lkjj;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    return-object p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    move-object v2, p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    aput-object v5, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    new-array v0, v0, [Lsui;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    invoke-static {v0}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0}, Lqum;->a()Lsui;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lqur;->g:Lqum;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput-object v4, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lqur;->e:Lqug;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lqur;->f:Lqui;

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
