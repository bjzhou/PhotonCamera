.class public final Loey;
.super Loeu;
.source "PG"


# static fields
.field public static final m:Ljava/util/List;


# instance fields
.field public final n:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    sput-object v0, Loey;->m:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

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

    :goto_3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lofi;Loez;Loff;Lrtm;Lqar;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Loey;->n:Ljava/util/List;

    nop

    nop

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

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-direct/range {p0 .. p8}, Loeu;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lofi;Loez;Loff;Lrtm;Lqar;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Loew;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Loey;->m:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

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

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final e(Ltlq;)Loex;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loex;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Loex;-><init>(Loey;Ltlq;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(Ltlq;Lpux;)Loex;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {p1}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, v0, Loex;->n:Lpux;

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
    new-instance v0, Loex;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Loex;-><init>(Loey;Ltlq;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop
.end method
