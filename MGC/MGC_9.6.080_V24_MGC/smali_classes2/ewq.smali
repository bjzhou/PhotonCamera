.class public final Lewq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:J

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lese;

.field private e:I

.field private final f:Lfdn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v1, 0xe42

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    sput-wide v0, Lewq;->a:J

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v0, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "ForceStopRunnable"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    sput-object v0, Lewq;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xa

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

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lese;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p2, Lese;->k:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

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
    iput-object p1, p0, Lewq;->f:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_4
    iput-object p1, p0, Lewq;->c:Landroid/content/Context;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lewq;->e:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lewq;->d:Lese;

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

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    new-instance v2, Landroid/content/ComponentName;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const-class v1, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

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
.end method


# virtual methods
.method public final run()V
    .locals 17

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x1

    nop

    nop

    nop

    :try_start_0
    iget-object v6, v1, Lewq;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lewq;->d:Lese;

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    sget v10, Leth;->a:I

    nop

    nop

    nop

    invoke-static {v6}, Letf;->a(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v10

    nop

    invoke-static {v6, v10}, Leth;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v11

    nop

    const-string v12, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    nop

    nop

    nop

    invoke-static {v12, v8}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v12

    nop

    nop

    nop

    move-object v13, v11

    nop

    check-cast v13, Levf;

    nop

    nop

    nop

    nop

    iget-object v13, v13, Levf;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Left;->k()V

    check-cast v11, Levf;

    nop

    iget-object v11, v11, Levf;->a:Left;

    nop

    nop

    invoke-static {v11, v12}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v11

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    new-instance v13, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v14

    nop

    nop

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    mul-long/2addr v4, v6

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :catch_0
    goto/32 :goto_27

    nop

    nop

    :goto_5
    if-nez v14, :cond_0

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

    :cond_0
    :try_start_3
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_34

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    move-object v4, v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    move-object v6, v13

    nop

    nop

    check-cast v6, Levo;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Levo;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Left;->n()V

    throw v5

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v6, :cond_1

    nop

    goto/32 :goto_19

    nop

    :cond_1
    :try_start_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-nez v11, :cond_8

    nop

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    if-eqz v11, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Landroid/app/job/JobInfo;

    nop

    nop

    nop

    invoke-static {v11}, Leth;->a(Landroid/app/job/JobInfo;)Levg;

    move-result-object v14

    nop

    nop

    nop

    if-eqz v14, :cond_2

    nop

    nop

    iget-object v11, v14, Levg;->a:Ljava/lang/String;

    nop

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    invoke-static {v10, v11}, Leth;->f(Landroid/app/job/JobScheduler;I)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x1

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_d
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_e
    if-nez v10, :cond_3

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

    :cond_3
    :try_start_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    check-cast v10, Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    if-nez v10, :cond_9

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    move v6, v4

    nop

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v6, v8

    nop

    nop

    :goto_10
    const-wide/16 v10, -0x1

    nop

    if-eqz v6, :cond_5

    nop

    nop

    nop

    invoke-virtual {v9}, Left;->l()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    nop

    :goto_11
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop

    if-eqz v14, :cond_4

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    check-cast v14, Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v12, v14, v10, v11}, Levr;->j(Ljava/lang/String;J)V

    goto :goto_11

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v9}, Left;->p()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {v9}, Left;->n()V

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    invoke-virtual {v9}, Left;->n()V

    throw v6

    nop

    nop
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :cond_5
    :goto_12
    :try_start_9
    iget-object v9, v1, Lewq;->d:Lese;

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v12

    nop

    nop

    nop

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->A()Levk;

    move-result-object v13

    nop

    nop

    invoke-virtual {v9}, Left;->l()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    invoke-interface {v12}, Levr;->b()Ljava/util/List;

    move-result-object v14

    nop

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_39

    nop

    nop

    :goto_13
    const/4 v10, 0x0

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

    :goto_14
    goto/16 :goto_63

    nop

    nop

    :cond_6
    :goto_15
    :try_start_b
    iget-object v5, v1, Lewq;->c:Landroid/content/Context;

    nop

    nop

    const/high16 v9, 0x22000000

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v9}, Lewq;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    nop

    nop
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_8
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_16
    if-gez v9, :cond_7

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

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    move-object v10, v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_19
    :try_start_c
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    cmp-long v9, v11, v6

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    move v11, v8

    nop

    nop

    :goto_1c
    :try_start_d
    new-instance v12, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(I)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_72

    nop

    nop

    nop

    :cond_a
    :goto_1e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v4, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v3, "reschedule_needed"

    nop

    nop

    :try_start_e
    iget-object v4, v1, Lewq;->d:Lese;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lese;->h:Lqpe;

    nop

    const/4 v5, 0x0

    nop

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    goto/16 :goto_2c

    nop

    nop

    nop

    :cond_b
    iget-object v6, v1, Lewq;->c:Landroid/content/Context;

    nop

    nop

    nop

    invoke-static {v6, v4}, Lewt;->a(Landroid/content/Context;Lqpe;)Z

    move-result v4

    nop

    nop

    invoke-static {}, Leqh;->b()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Lewq;->d:Lese;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    goto/16 :goto_2e

    nop

    nop

    :cond_c
    :try_start_f
    invoke-static {}, Leqh;->b()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto/32 :goto_1

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Lese;->c()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_25
    move-object v10, v5

    nop

    nop

    :goto_26
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-object v5, v10

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v6, :cond_d

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

    :cond_d
    :try_start_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v5, v0

    nop

    :try_start_11
    check-cast v13, Levo;

    nop

    iget-object v6, v13, Levo;->c:Lega;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v4}, Lega;->f(Lein;)V

    throw v5

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v1, Lewq;->d:Lese;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_2c
    :try_start_12
    iget-object v4, v1, Lewq;->c:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ldxp;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    nop

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    nop

    nop

    const/4 v7, 0x3

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v6, Leru;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v4}, Ldxp;->h(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    nop

    nop

    nop

    new-instance v9, Ljava/io/File;

    nop

    nop

    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "androidx.work.workdb"

    nop

    nop

    nop

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Leru;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    array-length v10, v4

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lrkm;->R(I)I

    move-result v10

    nop

    nop

    nop

    nop

    const/16 v11, 0x10

    nop

    nop

    nop

    invoke-static {v10, v11}, Lucd;->h(II)I

    move-result v10

    nop

    nop

    nop

    nop

    new-instance v11, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    move v10, v8

    nop

    nop

    nop

    nop

    :goto_2d
    if-ge v10, v7, :cond_e

    nop

    nop

    aget-object v12, v4, v10

    nop

    nop

    nop

    nop

    new-instance v13, Ljava/io/File;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    nop

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    nop

    nop

    nop

    nop

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    nop

    nop

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    nop

    nop

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    nop

    nop

    nop

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ltxv;

    nop

    invoke-direct {v12, v13, v14}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v13, v12, Ltxv;->a:Ljava/lang/Object;

    nop

    nop

    iget-object v12, v12, Ltxv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    :cond_e
    new-instance v4, Ltxv;

    nop

    nop

    nop

    invoke-direct {v4, v6, v9}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v11, v4}, Lrkm;->W(Ljava/util/Map;Ltxv;)Ljava/util/Map;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :cond_f
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljava/util/Map$Entry;

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/io/File;

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_f

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    nop

    if-eqz v10, :cond_10

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v10, Leru;->a:Ljava/lang/String;

    nop

    const/4 v11, 0x0

    nop

    nop

    sget-object v11, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->Abndrnw:Ljava/lang/String;

    nop

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {v9, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_11

    nop

    nop

    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2f

    nop

    nop

    nop

    nop

    :cond_11
    invoke-static {v9}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_2f
    invoke-static {}, Leqh;->b()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_31
    goto :goto_38

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_33
    move-object v10, v5

    nop

    nop

    :goto_34
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_2

    nop

    nop

    :catchall_5
    move-exception v0

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

    nop

    :goto_36
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_37
    const/4 v10, 0x0

    nop

    :goto_38
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_39
    if-eqz v15, :cond_12

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_12
    :try_start_13
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    :goto_3a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_13

    nop

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v7, v16

    nop

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    iget-object v5, v7, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v12, v4, v5}, Levr;->k(ILjava/lang/String;)V

    iget-object v5, v7, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const/16 v4, -0x200

    nop

    nop

    nop

    nop

    invoke-interface {v12, v5, v4}, Levr;->g(Ljava/lang/String;I)V

    iget-object v4, v7, Levq;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v12, v4, v10, v11}, Levr;->j(Ljava/lang/String;J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto/32 :goto_c

    nop

    nop

    :goto_3b
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_47

    nop

    nop

    :cond_13
    :goto_3e
    :try_start_14
    move-object v4, v13

    nop

    nop

    nop

    check-cast v4, Levo;

    nop

    iget-object v4, v4, Levo;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v4}, Left;->k()V

    move-object v4, v13

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Levo;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Levo;->c:Lega;

    nop

    nop

    invoke-virtual {v4}, Lega;->d()Lein;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    move-object v5, v13

    nop

    nop

    nop

    nop

    check-cast v5, Levo;

    nop

    iget-object v5, v5, Levo;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v5}, Left;->l()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    invoke-virtual {v4}, Lein;->a()V

    move-object v5, v13

    nop

    nop

    nop

    nop

    check-cast v5, Levo;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Levo;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Left;->p()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    move-object v5, v13

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Levo;

    nop

    nop

    nop

    iget-object v5, v5, Levo;->a:Left;

    nop

    nop

    invoke-virtual {v5}, Left;->n()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    check-cast v13, Levo;

    nop

    nop

    nop

    nop

    iget-object v5, v13, Levo;->c:Lega;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Lega;->f(Lein;)V

    invoke-virtual {v9}, Left;->p()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    :try_start_19
    invoke-virtual {v9}, Left;->n()V

    if-eqz v15, :cond_15

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_14

    nop

    nop

    nop

    goto :goto_3f

    nop

    nop

    nop

    :cond_14
    move v4, v8

    nop

    nop

    nop

    nop

    nop

    goto :goto_40

    nop

    nop

    :cond_15
    :goto_3f
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v5, v1, Lewq;->d:Lese;

    nop

    nop

    iget-object v5, v5, Lese;->k:Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v5, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->x()Leuw;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Leuw;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    nop
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v2, "last_force_stop_ms"

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object v4, v0

    nop

    nop

    nop

    :goto_47
    :try_start_1a
    invoke-virtual {v9}, Left;->n()V

    throw v4

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    move-object v10, v5

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    :goto_48
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lefz;->j()V

    throw v4

    nop
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :catch_3
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v5, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_16
    :try_start_1b
    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_1b .. :try_end_1b} :catch_9
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0x2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    throw v2

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v1, p0

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

    :goto_4f
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_50
    move-object v4, v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_51
    const-wide/16 v6, 0x0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v4, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_71

    nop

    nop

    nop

    nop

    :goto_54
    :try_start_1c
    iget-object v5, v1, Lewq;->c:Landroid/content/Context;

    nop

    const-string v9, "activity"

    nop

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Landroid/app/ActivityManager;

    nop

    nop
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_1c

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_56
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :try_start_1d
    invoke-virtual {v5, v10, v8, v8}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_57
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_58
    move-object v2, v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v10, 0x0

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

    :goto_5b
    goto/16 :goto_34

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5c
    move-object v2, v0

    nop

    nop

    nop

    nop

    :try_start_1e
    const-string v3, "Unexpected SQLite exception during migrations"

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v4, Lewq;->b:Ljava/lang/String;

    nop

    nop

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v4, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    nop

    nop

    nop

    nop

    nop
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :catchall_9
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_5d
    const-wide/16 v6, 0x12c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_5e
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_6d

    nop

    nop

    nop

    :catchall_a
    :cond_18
    :goto_61
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-object v4, v0

    nop

    nop

    :goto_63
    :try_start_1f
    iget v5, v1, Lewq;->e:I

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v5, v6

    nop

    iput v5, v1, Lewq;->e:I

    nop

    nop

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    if-lt v5, v6, :cond_1a

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lewq;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    const-class v3, Landroid/os/UserManager;

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/os/UserManager;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_19

    nop

    nop

    nop

    nop

    const-string v2, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    nop

    goto :goto_64

    nop

    :cond_19
    const-string v2, "WorkManager can\'t be accessed from direct boot, because credential encrypted storage isn\'t accessible.\nDon\'t access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot"

    nop

    :goto_64
    invoke-static {}, Leqh;->b()V

    sget-object v3, Lewq;->b:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v3, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v3, v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    :cond_1a
    invoke-static {}, Leqh;->b()V

    iget v4, v1, Lewq;->e:I

    nop

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto/32 :goto_75

    nop

    nop

    :goto_65
    goto/16 :goto_48

    nop

    :goto_66
    :try_start_20
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lefz;->j()V
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_20 .. :try_end_20} :catch_1
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_26

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v1}, Lese;->c()V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_69
    if-lez v0, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_1b
    goto/32 :goto_42

    nop

    :goto_6a
    move-object v4, v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v5, :cond_1c

    nop

    goto/32 :goto_15

    nop

    :cond_1c
    :try_start_21
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    nop

    nop

    const-wide/16 v11, 0x1

    nop

    cmp-long v5, v9, v11

    nop

    nop

    if-nez v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v4, v1, Lewq;->d:Lese;

    nop

    nop

    invoke-virtual {v4}, Lese;->d()V

    iget-object v4, v1, Lewq;->d:Lese;

    nop

    iget-object v4, v4, Lese;->k:Lfdn;

    nop

    nop

    nop

    nop

    new-instance v5, Leuv;

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    invoke-direct {v5, v3, v6}, Leuv;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v4, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Landroidx/work/impl/WorkDatabase;

    nop

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->x()Leuw;

    move-result-object v4

    nop

    nop

    invoke-interface {v4, v5}, Leuw;->b(Leuv;)V
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_21 .. :try_end_21} :catch_9
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_21 .. :try_end_21} :catch_9
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_6c
    if-nez v5, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    :try_start_22
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    nop

    if-nez v9, :cond_18

    nop

    nop

    nop

    iget-object v9, v1, Lewq;->f:Lfdn;

    nop

    iget-object v9, v9, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v9, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->x()Leuw;

    move-result-object v9

    nop

    nop

    invoke-interface {v9, v2}, Leuw;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_1e

    nop

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    :cond_1e
    :goto_6d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    nop

    nop

    nop

    nop

    if-ge v8, v9, :cond_18

    nop

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Landroid/app/ApplicationExitInfo;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v11

    nop

    nop

    nop

    const/16 v12, 0xa

    nop

    if-ne v11, v12, :cond_a

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v11

    nop

    nop

    nop
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_22} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_7
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_22 .. :try_end_22} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_22 .. :try_end_22} :catch_3
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    goto/32 :goto_1a

    nop

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

    :catch_6
    move-exception v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6f
    if-nez v4, :cond_1f

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

    :cond_1f
    :try_start_23
    invoke-static {}, Leqh;->b()V

    iget-object v4, v1, Lewq;->d:Lese;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v4, Lese;->h:Lqpe;

    nop

    nop

    nop

    iget-object v6, v4, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    iget-object v4, v4, Lese;->d:Ljava/util/List;

    nop

    nop

    invoke-static {v5, v6, v4}, Leri;->a(Lqpe;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_73

    nop

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    nop

    goto :goto_70

    nop

    nop

    :catch_8
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    :goto_70
    move-object v4, v0

    nop

    nop

    :goto_71
    invoke-static {}, Leqh;->b()V

    sget-object v5, Lewq;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Ignoring exception"

    nop

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_72
    invoke-static {}, Leqh;->b()V

    iget-object v4, v1, Lewq;->d:Lese;

    nop

    invoke-virtual {v4}, Lese;->d()V

    iget-object v4, v1, Lewq;->f:Lfdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Lewq;->d:Lese;

    nop

    nop

    iget-object v5, v5, Lese;->h:Lqpe;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lqpe;->h:Ljava/lang/Object;

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    new-instance v7, Leuv;

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    invoke-direct {v7, v2, v5}, Leuv;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v4, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->x()Leuw;

    move-result-object v4

    nop

    invoke-interface {v4, v7}, Leuw;->b(Leuv;)V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_23 .. :try_end_23} :catch_3
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :goto_73
    goto/32 :goto_2a

    nop

    nop

    :goto_74
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_75
    int-to-long v4, v4

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_73

    nop

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
