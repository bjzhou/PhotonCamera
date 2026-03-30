.class public Lins;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Liob;

.field public final d:Lkog;

.field public final e:Lhoh;

.field public final f:Lnpr;

.field public final g:Lpic;

.field public final h:Lfdo;

.field private final i:Lkqj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lins;->a:Lsdb;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->LtTozdPtlj:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpic;Lkog;Lfdo;Lnpr;Liob;Lhoh;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lins;->c:Liob;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const/4 p2, 0x1

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

    :goto_2
    iput-object p1, p0, Lins;->g:Lpic;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lins;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lins;->i:Lkqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lkqj;

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

    nop

    :goto_7
    invoke-direct {p1, p2}, Lowy;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lins;->e:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    invoke-direct {p1, p2}, Lkqj;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_b
    new-instance p1, Lowy;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lins;->d:Lkog;

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

    nop

    :goto_d
    const-string p2, "BurstEnc"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput-object p3, p0, Lins;->h:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    iput-object p4, p0, Lins;->f:Lnpr;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method


# virtual methods
.method public final a(JLnar;Lllc;IZLinr;Llxa;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lrss;)Lsui;
    .locals 12

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v3, p6

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v10, v11, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

    nop

    :goto_3
    move-object/from16 v5, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v6}, Lino;-><init>(Lins;Lnar;ZLcom/google/googlex/gcam/ShotMetadata;ILlxa;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    move-object v1, p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v11, Linp;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v9

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v3, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move/from16 v5, p5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    move-object/from16 v6, p8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    move-object/from16 v4, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    move-object v0, v7

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    move/from16 v2, p5

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

    nop

    :goto_17
    invoke-direct/range {v0 .. v8}, Linp;-><init>(Lins;ILinr;Lllc;Llxa;Ljava/util/UUID;Lrss;Lsuu;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v7, p11

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_19
    move-object/from16 v6, p9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v9}, Lsuu;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v9, Lsuu;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v1, Lins;->i:Lkqj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v7}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    move-object v2, p3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    new-instance v7, Lino;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    move-object v0, v11

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    move-object v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    move-object/from16 v4, p4

    nop

    goto/32 :goto_3

    nop

    nop
.end method
