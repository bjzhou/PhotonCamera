.class public Lgup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgoc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Llwx;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lhrb;

.field public e:Lrss;

.field private final f:Lgoe;

.field private final g:Lgrj;

.field private final h:Llyv;

.field private final i:Lhoh;


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

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lgup;->a:Lsdb;

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "gup"

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
.end method

.method public constructor <init>(Llwx;Lgoe;Lgrj;Ljava/util/concurrent/Executor;Llyv;Lhrb;Lhoh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lgup;->i:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lgup;->g:Lgrj;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-object p6, p0, Lgup;->d:Lhrb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p4, p0, Lgup;->c:Ljava/util/concurrent/Executor;

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

    :goto_5
    iput-object p1, p0, Lgup;->b:Llwx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    iput-object p2, p0, Lgup;->f:Lgoe;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Lgup;->h:Llyv;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static a(Lgrf;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_22

    nop

    nop

    :goto_0
    goto/32 :goto_29

    nop

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "TS"

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

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    :goto_8
    check-cast v1, Lgwo;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    iget-boolean v1, p0, Lgrf;->t:Z

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

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Lgwo;->ordinal()I

    move-result v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v2, "."

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v2, Lgwo;->a:Lgwo;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const-string v1, "LOCKED"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    const-string p0, "MAIN"

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1f
    iget-boolean v1, p0, Lgrf;->z:Z

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_20
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    const v0, 0x1b

    nop

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

    :goto_23
    sget-object v1, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->BbcVq:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_31

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lgrf;->n:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2d
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "ACTIVE"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    :goto_32
    iget-object v1, p0, Lgrf;->n:Ljava/util/List;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    :goto_34
    if-eqz v1, :cond_7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x18

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

    :goto_38
    iget-boolean p0, p0, Lgrf;->A:Z

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

    nop

    :goto_39
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3a
    if-ne v1, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v2, 0x0

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
.end method

.method public static final m(Lrss;)V
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lscz;

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

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_b

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

    :goto_4
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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
    const/16 v0, 0x351

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

    nop

    :goto_6
    const-string v0, "No MediaGroup. Publish to MediaStore failed"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lgup;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Llxg;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Llxg;->h()V

    goto/32 :goto_9

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/util/List;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3
    const v1, 0xe

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

    :goto_4
    iget-object v0, p0, Lgup;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lgow;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_10
    invoke-direct {v1, p0, p1, v2}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method public final c(Lrss;Lrss;JLjava/lang/String;Ljava/lang/String;)V
    .locals 15

    goto/32 :goto_2d

    nop

    nop

    :goto_0
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    iget-object v1, v0, Lgup;->i:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    invoke-interface {v2, v3, v0}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_3a

    nop

    nop

    :goto_7
    const-string v1, "No MediaGroup or MediaFile. Could not insert %s video into MediaStore."

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

    :goto_8
    const-string v3, "Couldn\'t fix video duration"

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

    :goto_9
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move-object v3, v0

    nop

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v2

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Llxc;->b:Lpsf;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lscz;

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

    :goto_15
    move-object/from16 v1, p6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v1, Lgrj;->b:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_18
    move-object/from16 v2, p5

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, v1}, Lpsf;->h(Ljava/lang/String;)V

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_42

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    :goto_1d
    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_1f
    sget-object v2, Lhly;->L:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Llxc;->b()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Llxc;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_25
    const-string v1, "Not fixing creation time; disabled by flag."

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0x350

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    move-object v2, v0

    nop

    nop

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2a
    throw v3

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x11

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2f
    goto :goto_2a

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

    goto/32 :goto_29

    nop

    nop

    :goto_30
    check-cast v0, Llxc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_47

    nop

    nop

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_32
    iget-object v0, v1, Lgrj;->a:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_34
    invoke-virtual/range {p2 .. p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_35
    iget-object v1, v0, Lgup;->g:Lgrj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    check-cast v0, Llxc;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_38
    iget-object v0, v0, Llxc;->b:Lpsf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_39
    move-object v2, v0

    nop

    nop

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v0, Lgup;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    :goto_3d
    goto/32 :goto_33

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_40
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_4

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_42
    invoke-static/range {p3 .. p4}, Lgrj;->a(J)I

    move-result v4

    nop

    nop

    nop

    :try_start_5
    invoke-interface {v0}, Lpsf;->d()Ljava/io/FileInputStream;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    invoke-static {v5}, Lqec;->b(Ljava/io/FileInputStream;)Lqec;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v6, "moov"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Lqec;->e(Ljava/lang/String;)Lqec;

    move-result-object v0

    nop

    const-string v6, "mvhd"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Lqec;->d(Ljava/lang/String;)Lqec;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6}, Lqec;->a()Lqec;

    move-result-object v6

    nop

    nop

    invoke-virtual {v6}, Lqec;->f()Lqee;

    move-result-object v7

    nop

    nop

    iget-wide v7, v7, Lqee;->b:J

    nop

    nop

    const-wide/16 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v7, v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lqec;->f()Lqee;

    move-result-object v6

    nop

    nop

    iget-wide v6, v6, Lqee;->b:J

    nop

    nop

    nop

    nop

    const-wide/16 v11, 0x8

    nop

    nop

    nop

    nop

    add-long/2addr v6, v11

    nop

    nop

    nop

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lqec;->a()Lqec;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v6, "trak"

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lqeg;->a(Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    nop

    iget-object v0, v0, Lqec;->a:Lrss;

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lqee;

    nop

    nop

    invoke-virtual {v0}, Lqee;->b()Lqee;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    :goto_43
    invoke-static {v0}, Lqoe;->O(Lqee;)Lqee;

    move-result-object v8

    nop

    nop

    if-eqz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lqoe;->P(Lqee;)[B

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-static {v13, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v13

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_7

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move-object v0, v7

    nop

    nop

    nop

    :goto_44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_9

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lqee;

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lqec;->c(Lqee;)Lqec;

    move-result-object v7

    nop

    const-string v8, "tkhd"

    nop

    invoke-virtual {v7, v8}, Lqec;->d(Ljava/lang/String;)Lqec;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Lqec;->a()Lqec;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Lqec;->f()Lqee;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iget-wide v13, v8, Lqee;->b:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v13, v9

    nop

    nop

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lqec;->f()Lqee;

    move-result-object v7

    nop

    nop

    nop

    iget-wide v7, v7, Lqee;->b:J

    nop

    nop

    add-long/2addr v7, v11

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Lqec;->c(Lqee;)Lqec;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const-string v7, "mdia"

    nop

    nop

    invoke-virtual {v6, v7}, Lqec;->d(Ljava/lang/String;)Lqec;

    move-result-object v6

    nop

    const-string v7, "mdhd"

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Lqec;->d(Ljava/lang/String;)Lqec;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lqec;->a()Lqec;

    move-result-object v6

    nop

    invoke-virtual {v6}, Lqec;->f()Lqee;

    move-result-object v7

    nop

    iget-wide v7, v7, Lqee;->b:J

    nop

    nop

    nop

    add-long/2addr v7, v9

    nop

    nop

    nop

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lqec;->f()Lqee;

    move-result-object v6

    nop

    nop

    nop

    iget-wide v6, v6, Lqee;->b:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v6, v11

    nop

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_c

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v8

    nop

    invoke-virtual {v8, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v6, Ljava/io/DataInputStream;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lhhg;->F(II)I

    move-result v7

    nop

    nop

    nop

    if-gtz v7, :cond_b

    nop

    nop

    nop

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v9, 0xa

    nop

    nop

    invoke-virtual {v7, v9, v10, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    nop

    nop

    nop

    sub-long v7, p3, v7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lgrj;->a(J)I

    move-result v7

    nop

    nop

    invoke-static {v7, v6}, Lhhg;->F(II)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-gtz v7, :cond_a

    nop

    nop

    goto :goto_46

    nop

    nop

    nop

    nop

    :cond_a
    new-instance v0, Lgri;

    nop

    nop

    nop

    nop

    const-string v2, "Existing modification time too early, won\' fix: "

    nop

    nop

    nop

    nop

    invoke-static {v6, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lgri;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_b
    new-instance v0, Lgri;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Modification time already too large: "

    nop

    invoke-static {v6, v2}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-direct {v0, v2}, Lgri;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-interface {v2}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v2

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :try_start_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    new-instance v3, Ljava/io/DataOutputStream;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_49
    iget-object v0, v1, Lgrj;->a:Lpcu;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_4a
    check-cast v0, Llxc;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v2, Llxc;->b:Lpsf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_d
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v2, v1, Lgrj;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_50
    const-string v1, "Successfully fixed creation time."

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v4, Lhly;->O:Lhmn;

    nop

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

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dE(Lrle;)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lgrf;

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

    :goto_1
    iget-object v1, p0, Lgup;->d:Lhrb;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lgow;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_7
    iget-wide v2, v0, Llxn;->b:J

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

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_b
    invoke-virtual {p0, p1, p1}, Llwb;->i(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Lrle;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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
    iget-object p0, p0, Lgup;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, v2, v3}, Lhrb;->c(J)Lsui;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Llwb;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_34

    nop

    nop

    :goto_16
    goto/16 :goto_5

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v2, v3, v4}, Lhrb;->c(J)Lsui;

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lgre;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    const/16 p1, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    iget-object v0, p1, Lrle;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_1f
    iget-wide v3, v1, Llxn;->b:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Lgup;->d:Lhrb;

    nop

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

    nop

    :goto_23
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Lgoe;->o()Z

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xc

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    invoke-direct {v1, p0, p1, v2, v3}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_2d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Lgup;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lgre;->h:Llxn;

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

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, v1, Lgrf;->s:Llxn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lgup;->f:Lgoe;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lgre;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-static {p0}, Lgup;->m(Lrss;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    iget-object p0, p1, Lgre;->d:Llxg;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    sget-object v5, Llxo;->p:Llxo;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

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

    :goto_9
    move-object v1, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    iget-object v0, p1, Lgre;->d:Llxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    sget-object v7, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_d
    invoke-virtual {v4}, Llxc;->b()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object v0, p1, Lgre;->h:Llxn;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p1, Lgre;->h:Llxn;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, p1, Lgre;->c:Llxc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Llxn;->a:Llxm;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {v1 .. v7}, Lgup;->l(Lrss;Llxn;Llxc;Llxo;ZLjava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final g()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic j()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final k(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final l(Lrss;Llxn;Llxc;Llxo;ZLjava/util/List;)V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    check-cast p1, Llxg;

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

    :goto_5
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    move-object v4, p3

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

    :goto_7
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    goto :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Llxp;->b:Llxp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    move-object v7, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    sget-object v0, Llxp;->a:Llxp;

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    move-object v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Llxg;->f(Lpsi;)V

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_14
    move-object v3, p4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    iget-object v0, p0, Lgup;->h:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    new-instance v0, Lguo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v1, Llyr;->aG:Llze;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-direct/range {v1 .. v8}, Lguo;-><init>(Lgup;Llxo;Llxc;Llxn;ZLlxp;Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    move-object v5, p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v8, p6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    goto/32 :goto_12

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x1e

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    move v6, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop
.end method
