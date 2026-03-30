.class public final synthetic Lhqb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

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

    :goto_2
    iput-object p1, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lhqb;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p2, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput p3, p0, Lhqb;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lhqe;->a(Lhqd;ZLhqc;)Landroid/database/Cursor;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    sget-object v0, Lhfa;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Loev;

    nop

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

    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

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

    nop

    :goto_8
    goto/32 :goto_49

    nop

    nop

    :goto_9
    goto/32 :goto_47

    nop

    nop

    :goto_a
    check-cast p0, Lhqe;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_c
    sget-object v1, Lhfa;->a:Lsdb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    if-nez v4, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lhdn;

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

    :goto_11
    iget-object p0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhdn;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Ltjj;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p0, Lsig;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1a
    const-string v2, "Error parsing Drive version information"

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhwy;->e:Ljava/lang/Object;

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

    :goto_1d
    if-ge v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v2, Lrsu;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_21
    invoke-static {v2, v4, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_2
    :goto_22
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Lqnz;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".trace"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    new-instance v3, Ljava/io/File;

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/content/Context;

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    nop

    nop

    const-string v4, "primes_profiling_"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v4}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    nop

    if-nez p0, :cond_3

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result p0

    nop

    nop

    nop

    nop

    if-nez p0, :cond_3

    nop

    nop

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    nop

    :cond_3
    new-instance p0, Ljava/io/File;

    nop

    nop

    invoke-direct {p0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_4
    :try_start_2
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lqop;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Lqxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v4, 0x3cc

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    iget-object v0, v0, Loev;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v1, v3

    nop

    nop

    :goto_30
    :try_start_3
    check-cast p0, Landroid/content/Context;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    const-string v0, "com.google.android.apps.docs"

    nop

    nop

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    iget-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_31
    if-ge v4, v5, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_5
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/16 v8, 0x2e

    nop

    nop

    invoke-static {v8}, Lrth;->b(C)Lrth;

    move-result-object v8

    nop

    nop

    nop

    invoke-virtual {v8, v0}, Lrth;->f(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    if-lt v8, v5, :cond_2

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Ljava/lang/String;

    nop

    nop

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, Ljava/lang/String;

    nop

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    nop
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    :goto_33
    invoke-virtual {p0, v0}, Lqop;->b(F)Lqtu;

    move-result-object p0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_23

    nop

    nop

    :goto_36
    invoke-virtual {v0, v2}, Lhoh;->e(Lhmn;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v4, Lhfa;->b:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_38
    const-string v2, ""

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_7
    :try_start_5
    move-object v2, p0

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/content/Context;

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    nop

    nop

    nop

    const-string v4, "com.google.android.apps.docs"

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3d
    goto/16 :goto_30

    nop

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3e
    invoke-direct {v2, v0, v1}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lhqb;->a:Ljava/lang/Object;

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

    :goto_40
    if-eq v4, v5, :cond_8

    nop

    goto/32 :goto_22

    nop

    :cond_8
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p0, Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    nop

    :goto_43
    check-cast p0, Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x11

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    nop

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

    nop

    :goto_47
    iget v0, p0, Lhqb;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_48
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :goto_49
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4e
    return-object p0

    nop

    nop

    :goto_4f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v0, Lhoh;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_52
    sget-object v2, Lhqe;->b:Lhqc;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_54
    if-le v4, v5, :cond_9

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

    :cond_9
    goto/32 :goto_5b

    nop

    nop

    :goto_55
    sget-object v2, Lhmx;->l:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v0}, Lsig;->g([B)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_57
    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

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

    :goto_58
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lqtf;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5b
    if-eq v4, v5, :cond_a

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

    :cond_a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast v0, Loev;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_6
    const-string v1, "LensUtil.LensApi"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v1, Lcom/google/lens/sdk/LensApi;

    nop

    nop

    nop

    check-cast v0, Landroid/app/Activity;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    invoke-direct {v1, v0}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_f

    nop

    nop

    :goto_5e
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lhqb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_60
    iget v0, v0, Lqtf;->a:F

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

    :goto_61
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_b

    nop

    nop

    :goto_62
    const/4 v1, 0x1

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_63
    if-nez p0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    :cond_b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, p0, Lhqb;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v0, Lqxa;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_67
    throw p0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_51

    nop

    nop

    :goto_68
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p0, p0, Loev;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_39

    nop

    nop

    :catch_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-eqz v2, :cond_c

    nop

    goto/32 :goto_7b

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget v0, Lqth;->a:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_6e
    if-le v7, v8, :cond_d

    nop

    goto/32 :goto_30

    nop

    :cond_d
    :goto_6f
    goto/32 :goto_40

    nop

    nop

    :goto_70
    if-nez p0, :cond_e

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_71
    return-object p0

    nop

    :pswitch_4
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_2c

    nop

    nop

    :goto_73
    goto/16 :goto_16

    nop

    nop

    :goto_74
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_75
    iget-object v1, v0, Loev;->g:Ljava/lang/String;

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

    :goto_76
    if-eq v7, v8, :cond_f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0}, Ltjj;->t()[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v0, v0, Lqxa;->a:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_79
    and-int p0, v1, v3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_81

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lqxa;->a:Lhwy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7d
    if-lt v4, v2, :cond_10

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_57

    nop

    nop

    :goto_7e
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_5f

    nop

    nop

    :goto_80
    move v4, v3

    nop

    nop

    :goto_81
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
