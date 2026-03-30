.class public final Lqro;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lqoh;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lqoh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lqro;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqro;->a:Ljava/lang/Object;

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

    :goto_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lhdn;Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqro;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqro;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lqro;->a:Ljava/lang/Object;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public static final b(ZLqoa;)Luqg;
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const-string v3, "/proc/%d/oom_score_adj"

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

    :goto_1
    or-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lqny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    nop

    :catchall_0
    move-exception v3

    nop

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v1

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Lrsa;->a:Lrsa;

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

    :goto_7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_8
    check-cast p1, Luqg;

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    or-int/lit8 v3, v3, 0x10

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lqoa;->a()Lryb;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_11
    check-cast v1, Luqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_12
    iput v1, v2, Luqg;->g:I

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_64

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_1
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_18
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_19
    const v1, 0x2

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_2
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Luqg;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    or-int/lit8 v1, v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v3, :cond_4

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_22
    invoke-static {}, Ljava/lang/Thread;->activeCount()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_26
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v1

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2a
    check-cast v2, Luqg;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Luqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    invoke-static {p1, v1}, Lrgw;->X(Ljava/lang/Iterable;Lrsv;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    nop

    nop

    nop

    const-string v4, "r"

    nop

    nop

    nop

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lqkq;

    nop

    const/16 v5, 0x9

    nop

    nop

    invoke-direct {v4, v5}, Lqkq;-><init>(I)V

    invoke-virtual {v1, v4}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    check-cast p0, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_54

    nop

    :goto_37
    goto/16 :goto_57

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p1, v0, Ltkb;->b:Ltkg;

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

    :goto_3a
    check-cast p0, Lrss;

    nop

    :goto_3b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p1, v1}, Lqkq;-><init>(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance p1, Lqkq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput v2, v1, Luqg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_40
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

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

    :goto_41
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_44
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput v5, v4, Luqg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput v1, p1, Luqg;->b:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_48
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4a
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4b
    iput p0, v1, Luqg;->e:I

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4c
    iget v5, v4, Luqg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4e
    iput-wide v1, v4, Luqg;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_50
    iput-object p0, p1, Luqg;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_9

    nop

    nop

    :goto_52
    iget v2, v1, Luqg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_53
    sget-object v0, Luqg;->a:Luqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_6e

    nop

    nop

    nop

    :catch_0
    :try_start_5
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_57
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput v2, v1, Luqg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_59
    iget v2, v1, Luqg;->b:I

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

    :goto_5a
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, p1}, Lrss;->b(Lrsk;)Lrss;

    move-result-object p0

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

    :goto_5c
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5d
    check-cast v4, Luqg;

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

    :goto_5e
    sget-object p1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_60
    iput-boolean p0, v1, Luqg;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_61
    iget v1, p1, Luqg;->b:I

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

    :goto_62
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_63
    iput v3, v2, Luqg;->b:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_64
    iget-boolean v1, p1, Lqoa;->a:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object v4, v3

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_66
    or-int/lit8 v2, v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_68
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_69
    iget v3, v2, Luqg;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-object p0

    nop

    nop

    :goto_6e
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v1, p0}, Lqny;-><init>(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_71
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_72
    or-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz p1, :cond_8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Z
    .locals 4

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    invoke-static {}, Lqqm;->b()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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

    :goto_4
    const-string v3, "The provided @CustomMainProcess is not an app-private one, i.e. the one staring with colon(\':\'). @CustomMainProcess value: %s"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    :goto_7
    check-cast p0, Landroid/content/Context;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

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

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    const-string v0, "More than 1 custom main process specified"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    if-eq v2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lqyk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-static {v1}, Lrgw;->ad(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

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

    nop

    :goto_17
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1}, Lqyk;->a()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lqro;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    :goto_1f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lqro;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v3, v1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_24

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    :goto_27
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lqro;->a:Ljava/lang/Object;

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

    :goto_29
    invoke-static {}, Lqqm;->c()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_2c
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2d
    const-string v2, ":"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    const v0, 0x1b

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

    nop

    :goto_31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop
.end method
