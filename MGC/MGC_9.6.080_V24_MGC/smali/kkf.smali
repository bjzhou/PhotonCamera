.class public Lkkf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkkh;


# static fields
.field public static final a:Lsdb;

.field public static final b:F


# instance fields
.field public final c:Lpcm;

.field public final d:Likv;

.field public final e:Lgkg;

.field public final f:Lows;

.field public final g:Loyn;

.field public final h:Lpuq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    double-to-float v0, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const-string v0, "kkf"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    sput v0, Lkkf;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lkkf;->a:Lsdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpcm;Likv;Lgkg;Lpuq;Lows;Loyn;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkkf;->d:Likv;

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lkkf;->e:Lgkg;

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

    :goto_3
    invoke-direct {p0, p6, p1}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljso;

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

    :goto_5
    const/16 p1, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Lkkf;->f:Lows;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lkkf;->c:Lpcm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iput-object p6, p0, Lkkf;->g:Loyn;

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

    :goto_a
    iput-object p4, p0, Lkkf;->h:Lpuq;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    invoke-virtual {p5, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-string p0, ""

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Lpjo;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x17

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, v1}, Lgki;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x3

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lgki;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
