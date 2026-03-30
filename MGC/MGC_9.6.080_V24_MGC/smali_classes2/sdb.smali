.class public final Lsdb;
.super Lscs;
.source "PG"


# static fields
.field public static final b:Lsda;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance v0, Lsda;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lsda;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lsdb;->b:Lsda;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lsel;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    invoke-direct {p0, p1}, Lscs;-><init>(Lsel;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static g(Ljava/lang/String;)Lsdb;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    nop

    goto/32 :goto_13

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    invoke-static {v0, v1}, Lshf;->b(ZLjava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "injected class name is empty"

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

    :goto_9
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lsfj;->d(Ljava/lang/String;)Lsel;

    move-result-object p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x2f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-direct {v0, p0}, Lsdb;-><init>(Lsel;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    xor-int/lit8 v0, v0, 0x1

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

    :goto_f
    const/16 v2, 0x2e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/util/logging/Level;)Lsdo;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lsdb;->f(Ljava/util/logging/Level;)Lscz;

    move-result-object p0

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

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final f(Ljava/util/logging/Level;)Lscz;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lscs;->a:Lsel;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    const v1, 0x1c

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
    new-instance v0, Lscy;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Lsdb;->b:Lsda;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lscs;->e(Ljava/util/logging/Level;)Z

    move-result v0

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

    :goto_a
    invoke-direct {v0, p0, p1}, Lscy;-><init>(Lsdb;Ljava/util/logging/Level;)V

    goto/32 :goto_6

    nop

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
    goto/32 :goto_9

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lsel;->a()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, p1, v0}, Lsfj;->n(Ljava/lang/String;Ljava/util/logging/Level;Z)Z

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const v0, 0xe

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

    :goto_13
    rem-int v0, v0, v1

    nop

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
.end method
