.class public final Luli;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lunv;

.field public static final b:Lunv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const-string v1, "PENDING"

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
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-object v0, Luli;->b:Lunv;

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

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    new-instance v0, Lunv;

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

    :goto_5
    new-instance v0, Lunv;

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

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Lunv;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    sput-object v0, Luli;->a:Lunv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    const v0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const-string v1, "NONE"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final a(Ljava/lang/Object;)Lulh;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0}, Lulh;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lumh;->a:Lunv;

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lulh;

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

    :goto_5
    return-object v0

    nop
.end method

.method public static final b(Lulf;Luad;II)Lujp;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

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

    :goto_1
    goto :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, -0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p2, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, p2, p3}, Luku;->c(Lukq;Luad;II)Lujp;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    if-gez p2, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p3, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_b
    move p2, v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    sget-boolean v0, Lufu;->a:Z

    nop

    goto/32 :goto_9

    nop

    nop
.end method
