.class final Lqon;
.super Lqol;
.source "PG"


# static fields
.field public static final a:Lqon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lqon;->a:Lqon;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lqon;

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

    :goto_2
    invoke-direct {v0}, Lqon;-><init>()V

    goto/32 :goto_0

    nop

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

.method private constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lqol;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ltlq;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Landroid/os/health/TimerStat;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Lqoe;->q(Ljava/lang/String;Landroid/os/health/TimerStat;)Lupl;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final synthetic b(Ltlq;Ltlq;)Ltlq;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, p2}, Lqoe;->p(Lupl;Lupl;)Lupl;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    check-cast p2, Lupl;

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

    :goto_2
    return-object p0

    nop

    :goto_3
    check-cast p1, Lupl;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final bridge synthetic c(Ltlq;)Ljava/lang/String;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    check-cast p1, Lupl;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    sget-object p0, Lupg;->a:Lupg;

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_2

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lupg;->d:Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_16

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lupg;->a:Lupg;

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p1, Lupl;->e:Lupg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    and-int/lit8 p0, p0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iget-wide p0, p0, Lupg;->c:J

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    iget-object p0, p1, Lupl;->e:Lupg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    iget-object p0, p1, Lupl;->e:Lupg;

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

    :goto_11
    iget p0, p0, Lupg;->b:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lupg;->a:Lupg;

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method
