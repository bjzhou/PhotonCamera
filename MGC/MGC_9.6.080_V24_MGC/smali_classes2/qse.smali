.class public final Lqse;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Ltxm;

.field public final b:Landroid/content/Context;

.field public final c:Ltxm;

.field public final d:Lqro;

.field public final e:Lhdn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Llwi;

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
    invoke-static {v0}, Lqrg;->H(Lrtm;)Lrtm;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Llwi;-><init>(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

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

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public constructor <init>(Ltxm;Landroid/content/Context;Ltxm;Ltxm;Lqro;Lhdn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p6, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lqse;->c:Ltxm;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-direct {p5, p1, p6}, Lqpd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqse;->b:Landroid/content/Context;

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

    :goto_5
    invoke-static {p5}, Lqrg;->H(Lrtm;)Lrtm;

    move-result-object p5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Lqse;->e:Lhdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    new-instance p6, Lqsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-direct {p6, p4, p5, p1}, Lqsc;-><init>(Ltxm;Lrtm;Ltxm;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p5, Lqpd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lqse;->d:Lqro;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    iput-object p6, p0, Lqse;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    return-void

    nop
.end method

.method public static synthetic a()Lrss;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "MemoryInfo.getOtherPss(which) failure"

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    :try_start_0
    const-class v0, Landroid/os/Debug$MemoryInfo;

    nop

    const-string v1, "getOtherPss"

    nop

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

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

    :goto_8
    sget-object v1, Lqmo;->a:Lsdb;

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

    nop

    :goto_9
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :catch_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v3, 0x1544

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

    nop

    :goto_b
    const v1, 0x18

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    return-object v0

    nop

    :catch_1
    move-exception v0

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    nop

    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method
