.class public Lmic;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lrss;

.field public final c:Lgqh;

.field public d:Z

.field public final e:Lhoh;

.field public final f:Lqei;

.field private final g:Lfwv;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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
    goto/32 :goto_e

    nop

    :goto_8
    sput-object v0, Lmic;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const-string v0, "mic"

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
    const/16 v3, 0x1c8

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    aput-object v0, v1, v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

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

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lgqh;Lqei;Lfwv;Lhoh;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lmic;->e:Lhoh;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmic;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p3, p0, p4}, Lmib;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

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

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p0}, Lows;->d(Lpci;)V

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lmic;->c:Lgqh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, p3}, Lmih;->a(Lmig;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p4}, Lfwv;->i()Lows;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    if-nez p2, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    check-cast p1, Lmih;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    new-instance p3, Lmib;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iput-object p3, p0, Lmic;->f:Lqei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    iput-object p4, p0, Lmic;->g:Lfwv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
