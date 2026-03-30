.class public final Lmfj;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic f:I

.field private static final g:Lryy;


# instance fields
.field public final a:Lmgh;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/Map;

.field public final d:Lhot;

.field public final e:Lhoh;

.field private final h:Z

.field private final i:Ljava/util/Map;

.field private final j:Llyx;

.field private final k:Lluq;

.field private final l:Llyv;

.field private final m:Llyv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

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

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Lmge;->b:Landroid/content/ComponentName;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return-void

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

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    invoke-static {v0, v1}, Lryy;->G(Ljava/lang/Object;Ljava/lang/Object;)Lryy;

    move-result-object v0

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

    nop

    nop

    :goto_b
    sget-object v0, Lmge;->a:Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    sput-object v0, Lmfj;->g:Lryy;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public constructor <init>(Lmgh;Landroid/content/Context;Lluq;ZLhot;Lhoh;Llyx;Llyv;Llyv;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p6, p0, Lmfj;->e:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput-object p9, p0, Lmfj;->m:Llyv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p7, p0, Lmfj;->j:Llyx;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lmfj;->c:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lmfj;->i:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    new-instance v0, Landroid/util/ArrayMap;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lmfj;->a:Lmgh;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    iput-boolean p4, p0, Lmfj;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lmfj;->b:Landroid/content/Context;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p8, p0, Lmfj;->l:Llyv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p5, p0, Lmfj;->d:Lhot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p3, p0, Lmfj;->k:Lluq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public static a(Lggk;)Ljava/lang/String;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Ljtr;->f:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lggk;->d()Ljtr;

    move-result-object p0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "video/*"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto :goto_d

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    :goto_c
    move-object v0, v2

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "image/*"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lggm;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    :goto_19
    invoke-interface {p0}, Lggk;->c()Lggm;

    move-result-object v0

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

    :goto_1a
    invoke-static {v0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_d

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Ljtr;->g:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Lggl;->i()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Ljtr;->i:Z

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

    :goto_26
    const-string v0, "*/*"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string p0, "*/*"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lmfj;->g(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lmfj;->d(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string p0, "video/*"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string p0, "image/*"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop
.end method

.method public static c(Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljtb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

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

    :goto_b
    return-object v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v0, p0, v2}, Ljtb;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lpsz;->a(Ljava/lang/String;)Lpsz;

    move-result-object p0

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

    :goto_5
    invoke-virtual {p0}, Lpsz;->b()Z

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "image/"

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

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return p0

    nop
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

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

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lpsz;->a(Ljava/lang/String;)Lpsz;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpsz;->c()Z

    move-result p0

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

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    const-string v0, "video/"

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
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final e(Landroid/content/pm/ResolveInfo;)Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_5
    const v1, 0x1a

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

    :goto_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/content/ComponentName;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_c
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2b

    nop

    :goto_e
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Landroidx/viewpager2/widget/jY/lIiWb;->nLiKpxolyuuFtnc:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    const-string p1, "Nearby Share"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmfj;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmfj;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    return p0

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    goto :goto_29

    nop

    :catch_0
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_28
    const-string p0, ""

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    :goto_2a
    return v2

    nop

    nop

    :goto_2b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_30
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

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

    :goto_34
    const-string v1, "com.google.android.gms"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_36
    const-string v1, "nearby_sharing_component"

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

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

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_0
    iget-object p0, p0, Lmfj;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    iget p1, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lmgd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Llyx;->k(Ljava/lang/String;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmfj;->a:Lmgh;

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

    :goto_4
    return p0

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmfj;->j:Llyx;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lmgd;->a()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lmgh;->a()Lryh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final h(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lmfi;

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

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    iput-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

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

    :goto_5
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

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

    :goto_6
    iput-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1}, Lmfi;-><init>(Lmfj;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p1, Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmfj;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Landroid/content/pm/ActivityInfo;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final i(Lggk;)I
    .locals 8

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_0
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v2, v3}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Lmfj;->a(Lggk;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_7
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmfj;->a:Lmgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    check-cast v7, Lrsx;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_2

    nop

    goto/32 :goto_40

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    sget-object v3, Llyr;->ad:Llze;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lmfj;->e:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_3
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmfj;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, p0, Lmfj;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Llyr;->ac:Llze;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    check-cast v6, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v2, :cond_5

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v6, v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_20
    iget-object v6, p0, Lmfj;->i:Ljava/util/Map;

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_3a

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_25
    iget-object v0, p0, Lmfj;->c:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lmfj;->m:Llyv;

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, p1}, Lmgh;->i(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v3, Llyr;->aa:Llze;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_6
    goto/32 :goto_61

    nop

    :goto_2b
    invoke-virtual {v0, v3}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_23

    nop

    :cond_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

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

    :goto_2f
    invoke-virtual {v0, v3}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lmfj;->i:Ljava/util/Map;

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_31
    iget-object v3, p0, Lmfj;->i:Ljava/util/Map;

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

    :goto_32
    iget-object v3, p0, Lmfj;->a:Lmgh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Lmfj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_34
    return v1

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_36
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_39
    invoke-interface {v0, v3}, Lmgh;->j(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Lmfj;->m:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v7, v7, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3c
    const-string v5, "video/*"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v3, Llyr;->aa:Llze;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v3}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    nop

    :goto_3f
    return v3

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1e

    nop

    nop

    :goto_41
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_43
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_34

    nop

    nop

    :goto_45
    if-eqz v6, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_8
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_9
    goto/32 :goto_30

    nop

    nop

    :goto_47
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_50
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_51
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_56
    iget-object v0, p0, Lmfj;->a:Lmgh;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v2, Llyr;->aa:Llze;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lmfj;->l:Llyv;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_59
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5a
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_5c
    invoke-interface {v3, v5}, Lmgh;->j(Ljava/lang/String;)Z

    move-result v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v6

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast v4, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5f
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const-string v3, "image/*"

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_44

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_43

    nop

    nop

    :goto_65
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_68
    iget-object v0, p0, Lmfj;->l:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_69
    if-eqz v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v4}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v6, v6, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v3, v4}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v0, p0, Lmfj;->l:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6e
    const v0, 0x1e

    nop

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

    :goto_6f
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_70
    sget-object v1, Lhmq;->aP:Lhmn;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final j(Landroid/content/pm/ResolveInfo;Lggk;)I
    .locals 6

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    :goto_3
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

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

    :goto_5
    const-string p1, "pref_make_setting_page_root"

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    const-string v4, "android.intent.action.SEND"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_8
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

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
    const-string p1, "android.intent.extra.STREAM"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    iget-object v4, p0, Lmfj;->e:Lhoh;

    nop

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

    :goto_d
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_16

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-static {p1}, Lmfj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2}, Lggk;->b()Lggl;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x2

    nop

    nop

    :goto_18
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_19
    const-string v4, "com.google.android.apps.camera.legacy.app.settings.CameraSettingsActivity"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v5, "com.google.android.apps.internal.camera.imageobfuscator"

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

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

    :goto_1d
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1e
    iget-object v1, p0, Lmfj;->b:Landroid/content/Context;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const p1, 0x10000001

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    invoke-virtual {v4, v5}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v1, Landroid/content/Intent;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p2}, Lmfj;->a(Lggk;)Ljava/lang/String;

    move-result-object p1

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

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

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

    :goto_25
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Lggl;->c()Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    sget-object v4, Lmfj;->g:Lryy;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_28
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_2a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v4, p0, Lmfj;->b:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2e
    const-string p1, "pref_open_setting_page"

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v2, v3

    nop

    :goto_31
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_0
    iget-boolean p1, p0, Lmfj;->h:Z

    nop

    nop

    if-nez p1, :cond_4

    nop

    iget-object p0, p0, Lmfj;->b:Landroid/content/Context;

    nop

    check-cast p0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    const/16 p1, 0x3e8

    nop

    nop

    nop

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_33
    iget-object p0, p0, Lmfj;->k:Lluq;

    nop

    invoke-virtual {p0, v1}, Lluq;->c(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2c

    nop

    nop

    :goto_34
    if-nez v4, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_2a

    nop

    :goto_37
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v4, :cond_6

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

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3b
    const-string p2, "pref_category_social_share"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4, v5}, Lhoh;->p(Lhmn;)Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_49

    nop

    nop

    :goto_42
    const-string p1, ".activities.SharingActivity"

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return v3

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_14

    nop

    nop

    :goto_4a
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_8
    goto/32 :goto_48

    nop

    :goto_4b
    sget-object v5, Lhmq;->aS:Lhmn;

    nop

    goto/32 :goto_3f

    nop

    nop
.end method
