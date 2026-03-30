.class public Llwk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final d:Lrtm;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lhoh;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:Lmjv;

.field private final h:Lnch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Llwi;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Llwi;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :goto_9
    sput-object v0, Llwk;->d:Lrtm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

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

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "lwk"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Llwk;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object v0

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
.end method

.method public constructor <init>(Ljava/io/File;Lnch;Lhoh;Lmjv;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    const-string v1, "inflight"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1b

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

    :goto_6
    iput-object v0, p0, Llwk;->e:Ljava/io/File;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Llwk;->f:Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/io/File;

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_a
    iput-object p5, p0, Llwk;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/io/File;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

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

    :goto_e
    sget-object v1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->rmVNn:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Llwk;->c:Lhoh;

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

    nop

    :goto_12
    iput-object p2, p0, Llwk;->h:Lnch;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_16
    iput-object p4, p0, Llwk;->g:Lmjv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method


# virtual methods
.method public final a(Llxa;)Llxk;
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_12

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, v1, p1}, Llwj;-><init>(Llwk;Ljava/io/File;Llxa;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Llwj;

    nop

    goto/32 :goto_3

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

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    const-string v2, ".jpg"

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

    :goto_b
    const v0, 0x4

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

    :goto_c
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Llxa;->w(Llxk;)V

    goto/32 :goto_15

    nop

    nop

    :goto_10
    invoke-interface {p1}, Llxa;->e()J

    move-result-wide v2

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

    :goto_11
    iget-object v0, p0, Llwk;->e:Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Llxp;->b:Llxp;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    iget-object v0, p0, Llwk;->f:Ljava/io/File;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-interface {p1}, Llxa;->l()Llxp;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_6

    nop

    :goto_1a
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_1b
    const-string v5, "medres-"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Ljava/io/File;

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

    :goto_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Z)V
    .locals 19

    goto/32 :goto_f

    nop

    nop

    :goto_0
    invoke-static {v2, v12, v4, v0, v3}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-nez v13, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    :try_start_0
    invoke-virtual {v13}, Llxc;->a()V

    :goto_6
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llxg;->e()V

    :cond_1
    throw v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_7
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/16 :goto_35

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    if-lt v11, v0, :cond_2

    nop

    goto/32 :goto_4f

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

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_4a

    nop

    :catch_1
    move-exception v0

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

    :goto_e
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Llwk;->a:Lsdb;

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

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_12
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    :goto_16
    iget-object v0, v1, Llwk;->e:Ljava/io/File;

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v4, 0xff4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    const-string v2, "Failed to delete fallback file %s"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_45

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1b
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_4
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v4}, Llxc;->b()V

    invoke-virtual {v3}, Llxg;->h()V

    sget-object v0, Llwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v5, 0xff3

    nop

    invoke-interface {v0, v5}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v5, "Restored %s"

    nop

    nop

    iget-object v6, v4, Llxc;->b:Lpsf;

    nop

    invoke-interface {v6}, Lpsf;->b()Landroid/net/Uri;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v0, v5, v6}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Llwk;->g:Lmjv;

    nop

    sget-object v5, Lsmw;->a:Lsmw;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    nop

    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_5
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v7, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lsmw;

    nop

    iget v8, v7, Lsmw;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v8, v13

    nop

    nop

    nop

    nop

    iput v8, v7, Lsmw;->b:I

    nop

    move-wide/from16 v14, v17

    nop

    nop

    nop

    iput-wide v14, v7, Lsmw;->c:J

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->C()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_6

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_6
    iget-object v6, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v6, Lsmw;

    nop

    nop

    nop

    nop

    iput v13, v6, Lsmw;->d:I

    nop

    nop

    iget v7, v6, Lsmw;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v7, v7, 0x2

    nop

    nop

    nop

    nop

    iput v7, v6, Lsmw;->b:I

    nop

    nop

    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lsmw;

    nop

    invoke-virtual {v0, v5}, Lmjv;->d(Lsmw;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    const-string v9, "RESTORED"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Llwk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_35

    nop

    nop

    nop

    :cond_7
    :try_start_5
    sget-object v0, Llwk;->d:Lrtm;

    nop

    invoke-interface {v0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/util/regex/Pattern;

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_9

    nop

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    nop

    nop

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    nop

    nop

    sub-long/2addr v6, v4

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v0, v6, v7, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    iget-object v3, v1, Llwk;->h:Lnch;

    nop

    nop

    if-eqz p1, :cond_8

    nop

    nop

    nop

    sget-object v0, Llxp;->b:Llxp;

    nop

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_8
    sget-object v0, Llxp;->a:Llxp;

    nop

    nop

    :goto_21
    sget-object v16, Lidb;->a:Lidb;

    nop

    nop

    nop

    move-wide/from16 v17, v6

    nop

    nop

    nop

    move-object/from16 v6, v16

    nop

    move-object v7, v9

    nop

    nop

    nop

    nop

    move v13, v8

    nop

    nop

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v8}, Lnch;->c(JLidb;Ljava/lang/String;Llxp;)Llxg;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v0, "jpg"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v0}, Llxg;->a(Ljava/lang/String;)Llxc;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    new-instance v5, Ljava/io/FileInputStream;

    nop

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    iget-object v0, v4, Llxc;->b:Lpsf;

    nop

    invoke-interface {v0}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v6

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-static {v5, v6}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v7

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_17

    nop

    nop

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    sget-object v0, Llwk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_15

    nop

    :cond_9
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Unknown fallback file format: "

    nop

    nop

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
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

    :goto_27
    if-nez p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v13, 0x0

    nop

    nop

    :goto_29
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 v4, 0xff5

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v4, 0xff8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    move-object v5, v0

    nop

    :try_start_b
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v1

    nop
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catch_2
    move-exception v0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

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

    :goto_2f
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    const-string v1, "Copy returned 0 bytes"

    nop

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aget-object v12, v10, v11

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v3, v14

    nop

    if-nez v0, :cond_7

    nop

    sget-object v0, Llwk;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xff7

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v3, "Failed to restore empty file: %s"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3, v12}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v3, v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    invoke-static {v2, v12, v4, v0, v3}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_35
    goto/32 :goto_3b

    nop

    nop

    :goto_36
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_37
    cmp-long v0, v7, v14

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

    :goto_38
    move-object v1, v0

    nop

    nop

    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_39
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3c
    iget-object v0, v1, Llwk;->f:Ljava/io/File;

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

    :goto_3d
    array-length v0, v10

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

    :goto_3e
    if-nez v10, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_29

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_41
    move-object v3, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_42
    move-object v13, v4

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move-object v6, v0

    nop

    :try_start_11
    invoke-virtual {v1, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_47
    const v1, 0x10

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

    :goto_48
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v2, v12, v4, v0, v3}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :goto_4a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4b
    move v11, v0

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4d
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    throw v1

    nop

    nop

    :goto_4f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move-object v1, v0

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
.end method
