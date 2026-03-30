.class public final Lpk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lueo;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Luer;->a:Luer;

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xb

    nop

    goto/32 :goto_1

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    sput-object v1, Lpk;->a:Lueo;

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    new-instance v1, Lueo;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, v2, v0}, Lueo;-><init>(ILucu;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/LinkedHashSet;

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
    iput-object v0, p0, Lpk;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lpk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lpk;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)Ljava/lang/AutoCloseable;
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit v0

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

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    check-cast p1, Lpi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Lpi;->a()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

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

    :goto_e
    const-string v1, " isn\'t valid!"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_2
    goto/32 :goto_4

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Lpj;

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1}, Lpj;-><init>(Lpk;Landroid/view/Surface;)V

    iget-object v2, p0, Lpk;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    :cond_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    iget-object v5, p0, Lpk;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object p0, p0, Lpk;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrkm;->aC(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    const-string v0, "registerSurface: Surface "

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

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

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

    :goto_15
    goto :goto_23

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

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

    nop

    nop

    :goto_18
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    const-string v1, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lpk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    invoke-static {p1, v0, v1}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6

    nop

    nop

    :goto_24
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    monitor-exit v0

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
.end method
