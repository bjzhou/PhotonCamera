.class public final Ltdb;
.super Ltkg;
.source "PG"

# interfaces
.implements Ltlr;


# static fields
.field public static final a:Ltdb;

.field private static volatile s:Ltlx;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public i:Ltkl;

.field public j:Z

.field public k:Ltcz;

.field public l:F

.field public m:F

.field public n:Ltcz;

.field public o:Ltcz;

.field public p:Ltcz;

.field public q:Ltcz;

.field public r:Ltcy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    new-instance v0, Ltdb;

    nop

    goto/32 :goto_e

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const-class v1, Ltdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ltkg;->A(Ljava/lang/Class;Ltkg;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Ltdb;->a:Ltdb;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Ltdb;-><init>()V

    goto/32 :goto_c

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltkh;->a:Ltkh;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Ltdb;->f:F

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

    :goto_2
    return-void

    nop

    :goto_3
    sget-object v0, Ltjz;->a:Ltjz;

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

    :goto_4
    invoke-direct {p0}, Ltkg;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltma;->a:Ltma;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    iput-object v0, p0, Ltdb;->i:Ltkl;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Ltdb;->g:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v0, -0x40800000    # -1.0f

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

    nop
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 18

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v3, v2, v0, v1}, Ltmb;-><init>(Ltlq;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "f"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const-string v9, "c"

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    const-class v1, Ltdb;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9
    const-string v13, "p"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    const-string v6, "g"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const/4 v7, 0x0

    nop

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

    :goto_c
    sget-object v0, Ltdb;->s:Ltlx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Ltdb;->a:Ltdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    const-string v0, "\u0004\u0010\u0000\u0001\u0003,\u0010\u0000\u0001\u0000\u0003\u100b\u0004\u0004\u100b\u0005\u0006\u100b\t\n\u1001\u0007\u000b\u1001\u0008\u000c\u1007\u000b\r\u0013\u001d\u1004\u0003#\u1009\u0013$\u1009\u0016%\u1009\u0017&\u1009\u0018\'\u1009\u0019(\u1009\u001a+\u1001\u0014,\u1001\u0015"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    return-object v0

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v12, "o"

    nop

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

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v2, "d"

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

    :goto_1b
    const-string v10, "k"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v7, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->CghZo:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v4, "h"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v1

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

    :goto_1f
    const-string v14, "q"

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_20
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Ltdb;->s:Ltlx;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ltkc;

    nop

    nop

    nop

    nop

    sget-object v2, Ltdb;->a:Ltdb;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2}, Ltkc;-><init>(Ltkg;)V

    sput-object v0, Ltdb;->s:Ltlx;

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v1

    nop

    goto/16 :goto_38

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v2, Ltdb;->a:Ltdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    new-instance v0, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "b"

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

    :goto_24
    const-string v3, "e"

    nop

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
    invoke-direct {v0, v1}, Ltkb;-><init>(Ltkg;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_27
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v11, "n"

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

    :goto_29
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0}, Ltdb;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    :goto_2c
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    :goto_2e
    goto/32 :goto_3f

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_30
    const-string v8, "i"

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

    :goto_31
    new-instance v3, Ltmb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_33
    if-ne v0, v1, :cond_7

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v0, Ltdb;->a:Ltdb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_37
    throw v0

    nop

    nop

    :goto_38
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_39
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3a
    const-string v15, "r"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3b
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-string v16, "l"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v17, "m"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_47

    nop

    :goto_40
    new-instance v0, Ltdb;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_41
    return-object v0

    nop

    :goto_42
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v1, 0x5

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v0, p1, -0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_45
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_44

    nop

    nop
.end method
