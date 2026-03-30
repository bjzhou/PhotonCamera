.class public Luss;
.super Lucu;
.source "PG"


# static fields
.field static final a:I


# instance fields
.field protected final b:Lusy;

.field public final c:Landroid/content/Context;

.field public d:Z

.field public e:Ljava/lang/String;

.field public final f:Z

.field public g:Lusr;

.field public h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "^[0-9\\.]*$"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-string v0, "129.0.6614.4"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "\\."

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

    :goto_7
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    aget-object v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x3b

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

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
    goto/32 :goto_c

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_13
    const/16 v0, 0x21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

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

    :goto_17
    sput v0, Luss;->a:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    const v1, 0x1a

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lucu;-><init>([B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Luss;->b:Lusy;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    const/4 p1, 0x1

    nop

    nop

    :try_start_0
    iput-boolean p1, p0, Luss;->f:Z

    nop

    nop

    sget-object v2, Lusr;->a:Lusr;

    nop

    nop

    iget v3, v2, Lusr;->e:I

    nop

    nop

    nop

    if-eq v3, p1, :cond_0

    nop

    iput-object v2, p0, Luss;->g:Lusr;

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Luss;->d:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0, v1, p1}, Luss;->fb26ed4918cb396a6a9654370d82fcfdm(JZ)V

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

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

    :goto_9
    invoke-static {p1, v2}, Lusz;->a(Landroid/content/Context;I)Lusy;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Luss;->c:Landroid/content/Context;

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

    :goto_d
    new-instance v0, Ljava/util/LinkedList;

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

    :goto_e
    invoke-direct {p0, v0, v1, v2}, Luss;->fb26ed4918cb396a6a9654370d82fcfdm(JZ)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Storage path must be set"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_1a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method private final fb26ed4918cb396a6a9654370d82fcfdm(JZ)V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    :goto_0
    new-instance v0, Lusv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    sub-long/2addr v1, p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x7

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_6
    iget-object p0, p0, Luss;->b:Lusy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    iput p1, v0, Lusv;->b:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lusv;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    :try_start_0
    iput v1, v0, Lusv;->g:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    nop

    nop

    nop

    nop

    iput v1, v0, Lusv;->f:I

    nop

    nop

    new-instance v1, Lusx;

    nop

    nop

    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lusx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lusv;->e:Lusx;

    nop

    nop

    nop

    nop

    const/4 v1, 0x4

    nop

    iput v1, v0, Lusv;->h:I

    nop

    nop

    nop

    new-instance v1, Lusx;

    nop

    const-string v2, "129.0.6614.4"

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lusx;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lusv;->d:Lusx;

    nop

    invoke-virtual {p0}, Lucu;->x()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    iput-wide v1, v0, Lusv;->a:J

    nop

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    nop

    nop

    iput-object p3, v0, Lusv;->c:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lusy;->b(Lusv;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p3

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    if-ge v0, v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    sget v0, Luss;->a:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :catchall_0
    move-exception p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lusy;->b(Lusv;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Luss;->b:Lusy;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    long-to-int p1, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    iput p1, v0, Lusv;->b:I

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

    :goto_19
    const v0, 0x1e

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

    :goto_1a
    rem-int v0, v0, v1

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

    nop

    :goto_1b
    const/4 v1, 0x0

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

    :goto_1c
    long-to-int p1, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v1, v0, Lusv;->c:Ljava/lang/Boolean;

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

    :goto_21
    sub-long/2addr v1, p1

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
.end method


# virtual methods
.method public x()J
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop
.end method
