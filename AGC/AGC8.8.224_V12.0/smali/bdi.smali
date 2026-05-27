.class public final Lbdi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:J

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lazd;

.field private e:I

.field private final f:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Laxq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbdi;->b:Ljava/lang/String;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lbdi;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lazd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbdi;->c:Landroid/content/Context;

    iput-object p2, p0, Lbdi;->d:Lazd;

    iget-object p1, p2, Lazd;->j:Lbkb;

    iput-object p1, p0, Lbdi;->f:Lbkb;

    const/4 p1, 0x0

    iput p1, p0, Lbdi;->e:I

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "last_force_stop_ms"

    const-string v3, "reschedule_needed"

    :try_start_0
    iget-object v4, v1, Lbdi;->d:Lazd;

    iget-object v4, v4, Lazd;->c:Laxd;

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Laxq;->a()Laxq;

    goto :goto_1

    :cond_0
    iget-object v6, v1, Lbdi;->c:Landroid/content/Context;

    invoke-static {v6, v4}, Lbdo;->a(Landroid/content/Context;Laxd;)Z

    move-result v4

    invoke-static {}, Laxq;->a()Laxq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-nez v4, :cond_1

    iget-object v2, v1, Lbdi;->d:Lazd;

    :goto_0
    invoke-virtual {v2}, Lazd;->f()V

    return-void

    :cond_1
    :goto_1
    :try_start_1
    iget-object v4, v1, Lbdi;->c:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lek;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v6, :cond_6

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v6, Layx;->a:Ljava/lang/String;

    invoke-static {v4}, Lek;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    new-instance v9, Ljava/io/File;

    sget-object v10, Laya;->a:Laya;

    invoke-virtual {v10, v4}, Laya;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    const-string v10, "androidx.work.workdb"

    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v4, Layx;->b:[Ljava/lang/String;

    array-length v10, v4

    invoke-static {v7}, Lljr;->V(I)I

    move-result v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Lonm;->f(II)I

    move-result v10

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v7, :cond_2

    aget-object v12, v4, v10

    new-instance v13, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v14, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v12

    iget-object v13, v12, Lojd;->a:Ljava/lang/Object;

    iget-object v12, v12, Lojd;->b:Ljava/lang/Object;

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v6, v9}, Lljr;->aM(Ljava/lang/Object;Ljava/lang/Object;)Lojd;

    move-result-object v4

    invoke-static {v11, v4}, Lljr;->X(Ljava/util/Map;Lojd;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v10, Layx;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Over-writing contents of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v9, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Migrated "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Renaming "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " failed"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-static {}, Laxq;->a()Laxq;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_23
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-static {}, Laxq;->a()Laxq;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    const/4 v4, 0x1

    :try_start_3
    iget-object v6, v1, Lbdi;->c:Landroid/content/Context;

    iget-object v9, v1, Lbdi;->d:Lazd;

    sget v10, Lazw;->a:I

    const-string v10, "jobscheduler"

    invoke-virtual {v6, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobScheduler;

    invoke-static {v6, v10}, Lazw;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v6

    iget-object v11, v9, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->y()Lbbs;

    move-result-object v11

    const-string v12, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    invoke-static {v12, v8}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v12

    move-object v13, v11

    check-cast v13, Lbbw;

    iget-object v13, v13, Lbbw;->a:Lapt;

    invoke-virtual {v13}, Lapt;->l()V

    check-cast v11, Lbbw;

    iget-object v11, v11, Lbbw;->a:Lapt;

    invoke-static {v11, v12, v8}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v11
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_1d
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_1b
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v14, v5

    goto :goto_6

    :cond_7
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_5

    :cond_8
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lapy;->j()V

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_7

    :cond_9
    const/4 v11, 0x0

    :goto_7
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v6, :cond_b

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/job/JobInfo;

    invoke-static {v11}, Lazw;->a(Landroid/app/job/JobInfo;)Lbbx;

    move-result-object v14

    if-eqz v14, :cond_a

    iget-object v11, v14, Lbbx;->a:Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    move-result v11

    invoke-static {v10, v11}, Lazw;->f(Landroid/app/job/JobScheduler;I)V

    goto :goto_8

    :cond_b
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {}, Laxq;->a()Laxq;

    const/4 v6, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :goto_9
    const-wide/16 v10, -0x1

    if-eqz v6, :cond_f

    iget-object v9, v9, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v9}, Lapt;->m()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_5 .. :try_end_5} :catch_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_5 .. :try_end_5} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_1e
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_5 .. :try_end_5} :catch_1d
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_5 .. :try_end_5} :catch_1c
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_5 .. :try_end_5} :catch_1b
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v12

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_a
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v12, v14, v10, v11}, Lbck;->j(Ljava/lang/String;J)V

    goto :goto_a

    :cond_e
    invoke-virtual {v9}, Lapt;->q()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v9}, Lapt;->o()V

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v9}, Lapt;->o()V

    throw v6

    :cond_f
    :goto_b
    iget-object v9, v1, Lbdi;->d:Lazd;

    iget-object v9, v9, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v12

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->A()Lbcc;

    move-result-object v13

    invoke-virtual {v9}, Lapt;->m()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_7 .. :try_end_7} :catch_21
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_20
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7 .. :try_end_7} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_1e
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_7 .. :try_end_7} :catch_1c
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_7 .. :try_end_7} :catch_1b
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-interface {v12}, Lbck;->b()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v4

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lbcj;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iget-object v5, v7, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v12, v4, v5}, Lbck;->k(ILjava/lang/String;)V

    iget-object v5, v7, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v12, v5, v10, v11}, Lbck;->j(Ljava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v5, 0x0

    const/4 v7, 0x3

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v5, v0

    const/4 v7, 0x0

    goto/16 :goto_19

    :cond_10
    :try_start_a
    move-object v5, v13

    check-cast v5, Lbcg;

    iget-object v5, v5, Lbcg;->a:Lapt;

    invoke-virtual {v5}, Lapt;->l()V

    move-object v5, v13

    check-cast v5, Lbcg;

    iget-object v5, v5, Lbcg;->c:Laqa;

    invoke-virtual {v5}, Laqa;->e()Larf;

    move-result-object v5

    move-object v7, v13

    check-cast v7, Lbcg;

    iget-object v7, v7, Lbcg;->a:Lapt;

    invoke-virtual {v7}, Lapt;->m()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    invoke-virtual {v5}, Larf;->a()I

    move-object v7, v13

    check-cast v7, Lbcg;

    iget-object v7, v7, Lbcg;->a:Lapt;

    invoke-virtual {v7}, Lapt;->q()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    move-object v7, v13

    check-cast v7, Lbcg;

    iget-object v7, v7, Lbcg;->a:Lapt;

    invoke-virtual {v7}, Lapt;->o()V

    check-cast v13, Lbcg;

    iget-object v7, v13, Lbcg;->c:Laqa;

    invoke-virtual {v7, v5}, Laqa;->g(Larf;)V

    invoke-virtual {v9}, Lapt;->q()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v9}, Lapt;->o()V

    if-nez v15, :cond_12

    if-eqz v6, :cond_11

    const/4 v5, 0x1

    goto :goto_d

    :cond_11
    const/4 v5, 0x0

    goto :goto_d

    :cond_12
    const/4 v5, 0x1

    :goto_d
    iget-object v6, v1, Lbdi;->d:Lazd;

    iget-object v6, v6, Lazd;->j:Lbkb;

    iget-object v6, v6, Lbkb;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->x()Lbbn;

    move-result-object v6

    invoke-interface {v6, v3}, Lbbn;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_d .. :try_end_d} :catch_13
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_d .. :try_end_d} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_d .. :try_end_d} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d .. :try_end_d} :catch_10
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_d .. :try_end_d} :catch_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_d .. :try_end_d} :catch_e
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_13

    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v11, 0x1

    cmp-long v13, v6, v11

    if-nez v13, :cond_13

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v5, v1, Lbdi;->d:Lazd;

    invoke-virtual {v5}, Lazd;->g()V

    iget-object v5, v1, Lbdi;->d:Lazd;

    iget-object v5, v5, Lazd;->j:Lbkb;

    new-instance v6, Lbbm;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lbbm;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, v5, Lbkb;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->x()Lbbn;

    move-result-object v5

    invoke-interface {v5, v6}, Lbbn;->b(Lbbm;)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e .. :try_end_e} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_e .. :try_end_e} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto/16 :goto_16

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_e

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_e

    :catch_6
    move-exception v0

    :goto_e
    move-object v5, v0

    const/4 v7, 0x0

    goto/16 :goto_1c

    :cond_13
    :try_start_f
    iget-object v6, v1, Lbdi;->c:Landroid/content/Context;

    const/high16 v7, 0x22000000

    invoke-static {v6, v7}, Lbdi;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v6
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_b
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_f .. :try_end_f} :catch_13
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f .. :try_end_f} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_f .. :try_end_f} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_f .. :try_end_f} :catch_10
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_f .. :try_end_f} :catch_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_f .. :try_end_f} :catch_e
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_f .. :try_end_f} :catch_d
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz v6, :cond_14

    :try_start_10
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V
    :try_end_10
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_f

    :catch_8
    move-exception v0

    :goto_f
    move-object v5, v0

    const/4 v7, 0x0

    goto/16 :goto_14

    :cond_14
    :goto_10
    :try_start_11
    iget-object v6, v1, Lbdi;->c:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_11} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_11 .. :try_end_11} :catch_13
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_11 .. :try_end_11} :catch_12
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11 .. :try_end_11} :catch_11
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v7, 0x0

    :try_start_12
    invoke-virtual {v6, v7, v8, v8}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_17

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    iget-object v11, v1, Lbdi;->f:Lbkb;

    iget-object v11, v11, Lbkb;->a:Ljava/lang/Object;

    check-cast v11, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->x()Lbbn;

    move-result-object v11

    invoke-interface {v11, v2}, Lbbn;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_15

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_11

    :cond_15
    :goto_11
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_17

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v11}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_16

    invoke-virtual {v11}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v11
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_12} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_12 .. :try_end_12} :catch_1a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_12 .. :try_end_12} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    cmp-long v13, v11, v9

    if-ltz v13, :cond_16

    goto :goto_15

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_17
    if-eqz v5, :cond_18

    :try_start_13
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v5, v1, Lbdi;->d:Lazd;

    iget-object v6, v5, Lazd;->c:Laxd;

    iget-object v8, v5, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v5, v5, Lazd;->e:Ljava/util/List;

    invoke-static {v6, v8, v5}, Layt;->a(Laxd;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    goto :goto_16

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_12

    :catch_c
    move-exception v0

    :goto_12
    const/4 v7, 0x0

    :goto_13
    move-object v5, v0

    :goto_14
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v6, Lbdi;->b:Ljava/lang/String;

    const-string v8, "Ignoring exception"

    invoke-static {v6, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    invoke-static {}, Laxq;->a()Laxq;

    iget-object v5, v1, Lbdi;->d:Lazd;

    invoke-virtual {v5}, Lazd;->g()V

    iget-object v5, v1, Lbdi;->f:Lbkb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v6, Lbbm;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v2, v8}, Lbbm;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v5, v5, Lbkb;->a:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->x()Lbbn;

    move-result-object v5

    invoke-interface {v5, v6}, Lbbn;->b(Lbbm;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_13 .. :try_end_13} :catch_14
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :cond_18
    :goto_16
    iget-object v2, v1, Lbdi;->d:Lazd;

    goto/16 :goto_0

    :catch_d
    move-exception v0

    goto :goto_17

    :catch_e
    move-exception v0

    goto :goto_17

    :catch_f
    move-exception v0

    goto :goto_17

    :catch_10
    move-exception v0

    goto :goto_17

    :catch_11
    move-exception v0

    goto :goto_17

    :catch_12
    move-exception v0

    goto :goto_17

    :catch_13
    move-exception v0

    :goto_17
    const/4 v7, 0x0

    goto :goto_1b

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    move-object v6, v0

    :try_start_14
    move-object v8, v13

    check-cast v8, Lbcg;

    iget-object v8, v8, Lbcg;->a:Lapt;

    invoke-virtual {v8}, Lapt;->o()V

    check-cast v13, Lbcg;

    iget-object v8, v13, Lbcg;->c:Laqa;

    invoke-virtual {v8, v5}, Laqa;->g(Larf;)V

    throw v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_18

    :catchall_4
    move-exception v0

    const/4 v7, 0x0

    goto :goto_18

    :catchall_5
    move-exception v0

    move-object v7, v5

    :goto_18
    move-object v5, v0

    :goto_19
    :try_start_15
    invoke-virtual {v9}, Lapt;->o()V

    throw v5

    :catchall_6
    move-exception v0

    move-object v7, v5

    move-object v5, v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v12}, Lapy;->j()V

    throw v5
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_15 .. :try_end_15} :catch_1a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_15 .. :try_end_15} :catch_19
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_15 .. :try_end_15} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_15 .. :try_end_15} :catch_17
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_15 .. :try_end_15} :catch_15
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_15 .. :try_end_15} :catch_14
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :catch_14
    move-exception v0

    goto :goto_1b

    :catch_15
    move-exception v0

    goto :goto_1b

    :catch_16
    move-exception v0

    goto :goto_1b

    :catch_17
    move-exception v0

    goto :goto_1b

    :catch_18
    move-exception v0

    goto :goto_1b

    :catch_19
    move-exception v0

    goto :goto_1b

    :catch_1a
    move-exception v0

    goto :goto_1b

    :catch_1b
    move-exception v0

    goto :goto_1a

    :catch_1c
    move-exception v0

    goto :goto_1a

    :catch_1d
    move-exception v0

    goto :goto_1a

    :catch_1e
    move-exception v0

    goto :goto_1a

    :catch_1f
    move-exception v0

    goto :goto_1a

    :catch_20
    move-exception v0

    goto :goto_1a

    :catch_21
    move-exception v0

    :goto_1a
    move-object v7, v5

    :goto_1b
    move-object v5, v0

    :goto_1c
    :try_start_16
    iget v6, v1, Lbdi;->e:I

    add-int/2addr v6, v4

    iput v6, v1, Lbdi;->e:I

    const/4 v4, 0x3

    if-ge v6, v4, :cond_19

    invoke-static {}, Laxq;->a()Laxq;

    iget v4, v1, Lbdi;->e:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    int-to-long v4, v4

    const-wide/16 v8, 0x12c

    mul-long v4, v4, v8

    :try_start_17
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_22
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :goto_1d
    move-object v5, v7

    goto/16 :goto_1

    :catch_22
    move-exception v0

    goto :goto_1d

    :cond_19
    :try_start_18
    const-string v2, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v3, Lbdi;->b:Ljava/lang/String;

    invoke-static {v3, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_23
    move-exception v0

    move-object v2, v0

    const-string v3, "Unexpected SQLite exception during migrations"

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v4, Lbdi;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    iget-object v3, v1, Lbdi;->d:Lazd;

    invoke-virtual {v3}, Lazd;->f()V

    goto :goto_1f

    :goto_1e
    throw v2

    :goto_1f
    goto :goto_1e
.end method
