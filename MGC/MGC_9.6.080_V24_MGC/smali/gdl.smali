.class public final Lgdl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgcy;


# static fields
.field public static final a:Lqka;


# instance fields
.field public final b:[F

.field public final c:Lqjs;

.field public final d:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Lqka;->b([F)Lqka;

    move-result-object v0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_2
    const/16 v0, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-array v0, v0, [F

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_0

    nop

    nop

    :goto_4
    sput-object v0, Lgdl;->a:Lqka;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lqht;Lgdg;)V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    aput-object v2, v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const v0, 0x7f13003b

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

    :goto_3
    const p2, 0x7f13003c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lgdl;->b:[F

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_8
    const/16 v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Liof;

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

    :goto_b
    const v0, 0xa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x0

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

    :goto_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_e
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_f
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v3, 0x185

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

    :goto_11
    check-cast p1, Lqjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, p1, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v2, v1, v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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
    const/4 v1, 0x2

    nop

    goto/32 :goto_e

    nop

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

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Lgdl;->c:Lqjs;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, p1}, Lgdg;->a(Lqht;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    iput-object p1, p0, Lgdl;->d:Liof;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/Frame;Ltas;[FLqiu;Lqjs;)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {v0 .. v5}, Lgdj;-><init>(Lgdl;[FLqiu;Lqjs;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x0

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

    :goto_2
    goto/32 :goto_7

    nop

    nop

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    move-object v0, p1

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

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    move-object v4, p5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lgdj;

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_10
    move-object v1, p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p2, Ltas;->a:Lryb;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    move-object v3, p4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
