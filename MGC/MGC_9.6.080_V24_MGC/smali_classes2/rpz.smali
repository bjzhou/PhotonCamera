.class public final Lrpz;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    iput-object v0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrpy;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lrpy;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

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
    iput-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "] "

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "UID: ["

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x14

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

    :goto_6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->eMpIIaGJEzplljK:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    const v1, 0xb

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

    :goto_e
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/ArrayList;

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

    :goto_2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

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
.end method

.method public constructor <init>([C)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lstn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Lstn;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static final f(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Ljava/lang/CharSequence;

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
    check-cast p0, Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static h(C)Lrpz;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lrpz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static l(Ljava/io/File;)J
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    aget-object v3, p0, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    array-length v3, p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    goto :goto_5

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    :goto_e
    add-long/2addr v0, v3

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

    :goto_f
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    if-lt v2, v3, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, Lrpz;->l(Ljava/io/File;)J

    move-result-wide v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    if-nez p0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1d

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

    nop

    :goto_17
    goto/32 :goto_1

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_17

    nop
.end method

.method private static varargs m(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_23

    nop

    nop

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string v0, ", "

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_24

    nop

    nop

    :goto_6
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const-string v3, "Unable to format "

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const-string p1, "]"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    const-string v2, "PlayCore"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string p0, " : "

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_e

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    if-gtz v0, :cond_1

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

    :cond_1
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1d

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p1, " ["

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    array-length v0, p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

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

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x6

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

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(JLcom/google/ar/core/Session;)Lcom/google/ar/core/AugmentedFace;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    const v1, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lcom/google/ar/core/AugmentedFace;

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lcom/google/ar/core/AugmentedFace;

    nop

    nop

    nop

    invoke-direct {v0, p1, p2, p3}, Lcom/google/ar/core/AugmentedFace;-><init>(JLcom/google/ar/core/Session;)V

    iget-object p1, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lsay;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x3

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

    :goto_1
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_e

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

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

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, v1, p1}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "range must not be empty, but was %s"

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

    :goto_c
    invoke-virtual {p1}, Lsay;->n()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, p1}, Lrpz;->e(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    goto/32 :goto_2

    nop

    nop
.end method

.method public final varargs d(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lrso;

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
    invoke-virtual {p0, v0}, Lrpz;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    :goto_3
    invoke-direct {v0, p3, p1, p2}, Lrso;-><init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V
    .locals 1

    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lrpz;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrpz;->f(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_0

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/AssertionError;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lrpz;->e(Ljava/lang/StringBuilder;Ljava/util/Iterator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const/4 v0, 0x6

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

    :goto_2
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "PlayCore"

    nop

    nop

    nop

    nop

    goto/32 :goto_f

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

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-static {p0, p1, p2}, Lrpz;->m(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final varargs j(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    :goto_1
    const v0, 0x16

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p2, p3}, Lrpz;->m(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Ljava/lang/String;

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

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

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

    :goto_d
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x6

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

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "PlayCore"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final varargs k(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

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

    :goto_7
    check-cast p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const-string v1, "PlayCore"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p1, p2}, Lrpz;->m(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lrpz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
