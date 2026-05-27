.class public Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;
.super Lkav;


# static fields
.field private static final a:Lj$/time/format/DateTimeFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MM-dd HH:mm:ss.SSS"

    invoke-static {v0}, Lj$/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Lj$/time/ZoneId;->systemDefault()Lj$/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/format/DateTimeFormatter;->withZone(Lj$/time/ZoneId;)Lj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->a:Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkav;-><init>()V

    return-void
.end method

.method private static b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V
    .locals 22

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldma;

    iget-wide v9, v8, Ldma;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v10, p0

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldlu;

    if-eqz v9, :cond_4

    iget-wide v11, v8, Ldma;->b:J

    cmp-long v13, v11, v5

    if-eqz v13, :cond_1

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    :cond_0
    iget-wide v5, v9, Ldlu;->a:J

    iget-object v7, v9, Ldlu;->i:Ljava/lang/String;

    iget-wide v11, v9, Ldlu;->j:J

    iget-object v13, v9, Ldlu;->b:Ljava/lang/String;

    iget-object v14, v9, Ldlu;->h:Ljava/lang/String;

    iget-wide v2, v9, Ldlu;->c:J

    move-object v4, v1

    iget-wide v0, v9, Ldlu;->d:J

    move-wide/from16 v16, v0

    iget-wide v0, v9, Ldlu;->e:J

    move-wide/from16 v18, v0

    iget-wide v0, v9, Ldlu;->f:J

    move-wide/from16 v20, v0

    iget-wide v0, v9, Ldlu;->g:J

    iget-boolean v9, v9, Ldlu;->l:Z

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "[pid="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "] title="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " captureSessionType="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " start="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " persisted="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v16

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " canceled="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v18

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " deleted="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v20

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mostRecentEvent="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " failed="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move-object v4, v1

    move-object v1, v0

    :goto_1
    iget-wide v2, v8, Ldma;->c:J

    invoke-static {v2, v3}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    if-nez v7, :cond_2

    sget-object v2, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    goto :goto_2

    :cond_2
    invoke-static {v7, v0}, Lj$/time/Duration;->between(Lj$/time/temporal/Temporal;Lj$/time/temporal/Temporal;)Lj$/time/Duration;

    move-result-object v2

    :goto_2
    iget-wide v5, v8, Ldma;->c:J

    sget-object v3, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->a:Lj$/time/format/DateTimeFormatter;

    invoke-virtual {v3, v0}, Lj$/time/format/DateTimeFormatter;->format(Lj$/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    const/4 v2, 0x0

    const/4 v7, 0x1

    cmp-long v9, v11, v13

    if-ltz v9, :cond_3

    new-array v7, v7, [Ljava/lang/Object;

    long-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v2

    const-string v2, "%10.3fs"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v2

    const-string v2, "      .%03ds"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v7, v8, Ldma;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v5, v8, Ldma;->b:J

    move-object v7, v0

    move-object v0, v1

    move-object v1, v4

    const-wide v3, 0x7fffffffffffffffL

    goto/16 :goto_0

    :cond_4
    move-object v4, v1

    move-object v1, v0

    move-object v1, v4

    const-wide v3, 0x7fffffffffffffffL

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/PrintWriter;)V
    .locals 20

    move-object/from16 v0, p1

    const-string v1, "shot_id"

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    const-string v4, "shot_db"

    invoke-static {v2, v3, v4}, Laek;->g(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Laps;

    move-result-object v2

    invoke-virtual {v2}, Laps;->c()V

    invoke-virtual {v2}, Laps;->a()Lapt;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;->w()Ldlm;

    move-result-object v3

    const-string v4, "SELECT * FROM shots ORDER BY shot_id"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v4

    check-cast v3, Ldls;

    iget-object v6, v3, Ldls;->a:Lapt;

    invoke-virtual {v6}, Lapt;->l()V

    iget-object v3, v3, Ldls;->a:Lapt;

    invoke-static {v3, v4, v5}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-static {v3, v1}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    invoke-static {v3, v7}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "start_millis"

    invoke-static {v3, v8}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "persisted_millis"

    invoke-static {v3, v9}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "canceled_millis"

    invoke-static {v3, v10}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "deleted_millis"

    invoke-static {v3, v11}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "most_recent_event_millis"

    invoke-static {v3, v12}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "capture_session_type"

    invoke-static {v3, v13}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "capture_session_shot_id"

    invoke-static {v3, v14}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "pid"

    invoke-static {v3, v15}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "stuck"

    invoke-static {v3, v5}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v0, "failed"

    invoke-static {v3, v0}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v17, v2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v18, v4

    if-eqz v2, :cond_5

    :try_start_1
    new-instance v2, Ldlu;

    invoke-direct {v2}, Ldlu;-><init>()V

    move/from16 v19, v5

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->a:J

    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-object v4, v2, Ldlu;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ldlu;->b:Ljava/lang/String;

    :goto_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->c:J

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->d:J

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->e:J

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->f:J

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->g:J

    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    iput-object v4, v2, Ldlu;->h:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ldlu;->h:Ljava/lang/String;

    :goto_2
    invoke-interface {v3, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, v2, Ldlu;->i:Ljava/lang/String;

    goto :goto_3

    :cond_2
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ldlu;->i:Ljava/lang/String;

    :goto_3
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Ldlu;->j:J

    move/from16 v4, v19

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v19, 0x1

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v2, Ldlu;->k:Z

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v2, Ldlu;->l:Z

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    move-object/from16 v4, v18

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v18 .. v18}, Lapy;->j()V

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/apps/camera/debug/shottracker/db/ShotDatabase;->x()Ldlv;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/apps/camera/logging/xBa/PEJhgncuq;->PzsEID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lapy;->a(Ljava/lang/String;I)Lapy;

    move-result-object v2

    check-cast v0, Ldlz;

    iget-object v4, v0, Ldlz;->a:Lapt;

    invoke-virtual {v4}, Lapt;->l()V

    iget-object v0, v0, Ldlz;->a:Lapt;

    invoke-static {v0, v2, v3}, Laey;->e(Lapt;Laqv;Z)Landroid/database/Cursor;

    move-result-object v3

    :try_start_2
    const-string v0, "sequence"

    invoke-static {v3, v0}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move-object/from16 v4, v16

    invoke-static {v3, v4}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "time_millis"

    invoke-static {v3, v5}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "message"

    invoke-static {v3, v6}, Laeq;->o(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ldma;

    invoke-direct {v8}, Ldma;-><init>()V

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Ldma;->a:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Ldma;->b:J

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v8, Ldma;->c:J

    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    iput-object v9, v8, Ldma;->d:Ljava/lang/String;

    goto :goto_7

    :cond_6
    const/4 v9, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Ldma;->d:Ljava/lang/String;

    :goto_7
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lapy;->j()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldlu;

    iget-boolean v4, v3, Ldlu;->l:Z

    if-nez v4, :cond_9

    iget-wide v4, v3, Ldlu;->d:J

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-nez v6, :cond_8

    iget-wide v4, v3, Ldlu;->e:J

    cmp-long v6, v4, v8

    if-nez v6, :cond_8

    iget-wide v4, v3, Ldlu;->f:J

    cmp-long v6, v4, v8

    if-nez v6, :cond_8

    goto :goto_9

    :cond_8
    iget-wide v4, v3, Ldlu;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_9
    :goto_9
    iget-wide v4, v3, Ldlu;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_a
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DUMPING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SUSPECT, "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " OK"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "\nSUSPECT SHOTS"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v2, v7, v5}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V

    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "\nOK SHOTS"

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v0, v7, v5}, Lcom/google/android/apps/camera/debug/shottracker/db/DbDebugDumper;->b(Ljava/util/Map;Ljava/util/List;Ljava/io/PrintWriter;)V

    :cond_c
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\nDUMPED: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual/range {v17 .. v17}, Lapt;->n()V

    return-void

    :catchall_1
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v2}, Lapy;->j()V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v4

    :goto_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v18 .. v18}, Lapy;->j()V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
