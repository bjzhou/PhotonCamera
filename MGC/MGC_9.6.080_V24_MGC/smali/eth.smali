.class public final Leth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lerg;


# static fields
.field public static final synthetic a:I

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/app/job/JobScheduler;

.field private final e:Letg;

.field private final f:Landroidx/work/impl/WorkDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Leth;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "SystemJobScheduler"

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p1}, Letg;-><init>(Landroid/content/Context;)V

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iput-object p2, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

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

    :goto_3
    new-instance v1, Letg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Letf;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

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

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Leth;->c:Landroid/content/Context;

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

    :goto_7
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

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

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Leth;->d:Landroid/app/job/JobScheduler;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    iput-object v1, p0, Leth;->e:Letg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static a(Landroid/app/job/JobInfo;)Levg;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_7

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    const-string v1, "EXTRA_WORK_SPEC_GENERATION"

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    nop

    new-instance v2, Levg;

    nop

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-direct {v2, p0, v1}, Levg;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    return-object v2

    nop

    nop

    :catch_0
    :cond_1
    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const-string v0, "EXTRA_WORK_SPEC_ID"

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

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

.method public static e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_4
    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v1, 0x16

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Landroid/content/ComponentName;

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

    :goto_8
    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Letf;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p1

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

    :goto_a
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

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

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    :goto_10
    const-class v1, Landroidx/work/impl/background/systemjob/SystemJobService;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Landroid/app/job/JobInfo;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Landroid/app/job/JobScheduler;I)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

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

    :goto_2
    const-string v2, "Exception while trying to cancel job (%d)"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    sget-object v0, Leth;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x7

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

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_11
    goto/32 :goto_e

    nop

    :goto_12
    const v0, 0x7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1}, Leth;->f(Landroid/app/job/JobScheduler;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, Levf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Lega;->f(Lein;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Levf;->a:Left;

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

    :goto_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Lega;->f(Lein;)V

    goto/32 :goto_24

    nop

    nop

    :goto_c
    iget-object v1, v0, Levf;->c:Lega;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Leth;->c:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v0, Levf;->c:Lega;

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

    :goto_f
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Leth;->a(Landroid/app/job/JobInfo;)Levg;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

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

    :goto_18
    goto :goto_1e

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_1e
    goto/32 :goto_44

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2, p1}, Leim;->g(ILjava/lang/String;)V

    :try_start_0
    move-object p1, p0

    nop

    nop

    nop

    check-cast p1, Levf;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Levf;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Left;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lein;->a()V

    move-object p1, p0

    nop

    check-cast p1, Levf;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Levf;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Left;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    check-cast p0, Levf;

    nop

    nop

    nop

    iget-object p0, p0, Levf;->a:Left;

    nop

    invoke-virtual {p0}, Left;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_37

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Left;->k()V

    goto/32 :goto_c

    nop

    nop

    :goto_21
    goto :goto_27

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

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

    :goto_24
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_3
    check-cast p0, Levf;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Levf;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Left;->n()V

    throw p1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Lega;->d()Lein;

    move-result-object v1

    nop

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

    :goto_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v2, Landroid/app/job/JobInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    if-nez v3, :cond_4

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

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2c
    invoke-static {v0, v1}, Leth;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    const/4 v2, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_31

    nop

    :goto_34
    const v0, 0x12

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

    :goto_35
    goto/16 :goto_1b

    nop

    nop

    :goto_36
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, v0, Levf;->c:Lega;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_38
    iget-object v3, v3, Levg;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v2, :cond_7

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object v0, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Leth;->d:Landroid/app/job/JobScheduler;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_3d
    iget-object p0, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

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

    :goto_3e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_40
    iget-object v1, p0, Leth;->d:Landroid/app/job/JobScheduler;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_42
    throw p0

    nop

    :goto_43
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

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
.end method

.method public final varargs c([Levq;)V
    .locals 9

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-static {v3}, Lebm;->e(Levq;)Levg;

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v4}, Leao;->f(Levb;Levg;)Leva;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    iget v6, v5, Leva;->c:I

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v6, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    new-instance v7, Lesh;

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    nop

    invoke-direct {v7, v0, v8}, Lesh;-><init>(Ljava/lang/Object;I)V

    check-cast v6, Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Left;->f(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Ljava/lang/Number;

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v6}, Lebm;->f(Levg;I)Leva;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v5, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v5

    nop

    nop

    invoke-interface {v5, v4}, Levb;->a(Leva;)V

    :cond_3
    invoke-virtual {p0, v3, v6}, Leth;->g(Levq;I)V

    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2}, Lfdn;-><init>(Landroidx/work/impl/WorkDatabase;[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v4, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

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

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    invoke-virtual {p0}, Left;->n()V

    goto/32 :goto_19

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    aget-object v3, p1, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    if-eqz v4, :cond_4

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

    :cond_4
    :try_start_1
    invoke-static {}, Leqh;->b()V

    sget-object v4, Leth;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Levq;->a:Ljava/lang/String;

    nop

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it\'s no longer in the DB"

    nop

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    goto/32 :goto_15

    nop

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_1

    nop

    :goto_18
    iget-object p0, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3}, Left;->n()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_4

    nop

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_1d
    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    invoke-virtual {v4}, Left;->l()V

    :try_start_2
    iget-object v4, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v4

    nop

    nop

    nop

    iget-object v5, v3, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Levr;->a(Ljava/lang/String;)Levq;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_21
    new-instance v0, Lfdn;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_22
    const-string v5, "Skipping scheduling "

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    :try_start_3
    iget v4, v4, Levq;->v:I

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v4, Leth;->b:Ljava/lang/String;

    nop

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because it is no longer enqueued"

    nop

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
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

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g(Levq;I)V
    .locals 9

    goto/32 :goto_a6

    nop

    nop

    :goto_0
    iget-wide v6, p1, Levq;->k:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Letg;->a:Landroid/content/ComponentName;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setTraceTag(Ljava/lang/String;)Landroid/app/job/JobInfo$Builder;

    :goto_6
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-static {v0}, Letf;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v1

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Leps;->b()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v2, p1, Levq;->o:Z

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v2, v0, Leps;->h:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_bd

    nop

    :goto_10
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_13
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    :goto_14
    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_75

    nop

    nop

    :goto_17
    sub-long/2addr v2, v6

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p2, Leth;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_19
    if-gtz v6, :cond_1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    :goto_1b
    goto/32 :goto_3f

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9b

    nop

    nop

    :goto_1d
    iget-object v0, p1, Levq;->i:Leps;

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v6}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_1f
    if-nez p2, :cond_2

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    :goto_20
    if-eq v2, v6, :cond_3

    nop

    nop

    goto/32 :goto_ac

    nop

    :cond_3
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    :goto_23
    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_4
    goto/32 :goto_cc

    nop

    nop

    :goto_25
    move v2, v5

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_27
    const-string p2, "<faulty JobScheduler failed to getPendingJobs>"

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v2, v6, :cond_5

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

    :cond_5
    goto/32 :goto_c7

    nop

    nop

    :goto_2a
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v6, 0x19

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_ca

    nop

    nop

    :goto_2e
    iget v3, p1, Levq;->q:I

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_2f
    iget-boolean v0, v0, Leps;->f:Z

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Leps;->a()Landroid/net/NetworkRequest;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_32
    iget-boolean v7, v3, Lepr;->b:Z

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_33
    iget v2, v0, Leps;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x2

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_76

    nop

    nop

    :goto_36
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v1, p1, Levq;->a:Ljava/lang/String;

    nop

    :try_start_0
    iget-object v1, p0, Leth;->d:Landroid/app/job/JobScheduler;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    nop

    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v0, Leth;->b:Ljava/lang/String;

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to schedule work ID "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Levq;->a:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Levq;->o:Z

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    iget v0, p1, Levq;->x:I

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v5, :cond_6

    nop

    nop

    nop

    nop

    iput-boolean v4, p1, Levq;->o:Z

    nop

    nop

    nop

    const-string v0, "Scheduling a non-expedited job (work ID %s)"

    nop

    iget-object v1, p1, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Leqh;->b()V

    invoke-virtual {p0, p1, p2}, Leth;->g(Levq;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    goto/32 :goto_dd

    nop

    nop

    :goto_39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_47

    nop

    nop

    :goto_3e
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_3f
    const-string v3, "jobscheduler"

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_40
    invoke-direct {v3, p2, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_43
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_c9

    nop

    nop

    :goto_44
    iget-boolean v2, p1, Levq;->o:Z

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_45
    const-string v0, "Unable to schedule "

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_46
    move v6, v4

    nop

    nop

    :goto_47
    goto/32 :goto_6c

    nop

    nop

    :goto_48
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_49
    const-string p0, " jobs tracked by WorkManager\'s database;\nthe Configuration limit is 20."

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

    :goto_4a
    sget-object p2, Leth;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p2, v3}, Leth;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4c
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_4d
    invoke-static {p2}, Lrkm;->aZ([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_4e
    iget-boolean v3, v0, Leps;->d:Z

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_a0

    nop

    :goto_51
    goto/32 :goto_12

    nop

    nop

    :goto_52
    move-object v2, v0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_54
    const/4 v6, 0x3

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

    :goto_55
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    :goto_57
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_58
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b2

    nop

    nop

    :goto_59
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5a
    iget-boolean v2, v0, Leps;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_1b

    nop

    nop

    :goto_5d
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5e
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_9
    goto/32 :goto_35

    nop

    :goto_5f
    iget-boolean v2, v0, Leps;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_60
    const-string v0, " from WorkManager in the default namespace"

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    :goto_62
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_65
    if-eqz v2, :cond_a

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

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object v2, p0, Leth;->e:Letg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_67
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sub-int/2addr v2, v0

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

    :goto_69
    invoke-direct {v8, v3, v7}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    goto/32 :goto_ae

    nop

    nop

    :goto_6a
    rem-int v0, v0, v1

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

    :goto_6b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    :goto_6d
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6e
    if-nez v2, :cond_b

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_b
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-nez v0, :cond_c

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

    :cond_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

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

    nop

    :goto_71
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_ab

    nop

    nop

    :goto_73
    new-instance p2, Ljava/lang/IllegalStateException;

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

    :goto_74
    check-cast v3, Landroid/app/job/JobScheduler;

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

    :goto_75
    throw p2

    nop

    :goto_76
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1, v4}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :cond_d
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_7b
    iget-object v2, v0, Leps;->i:Ljava/util/Set;

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_82
    invoke-static {p2}, Letf;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_83
    const-string p2, ".\nThere are "

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

    nop

    :goto_84
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_87
    invoke-static/range {v0 .. v6}, Lrkm;->aK(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILubk;I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_88
    const-string v1, "JobScheduler 150 job limit exceeded.\nIn JobScheduler there are "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_89
    invoke-interface {p0}, Levr;->c()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-boolean v2, v0, Leps;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-wide v2, v0, Leps;->g:J

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_8d
    check-cast v3, Lepr;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_8e
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_8f
    move v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_90
    iget-object v3, v3, Lepr;->a:Landroid/net/Uri;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_91
    add-int v0, v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const-string v2, "EXTRA_WORK_SPEC_ID"

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_93
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p1}, Levq;->a()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget v0, Letf;->a:I

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_e0

    nop

    nop

    :goto_98
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_99
    return-void

    nop

    :catch_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const-string v1, " jobs in \"androidx.work.systemjobscheduler\" namespace"

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

    :goto_9c
    new-instance v2, Landroid/net/NetworkRequest$Builder;

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

    :goto_9d
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c0

    nop

    nop

    :goto_9e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_9f
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :goto_a0
    goto/32 :goto_98

    nop

    nop

    :goto_a1
    if-ne v2, v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_f
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_d3

    nop

    nop

    :goto_a4
    goto/32 :goto_8b

    nop

    nop

    :goto_a5
    iget-object p0, p0, Leth;->f:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_a6
    const v0, 0x1b

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    new-instance v8, Landroid/app/job/JobInfo$TriggerContentUri;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object p0

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    cmp-long v6, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_ab
    goto/16 :goto_6d

    nop

    nop

    :goto_ac
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ad
    if-nez v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1, v8}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_47

    nop

    nop

    :goto_b1
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-lez v6, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_11
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_b3
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object p2, p0, Leth;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_b5
    move v6, v5

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

    :goto_b6
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_b7
    iget v0, p1, Levq;->j:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-eqz v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto/16 :goto_9

    nop

    :goto_ba
    goto/32 :goto_c

    nop

    nop

    :goto_bb
    filled-new-array {p2, v2, v0}, [Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_bc
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {p1}, Levq;->d()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_99

    nop

    nop

    :goto_c3
    iget-object v0, p1, Levq;->u:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_c5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v4, 0x0

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const/4 v6, 0x4

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_c8
    const-string v1, ",\n"

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_c9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    :goto_ca
    const-string v2, " of which are not owned by WorkManager"

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget v2, p1, Levq;->w:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const/4 v6, 0x6

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

    :goto_d0
    const/4 v5, 0x1

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

    nop

    :goto_d1
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_d5
    const-string v2, "EXTRA_IS_PERIODIC"

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v1, v6, v7, v2}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    :goto_d7
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_d8
    if-ne v2, v5, :cond_14

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    goto/32 :goto_b7

    nop

    nop

    :goto_da
    if-nez v3, :cond_15

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_71

    nop

    nop

    :goto_db
    iget-object v3, p1, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_dc
    invoke-static {p2, v0}, Leth;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_dd
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    new-instance v1, Landroid/os/PersistableBundle;

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_df
    const/16 v6, 0x3e

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_e0
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_33

    nop

    nop

    :goto_e2
    move v2, v4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-eq v2, v3, :cond_16

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_e2

    nop

    nop

    nop
.end method
