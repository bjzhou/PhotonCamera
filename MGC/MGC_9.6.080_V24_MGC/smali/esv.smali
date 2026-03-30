.class public final Lesv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leqt;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/Object;

.field public final e:Lerj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput-object v0, Lesv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const-string v0, "CommandHandler"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lerj;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lesv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lesv;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Ljava/util/HashMap;

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

    :goto_4
    new-instance p1, Ljava/lang/Object;

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

    :goto_5
    iput-object p1, p0, Lesv;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lesv;->e:Lerj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_e

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Landroid/content/Intent;

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

    :goto_4
    return-object v1

    nop

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

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

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_d
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const-string p0, "ACTION_CONSTRAINTS_CHANGED"

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method static c(Landroid/content/Context;Levg;)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xc

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

    :goto_2
    invoke-static {v1, p1}, Lesv;->f(Landroid/content/Intent;Levg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const-string p0, "ACTION_DELAY_MET"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_6

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

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    new-instance v1, Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_e

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method static d(Landroid/content/Context;Levg;)Landroid/content/Intent;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    new-instance v1, Landroid/content/Intent;

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
    goto/32 :goto_d

    nop

    nop

    :goto_4
    const v1, 0x15

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

    :goto_5
    invoke-static {v1, p1}, Lesv;->f(Landroid/content/Intent;Levg;)V

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-object v1

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "ACTION_SCHEDULE_WORK"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x13

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
.end method

.method static e(Landroid/content/Intent;)Levg;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_8

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    new-instance v0, Levg;

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
    const-string v1, "KEY_WORKSPEC_ID"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, p0}, Levg;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const-string v3, "KEY_WORKSPEC_GENERATION"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public static f(Landroid/content/Intent;Levg;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

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
    const-string v0, "KEY_WORKSPEC_ID"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

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
    goto/32 :goto_6

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "KEY_WORKSPEC_GENERATION"

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

    :goto_8
    iget p1, p1, Levg;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p1, Levg;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    add-int v0, v0, v1

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
.end method


# virtual methods
.method public final a(Levg;Z)V
    .locals 4

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

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object v0, p0, Lesv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x13

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lesv;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lesz;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lesv;->e:Lerj;

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lerj;->c(Levg;)Lfdn;

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    iget-object p0, v1, Lesz;->c:Levg;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Lesz;->a()V

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, v1, Lesz;->a:Landroid/content/Context;

    nop

    iget-object p1, v1, Lesz;->c:Levg;

    nop

    invoke-static {p0, p1}, Lesv;->d(Landroid/content/Context;Levg;)Landroid/content/Intent;

    move-result-object p0

    nop

    iget-object p1, v1, Lesz;->g:Ljava/util/concurrent/Executor;

    nop

    new-instance p2, Letb;

    nop

    nop

    nop

    iget-object v2, v1, Lesz;->d:Lete;

    nop

    nop

    nop

    iget v3, v1, Lesz;->b:I

    nop

    nop

    nop

    invoke-direct {p2, v2, p0, v3}, Letb;-><init>(Lete;Landroid/content/Intent;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-boolean p0, v1, Lesz;->i:Z

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    iget-object p0, v1, Lesz;->a:Landroid/content/Context;

    nop

    invoke-static {p0}, Lesv;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    nop

    nop

    nop

    iget-object p1, v1, Lesz;->g:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    new-instance p2, Letb;

    nop

    nop

    iget-object v2, v1, Lesz;->d:Lete;

    nop

    nop

    nop

    nop

    iget v1, v1, Lesz;->b:I

    nop

    nop

    invoke-direct {p2, v2, p0, v1}, Letb;-><init>(Lete;Landroid/content/Intent;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
