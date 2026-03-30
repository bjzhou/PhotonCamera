.class public Lhso;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lsuu;

.field private final c:Lhsh;

.field private final d:Lsui;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

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

    nop

    :goto_1
    sput-object v0, Lhso;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const-string v0, "hso"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhsh;Lsuu;Lsui;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhso;->d:Lsui;

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
    iput-object p2, p0, Lhso;->b:Lsuu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhso;->c:Lhsh;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhso;->c:Lhsh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const/16 v2, 0x12

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    new-instance v1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lhsh;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhso;->d:Lsui;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lhos;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-static {v2}, Lsgj;->K(Ljava/lang/Iterable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_13

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2}, Lhos;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11

    nop

    nop

    nop
.end method
